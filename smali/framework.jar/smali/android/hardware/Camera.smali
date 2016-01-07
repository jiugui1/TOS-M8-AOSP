.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$1;,
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$Ot;,
        Landroid/hardware/Camera$OtDetectionListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$HtcCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field private static final CAMERA_MSG_ALL_MSGS:I = 0xffff

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_HTC_CALLBACK:I = 0x8000

.field private static final CAMERA_MSG_OT_METADATA:I = 0x4000

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field public static final CAMERA_STEREO_PROHIBIT:I = 0x3d0

.field private static final DEBUG:Z = false

.field private static final DTAG:Ljava/lang/String; = "Camera2Mode"

.field private static final MASK_HTC_CALLBACK:I = 0x7fff

.field private static final TAG:Ljava/lang/String; = "Camera"

.field private static hasSubCam:Z

.field private static sIndexOfFront:I

.field private static sIndexOfMain:I

.field private static sIndexOfSub:I

.field private static sIsFront:Z

.field private static sIsMain:Z

.field private static sMainCam:Landroid/hardware/Camera;

.field private static sMainLooper:Landroid/os/Looper;

.field private static sSubCam:Landroid/hardware/Camera;

.field private static sSubCamParam:Landroid/hardware/Camera$Parameters;


# instance fields
.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mCameraId:I

.field private mConcateJpg:[B

.field private mEnableSubPreview:Z

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mHtcCallback:Landroid/hardware/Camera$HtcCallback;

.field private mHtcHDKCallback:Ljava/lang/Object;

.field private mIsMainCamPreviewing:Z

.field private mIsReleased:Z

.field private mIsSubCamChecked:Z

.field private mIsSubCamPreviewing:Z

.field private mIsSubCamTakePic:Z

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mJpg:[B

.field private mNativeContext:I

.field private mOneShot:Z

.field private mOtListener:Landroid/hardware/Camera$OtDetectionListener;

.field private mParamsForSubFirstPreview:Landroid/hardware/Camera$Parameters;

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mUsingPreviewAllocation:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 196
    sput-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    .line 206
    sput-boolean v0, Landroid/hardware/Camera;->sIsMain:Z

    .line 207
    sput-boolean v0, Landroid/hardware/Camera;->sIsFront:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 210
    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsReleased:Z

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    .line 212
    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    .line 213
    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    .line 214
    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    .line 215
    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    .line 587
    return-void
.end method

.method constructor <init>(I)V
    .locals 6
    .param p1, "cameraId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-boolean v4, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 188
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 210
    iput-boolean v4, p0, Landroid/hardware/Camera;->mIsReleased:Z

    .line 211
    iput-boolean v5, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    .line 212
    iput-boolean v4, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    .line 213
    iput-boolean v4, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    .line 214
    iput-boolean v4, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    .line 215
    iput-boolean v4, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    .line 541
    iput-object v3, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 542
    iput-object v3, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 543
    iput-object v3, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 544
    iput-object v3, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 545
    iput-object v3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 547
    iput-object v3, p0, Landroid/hardware/Camera;->mHtcCallback:Landroid/hardware/Camera$HtcCallback;

    .line 548
    iput p1, p0, Landroid/hardware/Camera;->mCameraId:I

    .line 550
    iput-boolean v4, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 551
    iput-object v3, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 554
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_2

    .line 555
    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    invoke-direct {p0, v2, v0}, Landroid/hardware/Camera;->setEventHandler(ILandroid/os/Looper;)V

    .line 565
    :goto_0
    sget-boolean v2, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v2, :cond_1

    .line 566
    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v3, Landroid/hardware/Camera;->sIndexOfMain:I

    if-ne v2, v3, :cond_0

    .line 567
    sget-boolean v2, Landroid/hardware/Camera;->sIsFront:Z

    invoke-direct {p0, v5, v2}, Landroid/hardware/Camera;->setState(ZZ)V

    .line 568
    sput-object p0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    .line 570
    :cond_0
    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v3, Landroid/hardware/Camera;->sIndexOfFront:I

    if-ne v2, v3, :cond_1

    .line 571
    sget-boolean v2, Landroid/hardware/Camera;->sIsMain:Z

    invoke-direct {p0, v2, v5}, Landroid/hardware/Camera;->setState(ZZ)V

    .line 572
    invoke-direct {p0, v4}, Landroid/hardware/Camera;->processSubCam(Z)V

    .line 577
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p1, v1}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;ILjava/lang/String;)V

    .line 581
    return-void

    .line 557
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 558
    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    invoke-direct {p0, v2, v0}, Landroid/hardware/Camera;->setEventHandler(ILandroid/os/Looper;)V

    goto :goto_0

    .line 561
    :cond_3
    iput-object v3, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private static native _getNumberOfCameras()I
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _startPreview()V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/hardware/Camera;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$OtDetectionListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mOtListener:Landroid/hardware/Camera$OtDetectionListener;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$HtcCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mHtcCallback:Landroid/hardware/Camera$HtcCallback;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mHtcHDKCallback:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$400()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    return v0
.end method

.method static synthetic access$502(Landroid/hardware/Camera;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    return p1
.end method

.method static synthetic access$600(Landroid/hardware/Camera;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->sendJpgCallback([BLandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/Camera;)[B
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mJpg:[B

    return-object v0
.end method

.method static synthetic access$702(Landroid/hardware/Camera;[B)[B
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # [B

    .prologue
    .line 139
    iput-object p1, p0, Landroid/hardware/Camera;->mJpg:[B

    return-object p1
.end method

.method static synthetic access$800(Landroid/hardware/Camera;)[B
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mConcateJpg:[B

    return-object v0
.end method

.method static synthetic access$802(Landroid/hardware/Camera;[B)[B
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # [B

    .prologue
    .line 139
    iput-object p1, p0, Landroid/hardware/Camera;->mConcateJpg:[B

    return-object p1
.end method

.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    .prologue
    .line 1053
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 1055
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1060
    return-void
.end method

.method private enableDepthMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1682
    sget-object v4, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    .line 1683
    sget-object v4, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    sget-boolean v4, Landroid/hardware/Camera;->hasSubCam:Z

    if-nez v4, :cond_1

    .line 1701
    :cond_0
    :goto_0
    return v3

    .line 1687
    :cond_1
    sget-object v4, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    iget-boolean v4, v4, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    if-eqz v4, :cond_0

    .line 1692
    const/4 v0, 0x0

    .line 1693
    .local v0, "result":I
    sget-object v4, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "enable_depth"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1694
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1695
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1698
    :cond_2
    if-ne v0, v2, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method private enableSubCam()Z
    .locals 1

    .prologue
    .line 500
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/hardware/Camera;->sIsFront:Z

    if-eqz v0, :cond_1

    .line 501
    :cond_0
    const/4 v0, 0x0

    .line 503
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 271
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-lt p0, v3, :cond_0

    .line 273
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "wrong cameraId"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    :cond_0
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 276
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 277
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 279
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    const/4 v3, 0x0

    iput-boolean v3, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2294
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 2295
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    return-object v1
.end method

.method public static getNumberOfCameras()I
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Landroid/hardware/Camera;->_getNumberOfCameras()I

    move-result v0

    .line 256
    .local v0, "numOfCams":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 257
    const/4 v0, 0x2

    .line 259
    .end local v0    # "numOfCams":I
    :cond_0
    return v0
.end method

.method public static getNumberOfCameras_ssdTool(Landroid/content/Context;)I
    .locals 3
    .param p0, "caller"    # Landroid/content/Context;

    .prologue
    .line 441
    invoke-static {}, Landroid/hardware/Camera;->_getNumberOfCameras()I

    move-result v1

    .line 443
    .local v1, "numOfCams":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "PACKAGE_NAME":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 445
    const-string v2, "com.htc.android.ssdtest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 453
    .end local v1    # "numOfCams":I
    :cond_0
    :goto_0
    return v1

    .line 449
    .restart local v1    # "numOfCams":I
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private getSubCamParameter()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 2170
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCamParam:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 2171
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    sput-object v0, Landroid/hardware/Camera;->sSubCamParam:Landroid/hardware/Camera$Parameters;

    .line 2173
    :cond_0
    sget-object v0, Landroid/hardware/Camera;->sSubCamParam:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method private static isDisableSubCamByTest()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 389
    .local v0, "result":Z
    return v0
.end method

.method private isRecordingMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2216
    const/4 v0, 0x1

    .line 2218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZoeMode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "zoe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2223
    const/4 v0, 0x1

    .line 2230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;ILjava/lang/String;)V
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 486
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 487
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 488
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 489
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 490
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 492
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    .line 495
    :goto_1
    return-object v3

    .line 488
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 7
    .param p0, "cameraId"    # I

    .prologue
    .line 407
    invoke-static {}, Landroid/hardware/Camera;->setCameraIndex()V

    .line 408
    sget v5, Landroid/hardware/Camera;->sIndexOfSub:I

    if-ne p0, v5, :cond_0

    .line 410
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "open wrong cameraId"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 413
    .local v0, "cameraObj":Landroid/hardware/Camera;
    const/4 v4, 0x5

    .line 415
    .local v4, "retry":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v4, :cond_1

    .line 418
    :try_start_0
    new-instance v1, Landroid/hardware/Camera;

    invoke-direct {v1, p0}, Landroid/hardware/Camera;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cameraObj":Landroid/hardware/Camera;
    .local v1, "cameraObj":Landroid/hardware/Camera;
    move-object v0, v1

    .line 429
    .end local v1    # "cameraObj":Landroid/hardware/Camera;
    .restart local v0    # "cameraObj":Landroid/hardware/Camera;
    :cond_1
    return-object v0

    .line 420
    :catch_0
    move-exception v2

    .line 421
    .local v2, "e":Ljava/lang/RuntimeException;
    const-wide/16 v5, 0x12c

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 422
    if-ne v3, v4, :cond_2

    .line 423
    const-string v5, "Camera2Mode"

    const-string v6, "fail"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Fail to connect to camera service"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 415
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static open_subCame_ssdTool(Landroid/content/Context;)Landroid/hardware/Camera;
    .locals 3
    .param p0, "caller"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 464
    invoke-static {}, Landroid/hardware/Camera;->setCameraIndex()V

    .line 465
    sget-boolean v2, Landroid/hardware/Camera;->hasSubCam:Z

    if-nez v2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-object v1

    .line 468
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "PACKAGE_NAME":Ljava/lang/String;
    const-string v2, "com.htc.android.ssdtest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 470
    new-instance v1, Landroid/hardware/Camera;

    sget v2, Landroid/hardware/Camera;->sIndexOfSub:I

    invoke-direct {v1, v2}, Landroid/hardware/Camera;-><init>(I)V

    goto :goto_0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1367
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1368
    .local v0, "c":Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_0

    .line 1372
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1373
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private processSubCam(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 516
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    if-nez v0, :cond_2

    .line 518
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/hardware/Camera;->enableSubCam()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Landroid/hardware/Camera;

    sget v1, Landroid/hardware/Camera;->sIndexOfSub:I

    invoke-direct {v0, v1}, Landroid/hardware/Camera;-><init>(I)V

    sput-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    .line 521
    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 522
    invoke-static {}, Landroid/hardware/Camera;->releaseStaticSubCam()V

    .line 524
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    .line 526
    :cond_2
    return-void
.end method

.method private static releaseStaticSubCam()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 632
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 634
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;->native_release()V

    .line 635
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/hardware/Camera;->mIsReleased:Z

    .line 636
    sput-object v2, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    .line 637
    sput-object v2, Landroid/hardware/Camera;->sSubCamParam:Landroid/hardware/Camera$Parameters;

    .line 639
    :cond_0
    return-void
.end method

.method private sendJpgCallback([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "jpgByte"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x0

    .line 1195
    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1196
    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    iput-object v1, v0, Landroid/hardware/Camera;->mJpg:[B

    .line 1197
    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    iput-object v1, v0, Landroid/hardware/Camera;->mConcateJpg:[B

    .line 1200
    :cond_0
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 1201
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    iput-object v1, v0, Landroid/hardware/Camera;->mJpg:[B

    .line 1202
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    iput-object v1, v0, Landroid/hardware/Camera;->mConcateJpg:[B

    .line 1205
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p2, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v0, :cond_2

    .line 1207
    iget-object v0, p2, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1209
    :cond_2
    return-void
.end method

.method private static setCameraIndex()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 393
    invoke-static {}, Landroid/hardware/Camera;->_getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->isDisableSubCamByTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    sput-boolean v3, Landroid/hardware/Camera;->hasSubCam:Z

    .line 398
    :goto_0
    sput v2, Landroid/hardware/Camera;->sIndexOfMain:I

    .line 399
    sput v3, Landroid/hardware/Camera;->sIndexOfFront:I

    .line 400
    const/4 v0, 0x2

    sput v0, Landroid/hardware/Camera;->sIndexOfSub:I

    .line 401
    return-void

    .line 396
    :cond_0
    sput-boolean v2, Landroid/hardware/Camera;->hasSubCam:Z

    goto :goto_0
.end method

.method private setEnableSubPreview(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2234
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2235
    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v1, Landroid/hardware/Camera;->sIndexOfFront:I

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "recording-hint"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->isRecordingMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "capture-mode"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->isZoeMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2238
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    .line 2244
    :cond_1
    :goto_0
    return-void

    .line 2240
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    goto :goto_0
.end method

.method private setEventHandler(ILandroid/os/Looper;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 530
    sget v0, Landroid/hardware/Camera;->sIndexOfMain:I

    if-ne p1, v0, :cond_0

    .line 531
    sput-object p2, Landroid/hardware/Camera;->sMainLooper:Landroid/os/Looper;

    .line 533
    :cond_0
    sget v0, Landroid/hardware/Camera;->sIndexOfSub:I

    if-ne p1, v0, :cond_2

    sget-object v0, Landroid/hardware/Camera;->sMainLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 534
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    sget-object v1, Landroid/hardware/Camera;->sMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v1}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 538
    :cond_1
    :goto_0
    return-void

    .line 535
    :cond_2
    sget v0, Landroid/hardware/Camera;->sIndexOfMain:I

    if-eq p1, v0, :cond_3

    sget v0, Landroid/hardware/Camera;->sIndexOfFront:I

    if-ne p1, v0, :cond_1

    .line 536
    :cond_3
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2177
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2178
    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    :cond_0
    return-void
.end method

.method private setParametersSubCam(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "mainCamParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2183
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 2185
    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2186
    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/16 v1, 0x280

    const/16 v2, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2187
    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string/jumbo v1, "no-display-mode"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    if-eqz p1, :cond_0

    .line 2189
    const-string v0, "capture-mode"

    const-string v1, "capture-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    const-string/jumbo v0, "video-size"

    const-string/jumbo v1, "video-size"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    const-string v0, "front-camera-mode"

    const-string v1, "front-camera-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    const-string v0, "force-use-audio-enabled"

    const-string v1, "force-use-audio-enabled"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    const-string v0, "cam-mode"

    const-string v1, "cam-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    const-string v0, "hdr-supported"

    const-string v1, "hdr-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    const-string/jumbo v0, "video-720p60fps-supported"

    const-string/jumbo v1, "video-720p60fps-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    const-string/jumbo v0, "video-slow-motion-supported"

    const-string/jumbo v1, "video-slow-motion-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    const-string/jumbo v0, "video-hdr"

    const-string/jumbo v1, "video-hdr"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    const-string/jumbo v0, "ois_support"

    const-string/jumbo v1, "ois_support"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    const-string/jumbo v0, "video-slow-motion-supported"

    const-string/jumbo v1, "video-slow-motion-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    const-string/jumbo v0, "video-stabilization-supported"

    const-string/jumbo v1, "video-stabilization-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    const-string/jumbo v0, "video-stabilization"

    const-string/jumbo v1, "video-stabilization"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    const-string/jumbo v0, "sound-off"

    const-string/jumbo v1, "sound-off"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    const-string v0, "antibanding"

    const-string v1, "antibanding"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const-string v0, "front-camera-mode"

    const-string v1, "front-camera-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    const-string/jumbo v0, "recording-hint"

    const-string/jumbo v1, "recording-hint"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    const-string v0, "cache-first-frame"

    const-string v1, "cache-first-frame"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    const-string/jumbo v0, "time-cons-post-processing"

    const-string/jumbo v1, "time-cons-post-processing"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    :cond_0
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2211
    :cond_1
    return-void
.end method

.method private final native setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method

.method private final native setPreviewDisplay(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private setState(ZZ)V
    .locals 1
    .param p1, "main"    # Z
    .param p2, "front"    # Z

    .prologue
    .line 507
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-nez v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 510
    :cond_0
    sput-boolean p1, Landroid/hardware/Camera;->sIsMain:Z

    .line 511
    sput-boolean p2, Landroid/hardware/Camera;->sIsFront:Z

    goto :goto_0
.end method

.method private startPreviewSubCam()V
    .locals 1

    .prologue
    .line 817
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    if-eqz v0, :cond_0

    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    .line 820
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;->_startPreview()V

    .line 822
    :cond_0
    return-void
.end method

.method private stopPreviewSubCam()V
    .locals 1

    .prologue
    .line 837
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    if-eqz v0, :cond_0

    .line 839
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    .line 840
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 842
    :cond_0
    return-void
.end method

.method private takePictureSubCam()V
    .locals 2

    .prologue
    .line 1628
    sget-boolean v1, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 1647
    :cond_0
    :goto_0
    return-void

    .line 1632
    :cond_1
    invoke-direct {p0}, Landroid/hardware/Camera;->enableDepthMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1638
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    .line 1640
    const/4 v0, 0x0

    .line 1641
    .local v0, "msgType":I
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 1642
    or-int/lit16 v0, v0, 0x100

    .line 1646
    :cond_2
    sget-object v1, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {v1, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    goto :goto_0
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 1004
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1005
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 1047
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 1048
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 1453
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1454
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1455
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1456
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 1457
    return-void

    .line 1455
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1470
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1471
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1472
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1489
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1490
    return-void

    .line 1472
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1092
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1093
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1094
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/renderscript/Type$Builder;

    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p1, v4, v5}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1100
    .local v3, "yuvBuilder":Landroid/renderscript/Type$Builder;
    const v4, 0x32315659

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1101
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1102
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1104
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    or-int/lit8 v5, p2, 0x20

    invoke-static {p1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1107
    .local v0, "a":Landroid/renderscript/Allocation;
    return-object v0
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1823
    if-nez p1, :cond_0

    .line 1824
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1825
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1827
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 1832
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    :goto_0
    return v3

    .line 1828
    .restart local v0    # "audioService":Landroid/media/IAudioService;
    .restart local v1    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 1829
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v3

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 591
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 592
    return-void
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2280
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2281
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2282
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2283
    return-object v0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 606
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_1

    .line 607
    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsReleased:Z

    if-nez v0, :cond_1

    .line 609
    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v1, Landroid/hardware/Camera;->sIndexOfMain:I

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    if-ne v0, p0, :cond_2

    .line 610
    sget-boolean v0, Landroid/hardware/Camera;->sIsFront:Z

    invoke-direct {p0, v2, v0}, Landroid/hardware/Camera;->setState(ZZ)V

    .line 611
    invoke-static {}, Landroid/hardware/Camera;->releaseStaticSubCam()V

    .line 612
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    .line 613
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    .line 614
    sput-object v3, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    .line 615
    sput-object v3, Landroid/hardware/Camera;->sMainLooper:Landroid/os/Looper;

    .line 619
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsReleased:Z

    .line 624
    :cond_1
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    .line 626
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 627
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 628
    return-void

    .line 616
    :cond_2
    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v1, Landroid/hardware/Camera;->sIndexOfFront:I

    if-ne v0, v1, :cond_0

    .line 617
    sget-boolean v0, Landroid/hardware/Camera;->sIsMain:Z

    invoke-direct {p0, v0, v2}, Landroid/hardware/Camera;->setState(ZZ)V

    goto :goto_0
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    .prologue
    .line 1544
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1545
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1546
    return-void

    .line 1545
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 2154
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2155
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .prologue
    .line 1932
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 1933
    return-void
.end method

.method public final setHtcCallback(Landroid/hardware/Camera$HtcCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$HtcCallback;

    .prologue
    .line 1511
    iput-object p1, p0, Landroid/hardware/Camera;->mHtcCallback:Landroid/hardware/Camera$HtcCallback;

    .line 1512
    return-void
.end method

.method public final setHtcHDKCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cb"    # Ljava/lang/Object;

    .prologue
    .line 1515
    iput-object p1, p0, Landroid/hardware/Camera;->mHtcHDKCallback:Ljava/lang/Object;

    .line 1516
    return-void
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 922
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 923
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 924
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 925
    if-eqz p1, :cond_0

    .line 926
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 928
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 929
    return-void

    :cond_1
    move v0, v1

    .line 928
    goto :goto_0
.end method

.method public final setOtDetectionListener(Landroid/hardware/Camera$OtDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$OtDetectionListener;

    .prologue
    .line 1889
    iput-object p1, p0, Landroid/hardware/Camera;->mOtListener:Landroid/hardware/Camera$OtDetectionListener;

    .line 1890
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2249
    iget-boolean v2, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v2, :cond_1

    .line 2250
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2251
    .local v1, "newPreviewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2252
    .local v0, "currentPreviewSize":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v2, v3, :cond_1

    .line 2254
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2260
    .end local v0    # "currentPreviewSize":Landroid/hardware/Camera$Size;
    .end local v1    # "newPreviewSize":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2263
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->setEnableSubPreview(Landroid/hardware/Camera$Parameters;)V

    .line 2264
    sget-boolean v2, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    if-nez v2, :cond_2

    .line 2265
    iput-object p1, p0, Landroid/hardware/Camera;->mParamsForSubFirstPreview:Landroid/hardware/Camera$Parameters;

    .line 2268
    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->setParametersSubCam(Landroid/hardware/Camera$Parameters;)V

    .line 2270
    return-void
.end method

.method public final native setPinchZoom(I)V
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x0

    .line 896
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 897
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 898
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 899
    if-eqz p1, :cond_0

    .line 900
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 904
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 905
    return-void

    :cond_1
    move v0, v1

    .line 904
    goto :goto_0
.end method

.method public final setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 6
    .param p1, "previewAllocation"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1158
    const/4 v2, 0x0

    .line 1159
    .local v2, "previewSurface":Landroid/view/Surface;
    if-eqz p1, :cond_4

    .line 1160
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1161
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1162
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1164
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Preview is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1173
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2

    .line 1175
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation usage does not include USAGE_IO_INPUT"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1178
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-eq v3, v4, :cond_3

    .line 1180
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation is not of a YUV type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1183
    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 1184
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1188
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :goto_0
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    .line 1189
    return-void

    .line 1186
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 960
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 961
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 962
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 963
    if-eqz p1, :cond_0

    .line 964
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 966
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 967
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    if-eqz p1, :cond_0

    .line 725
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 1866
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1867
    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 1968
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 1969
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1971
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 1972
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1973
    return-void
.end method

.method public final startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 825
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    .line 827
    invoke-direct {p0}, Landroid/hardware/Camera;->_startPreview()V

    .line 828
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v1, Landroid/hardware/Camera;->sIndexOfMain:I

    if-ne v0, v1, :cond_0

    .line 829
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->processSubCam(Z)V

    .line 830
    iget-object v0, p0, Landroid/hardware/Camera;->mParamsForSubFirstPreview:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setParametersSubCam(Landroid/hardware/Camera$Parameters;)V

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mParamsForSubFirstPreview:Landroid/hardware/Camera$Parameters;

    .line 833
    :cond_0
    invoke-direct {p0}, Landroid/hardware/Camera;->startPreviewSubCam()V

    .line 834
    return-void
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 1981
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 1982
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1983
    return-void
.end method

.method public final stopPreview()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 850
    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    .line 852
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 853
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 854
    invoke-direct {p0}, Landroid/hardware/Camera;->stopPreviewSubCam()V

    .line 868
    return-void
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1592
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1593
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1654
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1655
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1656
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1657
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1660
    const/4 v0, 0x0

    .line 1661
    .local v0, "msgType":I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 1662
    or-int/lit8 v0, v0, 0x2

    .line 1664
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 1665
    or-int/lit16 v0, v0, 0x80

    .line 1667
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 1668
    or-int/lit8 v0, v0, 0x40

    .line 1670
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    .line 1671
    or-int/lit16 v0, v0, 0x100

    .line 1675
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1676
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1677
    invoke-direct {p0}, Landroid/hardware/Camera;->takePictureSubCam()V

    .line 1678
    return-void
.end method

.method public final native unlock()V
.end method
