.class public Lcom/android/server/pm/PackageHWAcceState;
.super Ljava/lang/Object;
.source "PackageHWAcceState.java"


# static fields
.field public static final HWACCE_PKG_STATE_DEFAULT:I = -0x1

.field public static final HWACCE_PKG_STATE_DISABLE:I = 0x0

.field public static final HWACCE_PKG_STATE_ENABLE:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private dalvikResult:I

.field private origState:I

.field private userSetting:I


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "origState"    # I
    .param p2, "dalvikResult"    # I
    .param p3, "userSetting"    # I

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "PackageHWAcceState"

    iput-object v0, p0, Lcom/android/server/pm/PackageHWAcceState;->TAG:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/android/server/pm/PackageHWAcceState;->origState:I

    .line 32
    iput v1, p0, Lcom/android/server/pm/PackageHWAcceState;->dalvikResult:I

    .line 40
    iput v1, p0, Lcom/android/server/pm/PackageHWAcceState;->userSetting:I

    .line 54
    iput p1, p0, Lcom/android/server/pm/PackageHWAcceState;->origState:I

    .line 55
    iput p2, p0, Lcom/android/server/pm/PackageHWAcceState;->dalvikResult:I

    .line 56
    iput p3, p0, Lcom/android/server/pm/PackageHWAcceState;->userSetting:I

    .line 57
    return-void
.end method


# virtual methods
.method public getDalvikResult()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/server/pm/PackageHWAcceState;->dalvikResult:I

    return v0
.end method

.method public getOrigHWAcceState()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/pm/PackageHWAcceState;->origState:I

    return v0
.end method

.method public getUserSetting()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/pm/PackageHWAcceState;->userSetting:I

    return v0
.end method

.method public setDalvikResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/server/pm/PackageHWAcceState;->dalvikResult:I

    .line 65
    return-void
.end method

.method public setOrigHWAcceState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/pm/PackageHWAcceState;->origState:I

    .line 61
    return-void
.end method

.method public setUserSetting(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/server/pm/PackageHWAcceState;->userSetting:I

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "origState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageHWAcceState;->origState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dalvikResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageHWAcceState;->dalvikResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageHWAcceState;->userSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
