.class Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;
.super Landroid/os/Handler;
.source "BluetoothTetheringDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothTetheringDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BtdtHandler"
.end annotation


# instance fields
.field private final mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/bluetooth/BluetoothTetheringDataTracker;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "parent"    # Landroid/bluetooth/BluetoothTetheringDataTracker;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 392
    iput-object p2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    .line 393
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 397
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 399
    :sswitch_0
    const-string v1, "BluetoothTethering"

    const-string v2, "got CMD_CHANNEL_HALF_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 409
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    # getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$900(Landroid/bluetooth/BluetoothTetheringDataTracker;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x11001

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 415
    :sswitch_1
    const-string v1, "BluetoothTethering"

    const-string v2, "got CMD_CHANNEL_DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->stopReverseTether()V

    .line 418
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    # getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$900(Landroid/bluetooth/BluetoothTetheringDataTracker;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnected()V

    goto :goto_0

    .line 422
    :sswitch_2
    const-string v1, "BluetoothTethering"

    const-string v2, "got CMD_CHANNEL_FULL_CONNECTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :sswitch_3
    const-string v1, "BluetoothTethering"

    const-string v2, "got CMD_CHANNEL_FULLY_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :sswitch_4
    const-string v1, "BluetoothTethering"

    const-string v2, "got CMD_CHANNEL_DISCONNECT, call disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    # getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$900(Landroid/bluetooth/BluetoothTetheringDataTracker;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    .line 433
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    move-object v0, v1

    check-cast v0, Landroid/net/LinkProperties;

    .line 434
    .local v0, "linkProperties":Landroid/net/LinkProperties;
    const-string v1, "BluetoothTethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got EVENT_NETWORK_CONNECTED, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothTetheringDataTracker;->startReverseTether(Landroid/net/LinkProperties;)V

    goto :goto_0

    .line 438
    .end local v0    # "linkProperties":Landroid/net/LinkProperties;
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    move-object v0, v1

    check-cast v0, Landroid/net/LinkProperties;

    .line 439
    .restart local v0    # "linkProperties":Landroid/net/LinkProperties;
    const-string v1, "BluetoothTethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got EVENT_NETWORK_DISCONNECTED, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->stopReverseTether()V

    goto/16 :goto_0

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_2
        0x11002 -> :sswitch_3
        0x11003 -> :sswitch_4
        0x11004 -> :sswitch_1
        0x70004 -> :sswitch_5
        0x70005 -> :sswitch_6
    .end sparse-switch
.end method
