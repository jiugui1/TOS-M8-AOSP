.class public abstract Landroid/view/InputEventReceiver;
.super Ljava/lang/Object;
.source "InputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventReceiver$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventReceiver"


# instance fields
.field private final DEBUG:Z

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:I

.field private final mSeqMap:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/InputEventReceiver;->DEBUG:Z

    .line 42
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    .line 68
    if-nez p1, :cond_2

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_2
    if-nez p2, :cond_3

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    iput-object p1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    .line 76
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {v0, p1, v1}, Landroid/view/InputEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)I

    move-result v0

    iput v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    .line 80
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private dispatchBatchedInputEventPending()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/view/InputEventReceiver;->onBatchedInputEventPending()V

    .line 222
    return-void
.end method

.method private dispatchInputEvent(ILandroid/view/InputEvent;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/view/InputEventReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "dispatchInputEvent"

    invoke-direct {p0, p2, v0}, Landroid/view/InputEventReceiver;->printEventLog(Landroid/view/InputEvent;Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 215
    invoke-virtual {p0, p2}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    .line 216
    return-void
.end method

.method private dispose(Z)V
    .locals 1
    .param p1, "finalized"    # Z

    .prologue
    .line 101
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 110
    :cond_1
    iget v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    if-eqz v0, :cond_2

    .line 111
    iget v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    invoke-static {v0}, Landroid/view/InputEventReceiver;->nativeDispose(I)V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    .line 114
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 118
    monitor-exit p0

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native nativeConsumeBatchedInputEvents(IJ)Z
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeFinishInputEvent(IIZ)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/InputEventReceiver;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")I"
        }
    .end annotation
.end method

.method private printEventLog(Landroid/view/InputEvent;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 231
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 232
    check-cast v0, Landroid/view/KeyEvent;

    .line 233
    .local v0, "keyevent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 234
    const-string v2, "InputEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "keyevent":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 237
    check-cast v1, Landroid/view/MotionEvent;

    .line 238
    .local v1, "motionevent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 239
    const-string v2, "InputEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final consumeBatchedInputEvents(J)Z
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 197
    iget v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    if-nez v0, :cond_0

    .line 198
    const-string v0, "InputEventReceiver"

    const-string v1, "Attempted to consume batched input events but the input event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 201
    :cond_0
    iget v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    invoke-static {v0, p1, p2}, Landroid/view/InputEventReceiver;->nativeConsumeBatchedInputEvents(IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V

    .line 97
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final finishInputEvent(Landroid/view/InputEvent;Z)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "handled"    # Z

    .prologue
    .line 155
    monitor-enter p0

    .line 157
    if-nez p1, :cond_0

    .line 158
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 160
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    if-nez v2, :cond_1

    .line 161
    const-string v2, "InputEventReceiver"

    const-string v3, "Attempted to finish an input event but the input event receiver has already been disposed."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 180
    monitor-exit p0

    .line 182
    return-void

    .line 164
    :cond_1
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 165
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 166
    const-string v2, "InputEventReceiver"

    const-string v3, "Attempted to finish an input event that is not in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_2
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 169
    .local v1, "seq":I
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 171
    iget-boolean v2, p0, Landroid/view/InputEventReceiver;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 172
    const-string v2, "finishInputEvent"

    invoke-direct {p0, p1, v2}, Landroid/view/InputEventReceiver;->printEventLog(Landroid/view/InputEvent;Ljava/lang/String;)V

    .line 175
    :cond_3
    iget v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:I

    invoke-static {v2, v1, p2}, Landroid/view/InputEventReceiver;->nativeFinishInputEvent(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onBatchedInputEventPending()V
    .locals 2

    .prologue
    .line 143
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 144
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 132
    return-void
.end method
