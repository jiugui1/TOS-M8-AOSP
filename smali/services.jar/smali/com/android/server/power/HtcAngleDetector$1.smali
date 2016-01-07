.class Lcom/android/server/power/HtcAngleDetector$1;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcAngleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcAngleDetector;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcAngleDetector;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 671
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const-wide v12, 0x404ca5dc20000000L    # 57.295780181884766

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 551
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$100(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 552
    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 553
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v7, v10

    .line 554
    .local v1, "x":F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v7, v11

    .line 555
    .local v3, "y":F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v5, v7, v8

    .line 557
    .local v5, "z":F
    mul-float v7, v1, v1

    mul-float v8, v3, v3

    add-float/2addr v7, v8

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v0, v7

    .line 558
    .local v0, "gravity":F
    div-float v7, v1, v0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    mul-double/2addr v7, v12

    double-to-int v2, v7

    .line 559
    .local v2, "xAngle":I
    div-float v7, v3, v0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    mul-double/2addr v7, v12

    double-to-int v4, v7

    .line 560
    .local v4, "yAngle":I
    div-float v7, v5, v0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    mul-double/2addr v7, v12

    double-to-int v6, v7

    .line 563
    .local v6, "zAngle":I
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isShaking(F)Z
    invoke-static {v7, v0}, Lcom/android/server/power/HtcAngleDetector;->access$200(Lcom/android/server/power/HtcAngleDetector;F)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 564
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$300(Lcom/android/server/power/HtcAngleDetector;)V

    .line 566
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsShakeAwake:Z
    invoke-static {v7, v11}, Lcom/android/server/power/HtcAngleDetector;->access$402(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 567
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static {v7, v11}, Lcom/android/server/power/HtcAngleDetector;->access$502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 568
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAngleDetector;->access$602(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 570
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    iget-object v8, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static {v8}, Lcom/android/server/power/HtcAngleDetector;->access$700(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v8

    # invokes: Lcom/android/server/power/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static {v7, v8}, Lcom/android/server/power/HtcAngleDetector;->access$800(Lcom/android/server/power/HtcAngleDetector;I)V

    .line 571
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$900(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    .line 573
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$1100(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;
    invoke-static {v8}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 574
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$1100(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;
    invoke-static {v8}, Lcom/android/server/power/HtcAngleDetector;->access$1000(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 666
    .end local v0    # "gravity":F
    .end local v1    # "x":F
    .end local v2    # "xAngle":I
    .end local v3    # "y":F
    .end local v4    # "yAngle":I
    .end local v5    # "z":F
    .end local v6    # "zAngle":I
    :cond_0
    :goto_0
    return-void

    .line 579
    .restart local v0    # "gravity":F
    .restart local v1    # "x":F
    .restart local v2    # "xAngle":I
    .restart local v3    # "y":F
    .restart local v4    # "yAngle":I
    .restart local v5    # "z":F
    .restart local v6    # "zAngle":I
    :cond_1
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isSamePose(III)Z
    invoke-static {v7, v2, v4, v6}, Lcom/android/server/power/HtcAngleDetector;->access$1200(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsShakeAwake:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$400(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$1300(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 583
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$1400(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 584
    const-string v7, "HtcAngleDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mGSL.onSC: xAngle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static {v9, v2}, Lcom/android/server/power/HtcAngleDetector;->access$1500(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", yAngle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static {v9, v4}, Lcom/android/server/power/HtcAngleDetector;->access$1500(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", zAngle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static {v9, v6}, Lcom/android/server/power/HtcAngleDetector;->access$1500(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", gravity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static {v9, v0}, Lcom/android/server/power/HtcAngleDetector;->access$1600(Lcom/android/server/power/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", x="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static {v9, v1}, Lcom/android/server/power/HtcAngleDetector;->access$1600(Lcom/android/server/power/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static {v9, v3}, Lcom/android/server/power/HtcAngleDetector;->access$1600(Lcom/android/server/power/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", z="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static {v9, v5}, Lcom/android/server/power/HtcAngleDetector;->access$1600(Lcom/android/server/power/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_2
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isReading(III)Z
    invoke-static {v7, v2, v4, v6}, Lcom/android/server/power/HtcAngleDetector;->access$1700(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$1800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 620
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # operator++ for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$1908(Lcom/android/server/power/HtcAngleDetector;)I

    .line 621
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$500(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$1900(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I
    invoke-static {v8}, Lcom/android/server/power/HtcAngleDetector;->access$2000(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 622
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$1400(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 623
    const-string v7, "HtcAngleDetector"

    const-string v8, "mGSL.onSC: reading detected. turning on."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_3
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$300(Lcom/android/server/power/HtcAngleDetector;)V

    .line 627
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAngleDetector;->access$1902(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 628
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static {v7, v11}, Lcom/android/server/power/HtcAngleDetector;->access$502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 630
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAngleDetector;->access$2102(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 631
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAngleDetector;->access$602(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 633
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    iget-object v8, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static {v8}, Lcom/android/server/power/HtcAngleDetector;->access$700(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v8

    # invokes: Lcom/android/server/power/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static {v7, v8}, Lcom/android/server/power/HtcAngleDetector;->access$800(Lcom/android/server/power/HtcAngleDetector;I)V

    .line 635
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$900(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    goto/16 :goto_0

    .line 637
    :cond_4
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isTalking(III)Z
    invoke-static {v7, v2, v4, v6}, Lcom/android/server/power/HtcAngleDetector;->access$2200(Lcom/android/server/power/HtcAngleDetector;III)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$1800(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 638
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # operator++ for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$2108(Lcom/android/server/power/HtcAngleDetector;)I

    .line 639
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$600(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$2100(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I
    invoke-static {v8}, Lcom/android/server/power/HtcAngleDetector;->access$2300(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 640
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$1400(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 641
    const-string v7, "HtcAngleDetector"

    const-string v8, "mGSL.onSC: talking detected. turning off."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_5
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$300(Lcom/android/server/power/HtcAngleDetector;)V

    .line 645
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAngleDetector;->access$2102(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 646
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static {v7, v11}, Lcom/android/server/power/HtcAngleDetector;->access$602(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 648
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAngleDetector;->access$1902(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 649
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAngleDetector;->access$502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 651
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$900(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->sendUpdatePowerState()V

    goto/16 :goto_0

    .line 654
    :cond_6
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$1400(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$1900(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$500(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$2100(Lcom/android/server/power/HtcAngleDetector;)I

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static {v7}, Lcom/android/server/power/HtcAngleDetector;->access$600(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 655
    :cond_7
    const-string v7, "HtcAngleDetector"

    const-string v8, "mGSL.onSC: reset talking/reading counter and flag."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_8
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAngleDetector;->access$1902(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 659
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAngleDetector;->access$502(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 661
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAngleDetector;->access$2102(Lcom/android/server/power/HtcAngleDetector;I)I

    .line 662
    iget-object v7, p0, Lcom/android/server/power/HtcAngleDetector$1;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static {v7, v10}, Lcom/android/server/power/HtcAngleDetector;->access$602(Lcom/android/server/power/HtcAngleDetector;Z)Z

    goto/16 :goto_0
.end method
