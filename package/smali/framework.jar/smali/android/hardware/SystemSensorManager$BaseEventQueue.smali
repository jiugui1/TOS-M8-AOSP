.class abstract Landroid/hardware/SystemSensorManager$BaseEventQueue;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseEventQueue"
.end annotation


# instance fields
.field private final mActiveSensors:Landroid/util/SparseBooleanArray;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field protected final mFirstEvent:Landroid/util/SparseBooleanArray;

.field protected final mManager:Landroid/hardware/SystemSensorManager;

.field private final mScratch:[F

.field protected final mSensorAccuracies:Landroid/util/SparseIntArray;

.field private nSensorEventQueue:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "manager"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    .line 239
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    .line 240
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mFirstEvent:Landroid/util/SparseBooleanArray;

    .line 241
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 242
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mScratch:[F

    .line 246
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mScratch:[F

    invoke-direct {p0, p0, v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInitBaseEventQueue(Landroid/hardware/SystemSensorManager$BaseEventQueue;Landroid/os/MessageQueue;[F)I

    move-result v0

    iput v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    .line 247
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 248
    iput-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    .line 249
    return-void
.end method

.method private disableSensor(Landroid/hardware/Sensor;Ljava/lang/String;)I
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "listener"    # Ljava/lang/String;

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "rc":I
    const/4 v1, 0x0

    .line 358
    .local v1, "sensorType":I
    iget v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 359
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 360
    :cond_1
    iget v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-static {v2, v3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDisableSensor(II)I

    move-result v0

    .line 362
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 363
    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    .line 364
    const-string v2, "SensorManager"

    const-string v3, "BaseEventQueue::disableSensor: Significant Motion"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return v0

    .line 366
    :cond_2
    iget v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeListenerSensor(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method private dispose(Z)V
    .locals 1
    .param p1, "finalized"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 324
    if-eqz p1, :cond_0

    .line 325
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 327
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 329
    :cond_1
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-eqz v0, :cond_2

    .line 330
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-static {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDestroySensorEventQueue(I)V

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    .line 333
    :cond_2
    return-void
.end method

.method private enableSensor(Landroid/hardware/Sensor;IIILjava/lang/String;)I
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "rateUs"    # I
    .param p3, "maxBatchReportLatencyUs"    # I
    .param p4, "reservedFlags"    # I
    .param p5, "listener"    # Ljava/lang/String;

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "rc":I
    const/4 v1, 0x0

    .line 341
    .local v1, "sensorType":I
    iget v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 342
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 343
    :cond_1
    iget v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-static {v2, v3, p2, p3, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeEnableSensor(IIIII)I

    move-result v0

    .line 346
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 347
    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    .line 348
    const-string v2, "SensorManager"

    const-string v3, "BaseEventQueue::enableSensor: Significant Motion"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_0
    return v0

    .line 350
    :cond_2
    iget v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    const/4 v3, 0x1

    invoke-static {v2, p5, v3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeListenerSensor(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method private static native nativeDestroySensorEventQueue(I)V
.end method

.method private static native nativeDisableSensor(II)I
.end method

.method private static native nativeEnableSensor(IIIII)I
.end method

.method private static native nativeFlushSensor(I)I
.end method

.method private native nativeInitBaseEventQueue(Landroid/hardware/SystemSensorManager$BaseEventQueue;Landroid/os/MessageQueue;[F)I
.end method

.method private static native nativeListenerSensor(ILjava/lang/String;I)V
.end method


# virtual methods
.method public addSensor(Landroid/hardware/Sensor;IIILjava/lang/String;)Z
    .locals 8
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "delayUs"    # I
    .param p3, "maxBatchReportLatencyUs"    # I
    .param p4, "reservedFlags"    # I
    .param p5, "listener"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 258
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    .line 259
    .local v6, "handle":I
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return v3

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 263
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensorEvent(Landroid/hardware/Sensor;)V

    .line 264
    invoke-direct/range {p0 .. p5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;IIILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    if-eqz p3, :cond_1

    if-lez p3, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;IIILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    :cond_1
    invoke-virtual {p0, p1, v3, p5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;ZLjava/lang/String;)Z

    goto :goto_0

    :cond_2
    move v3, v7

    .line 272
    goto :goto_0
.end method

.method protected abstract addSensorEvent(Landroid/hardware/Sensor;)V
.end method

.method protected abstract dispatchFlushCompleteEvent(I)V
.end method

.method protected abstract dispatchSensorEvent(I[FIJ)V
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V

    .line 253
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
    .line 316
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 320
    return-void

    .line 318
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flush()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 305
    :cond_0
    iget v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:I

    invoke-static {v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeFlushSensor(I)I

    move-result v0

    return v0
.end method

.method public hasSensors()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 310
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v1

    if-ltz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllSensors(Ljava/lang/String;)Z
    .locals 6
    .param p1, "listener"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 277
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 278
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 279
    .local v0, "handle":I
    # getter for: Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$000()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 280
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-eqz v2, :cond_0

    .line 281
    invoke-direct {p0, v2, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;Ljava/lang/String;)I

    .line 282
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 283
    invoke-virtual {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    .line 276
    .end local v0    # "handle":I
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_1
    return v5
.end method

.method public removeSensor(Landroid/hardware/Sensor;ZLjava/lang/String;)Z
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "disable"    # Z
    .param p3, "listener"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 294
    .local v0, "handle":I
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;Ljava/lang/String;)I

    .line 296
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 297
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    .line 298
    const/4 v1, 0x1

    .line 300
    :cond_1
    return v1
.end method

.method protected abstract removeSensorEvent(Landroid/hardware/Sensor;)V
.end method
