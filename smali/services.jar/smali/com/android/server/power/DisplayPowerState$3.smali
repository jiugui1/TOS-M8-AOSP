.class Lcom/android/server/power/DisplayPowerState$3;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerState;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 359
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # setter for: Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z
    invoke-static {v1, v0}, Lcom/android/server/power/DisplayPowerState;->access$202(Lcom/android/server/power/DisplayPowerState;Z)Z

    .line 361
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerState;->access$300(Lcom/android/server/power/DisplayPowerState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerState;->access$400(Lcom/android/server/power/DisplayPowerState;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerState;->access$500(Lcom/android/server/power/DisplayPowerState;)I

    move-result v0

    .line 364
    .local v0, "brightness":I
    :cond_0
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerState;->access$300(Lcom/android/server/power/DisplayPowerState;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 366
    const-string v1, "DisplayPowerState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSUR bn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerState;->access$500(Lcom/android/server/power/DisplayPowerState;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerState;->access$700(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerState;->access$300(Lcom/android/server/power/DisplayPowerState;)Z

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->setState(ZI)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 372
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$800()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    const-string v1, "DisplayPowerState"

    const-string v2, "Screen ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # setter for: Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z
    invoke-static {v1, v4}, Lcom/android/server/power/DisplayPowerState;->access$902(Lcom/android/server/power/DisplayPowerState;Z)Z

    .line 376
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # invokes: Lcom/android/server/power/DisplayPowerState;->invokeCleanListenerIfNeeded()V
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerState;->access$1000(Lcom/android/server/power/DisplayPowerState;)V

    .line 382
    :cond_3
    :goto_0
    return-void

    .line 378
    :cond_4
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$800()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 379
    const-string v1, "DisplayPowerState"

    const-string v2, "Screen not ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
