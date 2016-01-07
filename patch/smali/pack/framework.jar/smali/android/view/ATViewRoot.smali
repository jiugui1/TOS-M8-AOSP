.class Landroid/view/ATViewRoot;
.super Ljava/lang/Object;
.source "ATViewRoot.java"


# static fields
.field private static final AT_APK:Ljava/lang/String; = "/app/ATServer.apk"

.field private static final AT_CLASS:Ljava/lang/String; = "com.htc.autotest.server.ViewRootExt"

.field private static final AT_COMMAND:Ljava/lang/String; = "AT"

.field private static final AT_LIB:Ljava/lang/String; = "/app/AutoTestHelper.jar"

.field private static final AT_METHOD:Ljava/lang/String; = "dispatchCommand"

.field private static final LOG_TAG:Ljava/lang/String; = "ATScriptRunner"

.field public static final SRVER:Ljava/lang/String; = "11072015"

.field private static final SR_DEFAULT_ROOT_PATH:Ljava/lang/String; = "/data/at"

.field private static smInstance:Landroid/view/ATViewRoot;


# instance fields
.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mInited:Z

.field private mLoader:Ldalvik/system/PathClassLoader;

.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Landroid/view/ATViewRoot;->smInstance:Landroid/view/ATViewRoot;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ATViewRoot;->mInited:Z

    .line 36
    iput-object v1, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 37
    iput-object v1, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 38
    iput-object v1, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private ensureInit()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 62
    iget-boolean v6, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-eqz v6, :cond_0

    .line 111
    :goto_0
    return v4

    .line 69
    :cond_0
    :try_start_0
    const-string/jumbo v6, "sr.runner.path.atroot"

    const-string v7, "/data/at"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "strRootPath":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    .line 72
    :cond_1
    const-string v6, "ATScriptRunner"

    const-string v7, "ATViewRoot.ensureInit(), get wrong at root path : use default path (/data/at)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v3, "/data/at"

    .line 76
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v1, "cp_loader":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/app/ATServer.apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {p0}, Landroid/view/ATViewRoot;->getClassPath()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "classPath":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 82
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/app/AutoTestHelper.jar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_3
    const-string v6, "ATScriptRunner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ATViewRoot.ensureInit(), cp_loader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v6, Ldalvik/system/PathClassLoader;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v6, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 87
    const-string v6, "com.htc.autotest.server.ViewRootExt"

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v6, v7, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 88
    iget-object v6, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    const-string v7, "dispatchCommand"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/view/View;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Ljava/io/OutputStream;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    .line 89
    iget-object v6, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_4

    :goto_1
    iput-boolean v4, p0, Landroid/view/ATViewRoot;->mInited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-boolean v4, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-nez v4, :cond_5

    .line 99
    iput-object v11, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 100
    iput-object v11, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 101
    iput-object v11, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    .line 103
    const-string v4, "ATScriptRunner"

    const-string v5, "ATViewRoot.ensureInit() = false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "classPath":Ljava/lang/String;
    .end local v1    # "cp_loader":Ljava/lang/StringBuilder;
    .end local v3    # "strRootPath":Ljava/lang/String;
    :goto_2
    iget-boolean v4, p0, Landroid/view/ATViewRoot;->mInited:Z

    goto/16 :goto_0

    .restart local v0    # "classPath":Ljava/lang/String;
    .restart local v1    # "cp_loader":Ljava/lang/StringBuilder;
    .restart local v3    # "strRootPath":Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 89
    goto :goto_1

    .line 107
    :cond_5
    const-string v4, "ATScriptRunner"

    const-string v5, "ATViewRoot.ensureInit() = true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 91
    .end local v0    # "classPath":Ljava/lang/String;
    .end local v1    # "cp_loader":Ljava/lang/StringBuilder;
    .end local v3    # "strRootPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    iget-boolean v4, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-nez v4, :cond_6

    .line 99
    iput-object v11, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 100
    iput-object v11, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 101
    iput-object v11, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    .line 103
    const-string v4, "ATScriptRunner"

    const-string v5, "ATViewRoot.ensureInit() = false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 107
    :cond_6
    const-string v4, "ATScriptRunner"

    const-string v5, "ATViewRoot.ensureInit() = true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-boolean v5, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-nez v5, :cond_7

    .line 99
    iput-object v11, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 100
    iput-object v11, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 101
    iput-object v11, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    .line 103
    const-string v5, "ATScriptRunner"

    const-string v6, "ATViewRoot.ensureInit() = false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_3
    throw v4

    :cond_7
    const-string v5, "ATScriptRunner"

    const-string v6, "ATViewRoot.ensureInit() = true"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getClassPath()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, "classPath":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "sr.runner.classpath.count"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, "count":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_2

    .line 46
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v6, "sr.runner.classpath.%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "strFormat":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "cp":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 52
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "cp":Ljava/lang/String;
    .end local v4    # "strFormat":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getInstance()Landroid/view/ATViewRoot;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Landroid/view/ATViewRoot;->smInstance:Landroid/view/ATViewRoot;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Landroid/view/ATViewRoot;

    invoke-direct {v0}, Landroid/view/ATViewRoot;-><init>()V

    sput-object v0, Landroid/view/ATViewRoot;->smInstance:Landroid/view/ATViewRoot;

    .line 22
    :cond_0
    sget-object v0, Landroid/view/ATViewRoot;->smInstance:Landroid/view/ATViewRoot;

    return-object v0
.end method


# virtual methods
.method public dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/lang/String;
    .param p4, "clientStream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    const-string v3, "AT"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/view/ATViewRoot;->ensureInit()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 131
    :goto_0
    return v1

    .line 124
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ATScriptRunner"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
