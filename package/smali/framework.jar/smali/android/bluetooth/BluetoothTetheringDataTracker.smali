.class public Landroid/bluetooth/BluetoothTetheringDataTracker;
.super Landroid/net/BaseNetworkStateTracker;
.source "BluetoothTetheringDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "BLUETOOTH_TETHER"

.field private static final TAG:Ljava/lang/String; = "BluetoothTethering"

.field private static final VDBG:Z = true

.field private static mRevTetheredIface:Ljava/lang/String;

.field private static sInstance:Landroid/bluetooth/BluetoothTetheringDataTracker;


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBtdtHandler:Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLinkPropertiesLock:Ljava/lang/Object;

.field private final mNetworkInfoLock:Ljava/lang/Object;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-direct {p0}, Landroid/net/BaseNetworkStateTracker;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkPropertiesLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfoLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Landroid/bluetooth/BluetoothTetheringDataTracker$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothTetheringDataTracker$1;-><init>(Landroid/bluetooth/BluetoothTetheringDataTracker;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 82
    new-instance v0, Landroid/net/NetworkInfo;

    const/4 v1, 0x7

    const-string v2, "BLUETOOTH_TETHER"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 83
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 84
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 86
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 87
    invoke-virtual {p0, v4}, Landroid/bluetooth/BluetoothTetheringDataTracker;->setTeardownRequested(Z)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 90
    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothTetheringDataTracker;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothTetheringDataTracker;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothTetheringDataTracker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothTetheringDataTracker;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkPropertiesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothTetheringDataTracker;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$302(Landroid/bluetooth/BluetoothTetheringDataTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothTetheringDataTracker;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothTetheringDataTracker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothTetheringDataTracker;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothTetheringDataTracker;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$600(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothTetheringDataTracker;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$700(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothTetheringDataTracker;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothTetheringDataTracker;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$900(Landroid/bluetooth/BluetoothTetheringDataTracker;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothTetheringDataTracker;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method private static countPrefixLength([B)S
    .locals 7
    .param p0, "mask"    # [B

    .prologue
    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, "count":S
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-byte v1, v0, v4

    .line 300
    .local v1, "b":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    .line 301
    const/4 v6, 0x1

    shl-int/2addr v6, v3

    and-int/2addr v6, v1

    if-eqz v6, :cond_0

    .line 302
    add-int/lit8 v6, v2, 0x1

    int-to-short v2, v6

    .line 300
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 299
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "b":B
    .end local v3    # "i":I
    :cond_2
    return v2
.end method

.method public static declared-synchronized getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;
    .locals 2

    .prologue
    .line 93
    const-class v1, Landroid/bluetooth/BluetoothTetheringDataTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothTetheringDataTracker;->sInstance:Landroid/bluetooth/BluetoothTetheringDataTracker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothTetheringDataTracker;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothTetheringDataTracker;->sInstance:Landroid/bluetooth/BluetoothTetheringDataTracker;

    .line 94
    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothTetheringDataTracker;->sInstance:Landroid/bluetooth/BluetoothTetheringDataTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 379
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 380
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 0
    .param p1, "isCaptivePortal"    # Z

    .prologue
    .line 156
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 286
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 287
    return-void
.end method

.method public getDefaultGatewayAddr()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkPropertiesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit v1

    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 244
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_0
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    monitor-exit v1

    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const-string/jumbo v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    return-void
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 384
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    .line 385
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .param p1, "met"    # Z

    .prologue
    .line 375
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 223
    const-string v0, "BluetoothTethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1
    .param p1, "isRequested"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 103
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 218
    const-string v0, "BluetoothTethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 113
    const-string v1, "BluetoothTethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMonitoring: target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;

    .line 116
    const-string v1, "BluetoothTethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMonitoring: mCsHandler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 118
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 121
    :cond_0
    new-instance v1, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;-><init>(Landroid/os/Looper;Landroid/bluetooth/BluetoothTetheringDataTracker;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mBtdtHandler:Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;

    .line 122
    return-void
.end method

.method startReverseTether(Landroid/net/LinkProperties;)V
    .locals 4
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 310
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    :cond_0
    const-string v1, "BluetoothTethering"

    const-string v2, "attempted to reverse tether with empty interface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkPropertiesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 315
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 316
    const-string v1, "BluetoothTethering"

    const-string v3, "attempted to reverse tether while already in process"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    monitor-exit v2

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 319
    :cond_2
    :try_start_1
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 320
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/bluetooth/BluetoothTetheringDataTracker$2;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/BluetoothTetheringDataTracker$2;-><init>(Landroid/bluetooth/BluetoothTetheringDataTracker;Landroid/net/LinkProperties;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 350
    .local v0, "dhcpThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .prologue
    .line 196
    const/4 v0, -0x1

    return v0
.end method

.method stopReverseTether()V
    .locals 6

    .prologue
    .line 354
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkPropertiesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "BluetoothTethering"

    const-string v2, "attempted to stop reverse tether with nothing tethered"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    monitor-exit v1

    .line 371
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 360
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 361
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfoLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 363
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mCsHandler:Landroid/os/Handler;

    const/high16 v3, 0x70000

    new-instance v4, Landroid/net/NetworkInfo;

    iget-object v5, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v4, v5}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 369
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 370
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 369
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .prologue
    .line 213
    const/4 v0, -0x1

    return v0
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 448
    if-eqz p1, :cond_1

    .line 451
    const-string v0, "BluetoothTethering"

    const-string/jumbo v1, "supplyMessenger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    .line 453
    const-string v0, "BluetoothTethering"

    const-string/jumbo v1, "supplyMessenger mAsyncChannel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 456
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mBtdtHandler:Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 459
    :cond_1
    return-void
.end method

.method public teardown()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 139
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 142
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 145
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return v3
.end method
