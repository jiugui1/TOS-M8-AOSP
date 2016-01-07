.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 102
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 103
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "totalRead":I
    :goto_0
    if-lez p3, :cond_0

    .line 196
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    add-int v3, p2, v1

    invoke-interface {v2, p0, p1, v3, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 197
    .local v0, "n":I
    if-gtz v0, :cond_1

    .line 201
    const/4 v1, -0x1

    .line 206
    .end local v0    # "n":I
    .end local v1    # "totalRead":I
    :cond_0
    return v1

    .line 203
    .restart local v0    # "n":I
    .restart local v1    # "totalRead":I
    :cond_1
    sub-int/2addr p3, v0

    .line 204
    add-int/2addr v1, v0

    .line 205
    goto :goto_0
.end method

.method static unpackInt([BI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 185
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .line 186
    .local v0, "b0":I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 187
    .local v1, "b1":I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 188
    .local v2, "b2":I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 189
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 212
    const/16 v11, 0x1000

    new-array v0, v11, [B

    .line 213
    .local v0, "buf":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x1000

    invoke-direct {v5, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 216
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v11, 0x1388

    :try_start_0
    invoke-static {v11, v12}, Llibcore/io/StructTimeval;->fromMillis(J)Llibcore/io/StructTimeval;

    move-result-object v10

    .line 217
    .local v10, "timeout":Llibcore/io/StructTimeval;
    sget-object v11, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v12, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v13, Llibcore/io/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v11, p1, v12, v13, v10}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    .line 218
    sget-object v11, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v12, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v13, Llibcore/io/OsConstants;->SO_SNDTIMEO:I

    invoke-interface {v11, p1, v12, v13, v10}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    .line 221
    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {p1, v0, v11, v12}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .line 222
    .local v3, "headerBytes":I
    const/16 v11, 0x8

    if-eq v3, v11, :cond_1

    .line 224
    const-string v11, "NativeCrashListener"

    const-string v12, "Unable to read from debuggerd"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v3    # "headerBytes":I
    .end local v10    # "timeout":Llibcore/io/StructTimeval;
    :cond_0
    :goto_0
    return-void

    .line 228
    .restart local v3    # "headerBytes":I
    .restart local v10    # "timeout":Llibcore/io/StructTimeval;
    :cond_1
    const/4 v11, 0x0

    invoke-static {v0, v11}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v6

    .line 229
    .local v6, "pid":I
    const/4 v11, 0x4

    invoke-static {v0, v11}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v9

    .line 235
    .local v9, "signal":I
    const/4 v4, 0x1

    .line 237
    .local v4, "isNeedToReport":Z
    if-gtz v6, :cond_2

    .line 238
    const-string v11, "NativeCrashListener"

    const-string v12, "Bogus pid!"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v4, 0x0

    .line 242
    :cond_2
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v11, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :try_start_1
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 244
    .local v7, "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    if-eqz v4, :cond_3

    if-nez v7, :cond_3

    .line 246
    :try_start_2
    const-string v11, "NativeCrashListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v4, 0x0

    .line 250
    :cond_3
    if-eqz v4, :cond_4

    iget-boolean v11, v7, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v11, :cond_4

    .line 254
    const/4 v4, 0x0

    .line 258
    :cond_4
    if-eqz v4, :cond_5

    sget v11, Llibcore/io/OsConstants;->SIGABRT:I

    if-ne v9, v11, :cond_5

    .line 259
    const-string v11, "NativeCrashListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping report for signal="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", app="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v4, 0x0

    .line 267
    :cond_5
    sget-object v11, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v12, 0x0

    array-length v13, v0

    invoke-interface {v11, p1, v0, v12, v13}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 268
    .local v1, "bytes":I
    if-lez v1, :cond_7

    .line 274
    add-int/lit8 v11, v1, -0x1

    aget-byte v11, v0, v11

    if-nez v11, :cond_6

    .line 275
    const/4 v11, 0x0

    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v5, v0, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 290
    :goto_1
    if-eqz v4, :cond_0

    .line 291
    iget-object v12, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 292
    const/4 v11, 0x1

    :try_start_3
    iput-boolean v11, v7, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 293
    const/4 v11, 0x1

    iput-boolean v11, v7, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    .line 294
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 298
    :try_start_4
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v8, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 299
    .local v8, "reportString":Ljava/lang/String;
    new-instance v11, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v11, p0, v7, v9, v8}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 302
    .end local v1    # "bytes":I
    .end local v3    # "headerBytes":I
    .end local v4    # "isNeedToReport":Z
    .end local v6    # "pid":I
    .end local v7    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "reportString":Ljava/lang/String;
    .end local v9    # "signal":I
    .end local v10    # "timeout":Llibcore/io/StructTimeval;
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "NativeCrashListener"

    const-string v12, "Exception dealing with report"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 244
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "headerBytes":I
    .restart local v4    # "isNeedToReport":Z
    .restart local v6    # "pid":I
    .restart local v9    # "signal":I
    .restart local v10    # "timeout":Llibcore/io/StructTimeval;
    :catchall_0
    move-exception v11

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v11

    .line 279
    .restart local v1    # "bytes":I
    .restart local v7    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 281
    :cond_7
    if-gtz v1, :cond_5

    goto :goto_1

    .line 294
    :catchall_1
    move-exception v11

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    .line 107
    new-array v1, v10, [B

    .line 115
    .local v1, "ackSignal":[B
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/ndebugsocket"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v9, "socketFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 117
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 122
    :cond_0
    :try_start_0
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->AF_UNIX:I

    sget v12, Llibcore/io/OsConstants;->SOCK_STREAM:I

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v7

    .line 123
    .local v7, "serverFd":Ljava/io/FileDescriptor;
    new-instance v8, Ljava/net/InetUnixAddress;

    const-string v10, "/data/system/ndebugsocket"

    invoke-direct {v8, v10}, Ljava/net/InetUnixAddress;-><init>(Ljava/lang/String;)V

    .line 124
    .local v8, "sockAddr":Ljava/net/InetUnixAddress;
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v11, 0x0

    invoke-interface {v10, v7, v8, v11}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 125
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v11, 0x1

    invoke-interface {v10, v7, v11}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 128
    :cond_1
    :goto_0
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 129
    .local v5, "peer":Ljava/net/InetSocketAddress;
    const/4 v6, 0x0

    .line 132
    .local v6, "peerFd":Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v10, v7, v5}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v6

    .line 134
    if-eqz v6, :cond_2

    .line 136
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v12, Llibcore/io/OsConstants;->SO_PEERCRED:I

    invoke-interface {v10, v6, v11, v12}, Llibcore/io/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Llibcore/io/StructUcred;

    move-result-object v2

    .line 138
    .local v2, "credentials":Llibcore/io/StructUcred;
    iget v10, v2, Llibcore/io/StructUcred;->uid:I

    if-nez v10, :cond_2

    .line 141
    invoke-virtual {p0, v6}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local v2    # "credentials":Llibcore/io/StructUcred;
    :cond_2
    if-eqz v6, :cond_1

    .line 160
    :try_start_2
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-interface {v10, v6, v1, v11, v12}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 168
    :goto_1
    :try_start_3
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v10, v6}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 169
    :catch_0
    move-exception v10

    goto :goto_0

    .line 144
    :catch_1
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v10, "NativeCrashListener"

    const-string v11, "Error handling connection"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    instance-of v10, v3, Llibcore/io/ErrnoException;

    if-eqz v10, :cond_3

    .line 148
    move-object v0, v3

    check-cast v0, Llibcore/io/ErrnoException;

    move-object v4, v0

    .line 149
    .local v4, "err":Llibcore/io/ErrnoException;
    iget v10, v4, Llibcore/io/ErrnoException;->errno:I

    sget v11, Llibcore/io/OsConstants;->EMFILE:I

    if-ne v10, v11, :cond_3

    .line 150
    const-string v10, "NativeCrashListener"

    const-string v11, "Got EMFILE, wait 30 minutes to retry"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-wide/32 v10, 0x1b7740

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    .end local v4    # "err":Llibcore/io/ErrnoException;
    :cond_3
    if-eqz v6, :cond_1

    .line 160
    :try_start_5
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-interface {v10, v6, v1, v11, v12}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 168
    :goto_2
    :try_start_6
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v10, v6}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Llibcore/io/ErrnoException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 169
    :catch_2
    move-exception v10

    goto :goto_0

    .line 158
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v6, :cond_4

    .line 160
    :try_start_7
    sget-object v11, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-interface {v11, v6, v1, v12, v13}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 168
    :goto_3
    :try_start_8
    sget-object v11, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v11, v6}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Llibcore/io/ErrnoException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 173
    :cond_4
    :goto_4
    :try_start_9
    throw v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 177
    .end local v5    # "peer":Ljava/net/InetSocketAddress;
    .end local v6    # "peerFd":Ljava/io/FileDescriptor;
    .end local v7    # "serverFd":Ljava/io/FileDescriptor;
    .end local v8    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_3
    move-exception v3

    .line 178
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v10, "NativeCrashListener"

    const-string v11, "Unable to init native debug socket!"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    return-void

    .line 169
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "peer":Ljava/net/InetSocketAddress;
    .restart local v6    # "peerFd":Ljava/io/FileDescriptor;
    .restart local v7    # "serverFd":Ljava/io/FileDescriptor;
    .restart local v8    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_4
    move-exception v11

    goto :goto_4

    .line 161
    :catch_5
    move-exception v11

    goto :goto_3

    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v10

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v10

    goto :goto_1
.end method
