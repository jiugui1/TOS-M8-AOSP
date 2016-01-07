.class public final Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DPCInternalAPI"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1731
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/DisplayPowerController;Lcom/android/server/power/DisplayPowerController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p2, "x1"    # Lcom/android/server/power/DisplayPowerController$1;

    .prologue
    .line 1718
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    return-void
.end method


# virtual methods
.method protected sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 1721
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1722
    const-string v0, "XAN-DPC"

    const-string v1, "DPCInternalAPI: sendUpdatePowerState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$100(Lcom/android/server/power/DisplayPowerController;)V

    .line 1725
    return-void
.end method
