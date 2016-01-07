.class final Lcom/android/server/power/HtcAngleDetector;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;
    }
.end annotation


# instance fields
.field private ANGLE_TOLERANCE:I

.field private DEBUG_ON:Z

.field private FLAT_X_ANGLE_FROM:I

.field private FLAT_X_ANGLE_TO:I

.field private FLAT_Y_ANGLE_FROM:I

.field private FLAT_Y_ANGLE_TO:I

.field private FLAT_Z_ANGLE_FROM:I

.field private FLAT_Z_ANGLE_TO:I

.field private GRAVITY_TOLERANCE:I

.field private final INIT_ANGLE:I

.field private final MASTER_ENABLE:Z

.field private final ONE_EIGHTY_OVER_PI:F

.field private final PROXIMITY_NEGATIVE:I

.field private final PROXIMITY_POSITIVE:I

.field private final PROXIMITY_UNKNOWN:I

.field private READING_DEBOUNCE_COUNTER:I

.field private READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

.field private READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

.field private READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

.field private READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

.field private READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

.field private READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

.field private READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

.field private READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

.field private READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

.field private READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

.field private READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

.field private READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

.field private READING_PORTRAIT_X_ANGLE_FROM:I

.field private READING_PORTRAIT_X_ANGLE_TO:I

.field private READING_PORTRAIT_Y_ANGLE_FROM:I

.field private READING_PORTRAIT_Y_ANGLE_TO:I

.field private READING_PORTRAIT_Z_ANGLE_FROM:I

.field private READING_PORTRAIT_Z_ANGLE_TO:I

.field private SCREEN_TIMEOUT_DEFAULT:I

.field private SCREEN_TIMEOUT_READING:I

.field private SHAKING_GRAVITY:I

.field private final SP_ANGLE_TOLERANCE:Ljava/lang/String;

.field private final SP_FLAT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_FLAT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_FLAT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_FLAT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_FLAT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_FLAT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_GRAVITY_TOLERANCE:Ljava/lang/String;

.field private final SP_READING_DEBOUNCE:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_SCREEN_TIMEOUT_DEFAULT:Ljava/lang/String;

.field private final SP_SCREEN_TIMEOUT_READING:Ljava/lang/String;

.field private final SP_SHAKING_GRAVITY:Ljava/lang/String;

.field private final SP_TALKING_DEBOUNCE:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_PETER_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_PETER_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Z_ANGLE_TO:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private TALKING_DEBOUNCE_COUNTER:I

.field private TALKING_LEFT_HAND_X_ANGLE_FROM:I

.field private TALKING_LEFT_HAND_X_ANGLE_TO:I

.field private TALKING_LEFT_HAND_Y_ANGLE_FROM:I

.field private TALKING_LEFT_HAND_Y_ANGLE_TO:I

.field private TALKING_LEFT_HAND_Z_ANGLE_FROM:I

.field private TALKING_LEFT_HAND_Z_ANGLE_TO:I

.field private TALKING_PETER_Z_ANGLE_FROM:I

.field private TALKING_PETER_Z_ANGLE_TO:I

.field private TALKING_RIGHT_HAND_X_ANGLE_FROM:I

.field private TALKING_RIGHT_HAND_X_ANGLE_TO:I

.field private TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

.field private TALKING_RIGHT_HAND_Y_ANGLE_TO:I

.field private TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

.field private TALKING_RIGHT_HAND_Z_ANGLE_TO:I

.field private final mContext:Landroid/content/Context;

.field private final mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

.field private final mGSensor:Landroid/hardware/Sensor;

.field private mGSensorEnabled:Z

.field private final mGSensorListener:Landroid/hardware/SensorEventListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mInitCompleted:Z

.field private mIsReadingDetected:Z

.field private mIsScreenTimeout:Z

.field private mIsShakeAwake:Z

.field private mIsTalkingDetected:Z

.field private mLastXAngle:I

.field private mLastYAngle:I

.field private mLastZAngle:I

.field private mPSensorOn:Z

.field private mPSensorStatus:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mReadingCounter:I

.field private mScreenOn:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mShakeAwakeTimeoutTask:Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;

.field private mTalkingCounter:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;Landroid/hardware/SensorManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpcInternalAPI"    # Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    const/16 v5, 0x3e8

    const/16 v4, 0x14

    const/16 v1, 0x5a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "HtcAngleDetector"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->TAG:Ljava/lang/String;

    .line 18
    sget-boolean v0, Landroid/util/HtcLogChecker;->DEBUG_FLAG:Z

    iput-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    .line 21
    iput-boolean v3, p0, Lcom/android/server/power/HtcAngleDetector;->MASTER_ENABLE:Z

    .line 23
    const-string v0, "persist.htc.had.scr.default"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_SCREEN_TIMEOUT_DEFAULT:Ljava/lang/String;

    .line 24
    const-string v0, "persist.htc.had.scr.read"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_SCREEN_TIMEOUT_READING:Ljava/lang/String;

    .line 25
    const-string v0, "persist.htc.had.at"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_ANGLE_TOLERANCE:Ljava/lang/String;

    .line 26
    const-string v0, "persist.htc.had.gt"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_GRAVITY_TOLERANCE:Ljava/lang/String;

    .line 27
    const-string v0, "persist.htc.had.sg"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_SHAKING_GRAVITY:Ljava/lang/String;

    .line 29
    const-string v0, "persist.htc.had.f.x.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_FLAT_X_ANGLE_FROM:Ljava/lang/String;

    .line 30
    const-string v0, "persist.htc.had.f.x.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_FLAT_X_ANGLE_TO:Ljava/lang/String;

    .line 31
    const-string v0, "persist.htc.had.f.y.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_FLAT_Y_ANGLE_FROM:Ljava/lang/String;

    .line 32
    const-string v0, "persist.htc.had.f.y.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_FLAT_Y_ANGLE_TO:Ljava/lang/String;

    .line 33
    const-string v0, "persist.htc.had.f.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_FLAT_Z_ANGLE_FROM:Ljava/lang/String;

    .line 34
    const-string v0, "persist.htc.had.f.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_FLAT_Z_ANGLE_TO:Ljava/lang/String;

    .line 36
    const-string v0, "persist.htc.had.tr.x.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_X_ANGLE_FROM:Ljava/lang/String;

    .line 37
    const-string v0, "persist.htc.had.tr.x.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_X_ANGLE_TO:Ljava/lang/String;

    .line 38
    const-string v0, "persist.htc.had.tr.y.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

    .line 39
    const-string v0, "persist.htc.had.tr.y.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Y_ANGLE_TO:Ljava/lang/String;

    .line 40
    const-string v0, "persist.htc.had.tr.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

    .line 41
    const-string v0, "persist.htc.had.tr.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Z_ANGLE_TO:Ljava/lang/String;

    .line 43
    const-string v0, "persist.htc.had.tl.x.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_LEFT_HAND_X_ANGLE_FROM:Ljava/lang/String;

    .line 44
    const-string v0, "persist.htc.had.tl.x.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_LEFT_HAND_X_ANGLE_TO:Ljava/lang/String;

    .line 45
    const-string v0, "persist.htc.had.tl.y.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

    .line 46
    const-string v0, "persist.htc.had.tl.y.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Y_ANGLE_TO:Ljava/lang/String;

    .line 47
    const-string v0, "persist.htc.had.tl.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

    .line 48
    const-string v0, "persist.htc.had.tl.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Z_ANGLE_TO:Ljava/lang/String;

    .line 50
    const-string v0, "persist.htc.had.tp.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_PETER_Z_ANGLE_FROM:Ljava/lang/String;

    .line 51
    const-string v0, "persist.htc.had.tp.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_PETER_Z_ANGLE_TO:Ljava/lang/String;

    .line 53
    const-string v0, "persist.htc.had.rp.x.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_PORTRAIT_X_ANGLE_FROM:Ljava/lang/String;

    .line 54
    const-string v0, "persist.htc.had.rp.x.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_PORTRAIT_X_ANGLE_TO:Ljava/lang/String;

    .line 55
    const-string v0, "persist.htc.had.rp.y.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_PORTRAIT_Y_ANGLE_FROM:Ljava/lang/String;

    .line 56
    const-string v0, "persist.htc.had.rp.y.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_PORTRAIT_Y_ANGLE_TO:Ljava/lang/String;

    .line 57
    const-string v0, "persist.htc.had.rp.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_PORTRAIT_Z_ANGLE_FROM:Ljava/lang/String;

    .line 58
    const-string v0, "persist.htc.had.rp.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_PORTRAIT_Z_ANGLE_TO:Ljava/lang/String;

    .line 60
    const-string v0, "persist.htc.had.rlr.x.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:Ljava/lang/String;

    .line 61
    const-string v0, "persist.htc.had.rlr.x.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_X_ANGLE_TO:Ljava/lang/String;

    .line 62
    const-string v0, "persist.htc.had.rlr.y.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:Ljava/lang/String;

    .line 63
    const-string v0, "persist.htc.had.rlr.y.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:Ljava/lang/String;

    .line 64
    const-string v0, "persist.htc.had.rlr.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:Ljava/lang/String;

    .line 65
    const-string v0, "persist.htc.had.rlr.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:Ljava/lang/String;

    .line 67
    const-string v0, "persist.htc.had.rll.x.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_X_ANGLE_FROM:Ljava/lang/String;

    .line 68
    const-string v0, "persist.htc.had.rll.x.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_X_ANGLE_TO:Ljava/lang/String;

    .line 69
    const-string v0, "persist.htc.had.rll.y.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:Ljava/lang/String;

    .line 70
    const-string v0, "persist.htc.had.rll.y.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Y_ANGLE_TO:Ljava/lang/String;

    .line 71
    const-string v0, "persist.htc.had.rll.z.from"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:Ljava/lang/String;

    .line 72
    const-string v0, "persist.htc.had.rll.z.to"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Z_ANGLE_TO:Ljava/lang/String;

    .line 74
    const-string v0, "persist.htc.had.talk.debounce"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_TALKING_DEBOUNCE:Ljava/lang/String;

    .line 75
    const-string v0, "persist.htc.had.read.debounce"

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->SP_READING_DEBOUNCE:Ljava/lang/String;

    .line 77
    const v0, 0x42652ee1

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->ONE_EIGHTY_OVER_PI:F

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->PROXIMITY_UNKNOWN:I

    .line 80
    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->PROXIMITY_NEGATIVE:I

    .line 81
    iput v3, p0, Lcom/android/server/power/HtcAngleDetector;->PROXIMITY_POSITIVE:I

    .line 83
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    .line 84
    const v0, 0xea60

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    .line 87
    iput v4, p0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    .line 93
    iput v4, p0, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    .line 96
    const/16 v0, -0xf

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    .line 97
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    .line 99
    const/16 v0, -0xf

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    .line 100
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    .line 102
    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    .line 103
    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    .line 106
    const/16 v0, -0x5a

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    .line 107
    const/16 v0, -0x19

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    .line 109
    iput v4, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    .line 110
    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    .line 112
    const/16 v0, -0x2d

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    .line 113
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    .line 116
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    .line 117
    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    .line 119
    iput v4, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    .line 120
    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    .line 122
    const/16 v0, -0x2d

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    .line 123
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    .line 126
    const/16 v0, -0x5a

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    .line 127
    const/16 v0, -0x19

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    .line 130
    const/16 v0, -0x1e

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    .line 131
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    .line 133
    const/16 v0, -0x1e

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    .line 134
    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    .line 136
    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    .line 137
    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    .line 140
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    .line 141
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    .line 143
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    .line 144
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    .line 146
    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    .line 147
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    .line 150
    const/16 v0, -0x50

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    .line 151
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    .line 153
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    .line 154
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    .line 156
    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    .line 157
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    .line 160
    iput v3, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    .line 161
    iput v3, p0, Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    .line 168
    new-instance v0, Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;-><init>(Lcom/android/server/power/HtcAngleDetector;Lcom/android/server/power/HtcAngleDetector$1;)V

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;

    .line 176
    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    .line 178
    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mScreenOn:Z

    .line 179
    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    .line 181
    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsShakeAwake:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z

    .line 188
    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    .line 189
    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    .line 191
    iput v5, p0, Lcom/android/server/power/HtcAngleDetector;->INIT_ANGLE:I

    .line 192
    iput v5, p0, Lcom/android/server/power/HtcAngleDetector;->mLastXAngle:I

    .line 193
    iput v5, p0, Lcom/android/server/power/HtcAngleDetector;->mLastYAngle:I

    .line 194
    iput v5, p0, Lcom/android/server/power/HtcAngleDetector;->mLastZAngle:I

    .line 548
    new-instance v0, Lcom/android/server/power/HtcAngleDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/HtcAngleDetector$1;-><init>(Lcom/android/server/power/HtcAngleDetector;)V

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    .line 197
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "HtcAngleDetector"

    const-string v1, "Contructor: MASTER_ENABLE=true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/HtcAngleDetector;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    .line 206
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HAD"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 207
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 208
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    .line 210
    iput-object p3, p0, Lcom/android/server/power/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 211
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensor:Landroid/hardware/Sensor;

    .line 213
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    .line 214
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "HtcAngleDetector"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 215
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 217
    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->readSysProp()V

    .line 223
    return-void
.end method

.method private acceleroMeterToString(F)Ljava/lang/String;
    .locals 6
    .param p1, "meter"    # F

    .prologue
    .line 871
    const-string v1, ""

    .line 873
    .local v1, "s":Ljava/lang/String;
    :try_start_0
    const-string v2, "% 2.3f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 879
    :cond_0
    :goto_0
    return-object v1

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 876
    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceleroMeterToString("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/power/HtcAngleDetector$ShakeAwakeTimeoutTask;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/HtcAngleDetector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/HtcAngleDetector;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isSamePose(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/HtcAngleDetector;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAngleDetector;->angleToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/HtcAngleDetector;F)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # F

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/HtcAngleDetector;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isReading(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/power/HtcAngleDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    return p1
.end method

.method static synthetic access$1908(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/power/HtcAngleDetector;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # F

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAngleDetector;->isShaking(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/power/HtcAngleDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    return p1
.end method

.method static synthetic access$2108(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/HtcAngleDetector;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isTalking(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/HtcAngleDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsShakeAwake:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/power/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/server/power/HtcAngleDetector;->mIsShakeAwake:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/power/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/power/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/power/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/power/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/power/HtcAngleDetector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcAngleDetector;->setScreenTimeout(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/HtcAngleDetector;)Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcAngleDetector;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/power/HtcAngleDetector;->mDPCInternalAPI:Lcom/android/server/power/DisplayPowerController$DPCInternalAPI;

    return-object v0
.end method

.method private angleToString(I)Ljava/lang/String;
    .locals 6
    .param p1, "angle"    # I

    .prologue
    .line 859
    const-string v1, ""

    .line 861
    .local v1, "s":Ljava/lang/String;
    :try_start_0
    const-string v2, "% 2d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 867
    :cond_0
    :goto_0
    return-object v1

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 864
    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "angleToString("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkCondition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 495
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 496
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCondition: mInitCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPSensorOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPSensorStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsScreenTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    if-eq v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    if-eqz v0, :cond_3

    .line 505
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/power/HtcAngleDetector;->enableDetector(Z)V

    .line 509
    :cond_2
    :goto_0
    return-void

    .line 506
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    if-ne v0, v3, :cond_2

    .line 507
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcAngleDetector;->enableDetector(Z)V

    goto :goto_0
.end method

.method private enableDetector(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 512
    iget-boolean v1, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    .line 514
    .local v1, "old_enable":Z
    if-eqz p1, :cond_2

    .line 515
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    if-nez v2, :cond_0

    .line 516
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    .line 517
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z

    .line 519
    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 520
    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    invoke-direct {p0, v2}, Lcom/android/server/power/HtcAngleDetector;->setScreenTimeout(I)V

    .line 521
    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    if-eq v2, v1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 543
    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableDetector: mGSensorEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_1
    return-void

    .line 524
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    if-eqz v2, :cond_0

    .line 525
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorEnabled:Z

    .line 526
    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/power/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 528
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    .line 529
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    .line 530
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z

    .line 531
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z

    .line 533
    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V

    .line 534
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/server/power/HtcAngleDetector;->setScreenTimeout(I)V

    .line 535
    iget-object v2, p0, Lcom/android/server/power/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableDetector: Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isActualScreenOn()Z
    .locals 4

    .prologue
    .line 894
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isActualScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 900
    :goto_0
    return v1

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 897
    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActualScreenOn: Exception caught. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFlat(III)Z
    .locals 1
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 727
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_0

    .line 730
    const/4 v0, 0x1

    .line 732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGravityBurst(F)Z
    .locals 4
    .param p1, "gravity"    # F

    .prologue
    const v3, 0x411ce80a

    .line 701
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v0, v0

    sub-float v0, v3, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 703
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 704
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gravity burst detected. gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tolerance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_1
    const/4 v0, 0x1

    .line 711
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReading(III)Z
    .locals 1
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 788
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isReadingViaPortrait(III)Z

    move-result v0

    return v0
.end method

.method private isReadingViaLandscapeLeft(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 827
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 830
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 831
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading via landscape (key at left side) detected. xAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    const/4 v0, 0x1

    .line 838
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadingViaLandscapeRight(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 811
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 814
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 815
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading via landscape (key at right side) detected. xAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    const/4 v0, 0x1

    .line 822
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadingViaPortrait(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 795
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 798
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 799
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading via portrait detected. xAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    const/4 v0, 0x1

    .line 806
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSamePose(III)Z
    .locals 4
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    const/4 v0, 0x1

    const/16 v2, 0x3e8

    .line 675
    iget v1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastXAngle:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastYAngle:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastZAngle:I

    if-ne v1, v2, :cond_1

    .line 679
    iput p1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastXAngle:I

    .line 680
    iput p2, p0, Lcom/android/server/power/HtcAngleDetector;->mLastYAngle:I

    .line 681
    iput p3, p0, Lcom/android/server/power/HtcAngleDetector;->mLastZAngle:I

    .line 697
    :cond_0
    :goto_0
    return v0

    .line 685
    :cond_1
    iget v1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastXAngle:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastYAngle:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/power/HtcAngleDetector;->mLastZAngle:I

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v1, v2, :cond_2

    .line 688
    iget-boolean v1, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 689
    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSamePose: Skip. xAngle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/HtcAngleDetector;->mLastXAngle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", yAngle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/HtcAngleDetector;->mLastYAngle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", zAngle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/HtcAngleDetector;->mLastZAngle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tolerance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 697
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private isShaking(F)Z
    .locals 3
    .param p1, "gravity"    # F

    .prologue
    .line 715
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 716
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 717
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shaking detected. gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    const/4 v0, 0x1

    .line 723
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalking(III)Z
    .locals 1
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 736
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isTalkingViaRightHand(III)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isTalkingViaLeftHand(III)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/HtcAngleDetector;->isTalkingViaPeterPose(III)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkingViaLeftHand(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 759
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 762
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 763
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Talking via left hand detected. xAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_0
    const/4 v0, 0x1

    .line 770
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkingViaPeterPose(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 775
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 776
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 777
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Talking via peter pose detected. xAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_0
    const/4 v0, 0x1

    .line 784
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkingViaRightHand(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 743
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 746
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 747
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Talking via right hand detected. xAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    const/4 v0, 0x1

    .line 754
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readSysProp()V
    .locals 51

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    move/from16 v31, v0

    .line 227
    .local v31, "old_std":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    move/from16 v32, v0

    .line 228
    .local v32, "old_str":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    .line 229
    .local v3, "old_at":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    .line 230
    .local v10, "old_gt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    move/from16 v30, v0

    .line 233
    .local v30, "old_sg":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    .line 234
    .local v4, "old_fxf":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    .line 235
    .local v5, "old_fxt":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    .line 236
    .local v6, "old_fyf":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    .line 237
    .local v7, "old_fyt":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    .line 238
    .local v8, "old_fzf":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    .line 241
    .local v9, "old_fzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    move/from16 v42, v0

    .line 242
    .local v42, "old_trxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    move/from16 v43, v0

    .line 243
    .local v43, "old_trxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    move/from16 v44, v0

    .line 244
    .local v44, "old_tryf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    move/from16 v45, v0

    .line 245
    .local v45, "old_tryt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    move/from16 v46, v0

    .line 246
    .local v46, "old_trzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    move/from16 v47, v0

    .line 248
    .local v47, "old_trzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    move/from16 v34, v0

    .line 249
    .local v34, "old_tlxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    move/from16 v35, v0

    .line 250
    .local v35, "old_tlxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    move/from16 v36, v0

    .line 251
    .local v36, "old_tlyf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    move/from16 v37, v0

    .line 252
    .local v37, "old_tlyt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    move/from16 v38, v0

    .line 253
    .local v38, "old_tlzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    move/from16 v39, v0

    .line 255
    .local v39, "old_tlzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    move/from16 v40, v0

    .line 256
    .local v40, "old_tpzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    move/from16 v41, v0

    .line 259
    .local v41, "old_tpzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    move/from16 v24, v0

    .line 260
    .local v24, "old_rpxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    move/from16 v25, v0

    .line 261
    .local v25, "old_rpxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    move/from16 v26, v0

    .line 262
    .local v26, "old_rpyf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    move/from16 v27, v0

    .line 263
    .local v27, "old_rpyt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    move/from16 v28, v0

    .line 264
    .local v28, "old_rpzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    move/from16 v29, v0

    .line 266
    .local v29, "old_rpzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    move/from16 v18, v0

    .line 267
    .local v18, "old_rlrxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    move/from16 v19, v0

    .line 268
    .local v19, "old_rlrxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    move/from16 v20, v0

    .line 269
    .local v20, "old_rlryf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    move/from16 v21, v0

    .line 270
    .local v21, "old_rlryt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    move/from16 v22, v0

    .line 271
    .local v22, "old_rlrzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    move/from16 v23, v0

    .line 273
    .local v23, "old_rlrzt":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    .line 274
    .local v12, "old_rllxf":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    .line 275
    .local v13, "old_rllxt":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    .line 276
    .local v14, "old_rllyf":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    .line 277
    .local v15, "old_rllyt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    move/from16 v16, v0

    .line 278
    .local v16, "old_rllzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    move/from16 v17, v0

    .line 281
    .local v17, "old_rllzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    move/from16 v33, v0

    .line 282
    .local v33, "old_td":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    .line 285
    .local v11, "old_rd":I
    :try_start_0
    const-string v48, "persist.htc.had.scr.default"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    .line 286
    const-string v48, "persist.htc.had.scr.read"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    .line 287
    const-string v48, "persist.htc.had.at"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    .line 288
    const-string v48, "persist.htc.had.gt"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    .line 289
    const-string v48, "persist.htc.had.sg"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    .line 291
    const-string v48, "persist.htc.had.f.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    .line 292
    const-string v48, "persist.htc.had.f.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    .line 293
    const-string v48, "persist.htc.had.f.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    .line 294
    const-string v48, "persist.htc.had.f.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    .line 295
    const-string v48, "persist.htc.had.f.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    .line 296
    const-string v48, "persist.htc.had.f.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    .line 298
    const-string v48, "persist.htc.had.tr.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    .line 299
    const-string v48, "persist.htc.had.tr.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    .line 300
    const-string v48, "persist.htc.had.tr.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    .line 301
    const-string v48, "persist.htc.had.tr.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    .line 302
    const-string v48, "persist.htc.had.tr.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    .line 303
    const-string v48, "persist.htc.had.tr.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    .line 305
    const-string v48, "persist.htc.had.tl.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    .line 306
    const-string v48, "persist.htc.had.tl.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    .line 307
    const-string v48, "persist.htc.had.tl.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    .line 308
    const-string v48, "persist.htc.had.tl.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    .line 309
    const-string v48, "persist.htc.had.tl.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    .line 310
    const-string v48, "persist.htc.had.tl.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    .line 312
    const-string v48, "persist.htc.had.tp.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    .line 313
    const-string v48, "persist.htc.had.tp.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    .line 315
    const-string v48, "persist.htc.had.rp.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    .line 316
    const-string v48, "persist.htc.had.rp.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    .line 317
    const-string v48, "persist.htc.had.rp.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    .line 318
    const-string v48, "persist.htc.had.rp.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    .line 319
    const-string v48, "persist.htc.had.rp.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    .line 320
    const-string v48, "persist.htc.had.rp.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    .line 322
    const-string v48, "persist.htc.had.rlr.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    .line 323
    const-string v48, "persist.htc.had.rlr.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    .line 324
    const-string v48, "persist.htc.had.rlr.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    .line 325
    const-string v48, "persist.htc.had.rlr.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    .line 326
    const-string v48, "persist.htc.had.rlr.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    .line 327
    const-string v48, "persist.htc.had.rlr.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    .line 329
    const-string v48, "persist.htc.had.rll.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    .line 330
    const-string v48, "persist.htc.had.rll.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    .line 331
    const-string v48, "persist.htc.had.rll.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    .line 332
    const-string v48, "persist.htc.had.rll.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    .line 333
    const-string v48, "persist.htc.had.rll.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    .line 334
    const-string v48, "persist.htc.had.rll.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    .line 336
    const-string v48, "persist.htc.had.talk.debounce"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    .line 337
    const-string v48, "persist.htc.had.read.debounce"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    move/from16 v48, v0

    if-eqz v48, :cond_1

    .line 345
    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: SCREEN_TIMEOUT_DEFAULT="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", SCREEN_TIMEOUT_READING="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", ANGLE_TOLERANCE="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->ANGLE_TOLERANCE:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", GRAVITY_TOLERANCE="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", SHAKING_GRAVITY="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->SHAKING_GRAVITY:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: flat. X_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", X_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: talking right hand. X_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", X_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: talking left hand. X_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", X_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: talking peter pose. Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: reading via portrait. X_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", X_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: reading via landscape (key at right side). X_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", X_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: reading via landscape (key at left side). X_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", X_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Y_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_FROM="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", Z_ANGLE_TO="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSP: debounce. TALKING="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", READING="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "->"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_1
    return-void

    .line 338
    :catch_0
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    move/from16 v48, v0

    if-eqz v48, :cond_0

    .line 340
    const-string v48, "HtcAngleDetector"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "readSysProp: Unable to get SystemProperties. "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private resetLastAngles()V
    .locals 1

    .prologue
    const/16 v0, 0x3e8

    .line 842
    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->mLastXAngle:I

    .line 843
    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->mLastYAngle:I

    .line 844
    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->mLastZAngle:I

    .line 845
    return-void
.end method

.method private setScreenTimeout(I)V
    .locals 4
    .param p1, "screenOffDelay"    # I

    .prologue
    .line 884
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/PowerManager;->customizeScreenDelay_Always(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 887
    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenTimeout: Exception caught. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected disableDetector_Ext()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcAngleDetector;->enableDetector(Z)V

    .line 472
    return-void
.end method

.method protected isScreenTimeout()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    return v0
.end method

.method protected isTalkingDetected()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z

    return v0
.end method

.method protected isTurnOnScreenOnce()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 479
    iget-boolean v1, p0, Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->isActualScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->mReadingCounter:I

    .line 481
    iput-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsReadingDetected:Z

    .line 483
    iput v0, p0, Lcom/android/server/power/HtcAngleDetector;->mTalkingCounter:I

    .line 484
    iput-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsTalkingDetected:Z

    .line 485
    const/4 v0, 0x1

    .line 487
    :cond_0
    return v0
.end method

.method protected notifyScreenTimeout(Z)V
    .locals 3
    .param p1, "isTimeout"    # Z

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    if-eq v0, p1, :cond_2

    .line 456
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 457
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    .line 462
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mIsScreenTimeout:Z

    if-eqz v0, :cond_1

    .line 463
    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->resetLastAngles()V

    .line 466
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->checkCondition()V

    .line 468
    :cond_2
    return-void
.end method

.method protected proximitySensorOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    if-eq v0, p1, :cond_2

    .line 415
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximitySensorOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    .line 421
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorOn:Z

    if-nez v0, :cond_1

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->mInitCompleted:Z

    .line 425
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->checkCondition()V

    .line 427
    :cond_2
    return-void
.end method

.method protected proximitySensorStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 437
    iget v0, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    if-eq v0, p1, :cond_1

    .line 438
    iget-boolean v0, p0, Lcom/android/server/power/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximitySensorStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iput p1, p0, Lcom/android/server/power/HtcAngleDetector;->mPSensorStatus:I

    .line 443
    invoke-direct {p0}, Lcom/android/server/power/HtcAngleDetector;->checkCondition()V

    .line 445
    :cond_1
    return-void
.end method
