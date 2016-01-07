.class final Lcom/android/server/power/HtcPMSExtension;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# static fields
.field private static final DISABLE_GC_TOLERANCE_RANGE_MB:J = 0x4L

.field private static final TAG:Ljava/lang/String; = "HtcPMSExtension"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static disableGC(Z)V
    .locals 3
    .param p0, "on"    # Z

    .prologue
    .line 91
    if-eqz p0, :cond_0

    .line 92
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->disableGcInRange(J)V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    goto :goto_0
.end method

.method protected static getWakeLockTypeInfo(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 100
    const-string v0, ""

    .line 102
    .local v0, "info":Ljava/lang/String;
    const v1, 0xffff

    and-int/2addr v1, p0

    sparse-switch v1, :sswitch_data_0

    .line 134
    :goto_0
    return-object v0

    .line 104
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK"

    .line 105
    goto :goto_0

    .line 107
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK"

    .line 108
    goto :goto_0

    .line 110
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK"

    .line 111
    goto :goto_0

    .line 113
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK"

    .line 114
    goto :goto_0

    .line 116
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    .line 117
    goto :goto_0

    .line 119
    :sswitch_5
    const-string v0, "CPU_PERF_WAKE_LOCK"

    .line 120
    goto :goto_0

    .line 122
    :sswitch_6
    const-string v0, "CPU_MAX_FREQ"

    .line 123
    goto :goto_0

    .line 125
    :sswitch_7
    const-string v0, "CPU_MIN_FREQ"

    .line 126
    goto :goto_0

    .line 128
    :sswitch_8
    const-string v0, "CPU_MAX_NUM"

    .line 129
    goto :goto_0

    .line 131
    :sswitch_9
    const-string v0, "CPU_MIN_NUM"

    goto :goto_0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_9
    .end sparse-switch
.end method
