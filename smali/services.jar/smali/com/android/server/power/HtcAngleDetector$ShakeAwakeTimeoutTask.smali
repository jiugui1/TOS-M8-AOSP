.class Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcAngleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShakeAwakeTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcAngleDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcAngleDetector;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcAngleDetector;Lcom/android/server/power/HtcAngleDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p2, "x1"    # Lcom/android/server/power/HtcAngleDetector$1;

    .prologue
    .line 847
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;-><init>(Lcom/android/server/power/HtcAngleDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # getter for: Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$1400(Lcom/android/server/power/HtcAngleDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    const-string v0, "HtcAngleDetector"

    const-string v1, "ShakeAwakeTimeoutTask: timeout."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/HtcAngleDetector;->mIsShakeAwake:Z
    invoke-static {v0, v1}, Lcom/android/server/power/HtcAngleDetector;->access$402(Lcom/android/server/power/HtcAngleDetector;Z)Z

    .line 854
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;->this$0:Lcom/android/server/power/HtcAngleDetector;

    # invokes: Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v0}, Lcom/android/server/power/HtcAngleDetector;->access$300(Lcom/android/server/power/HtcAngleDetector;)V

    .line 855
    return-void
.end method