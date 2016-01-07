.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
.super Landroid/os/BatteryStats$Uid$Pkg$Serv;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Serv"
.end annotation


# instance fields
.field mLastLaunches:I

.field mLastStartTime:J

.field mLastStarts:I

.field mLaunched:Z

.field mLaunchedSince:J

.field mLaunchedTime:J

.field mLaunches:I

.field mLoadedLaunches:I

.field mLoadedStartTime:J

.field mLoadedStarts:I

.field mRunning:Z

.field mRunningSince:J

.field mStartTime:J

.field mStarts:I

.field mUnpluggedLaunches:I

.field mUnpluggedStartTime:J

.field mUnpluggedStarts:I

.field final synthetic this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;)V
    .locals 1

    .prologue
    .line 4131
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    invoke-direct {p0, p1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;-><init>(Landroid/os/BatteryStats$Uid$Pkg;)V

    .line 4132
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4133
    return-void
.end method


# virtual methods
.method detach()V
    .locals 1

    .prologue
    .line 4145
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4146
    return-void
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 4236
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method getLaunchTimeToNowLocked(J)J
    .locals 4
    .param p1, "batteryUptime"    # J

    .prologue
    .line 4186
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    .line 4187
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getLaunches(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4243
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4244
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastLaunches:I

    .line 4254
    .local v0, "val":I
    :cond_0
    :goto_0
    return v0

    .line 4246
    .end local v0    # "val":I
    :cond_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 4247
    .restart local v0    # "val":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 4248
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 4249
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 4250
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getStartTime(JI)J
    .locals 4
    .param p1, "now"    # J
    .param p3, "which"    # I

    .prologue
    .line 4260
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 4261
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStartTime:J

    .line 4271
    .local v0, "val":J
    :cond_0
    :goto_0
    return-wide v0

    .line 4263
    .end local v0    # "val":J
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v0

    .line 4264
    .restart local v0    # "val":J
    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    .line 4265
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 4266
    :cond_2
    const/4 v2, 0x3

    if-ne p3, v2, :cond_0

    .line 4267
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method getStartTimeToNowLocked(J)J
    .locals 4
    .param p1, "batteryUptime"    # J

    .prologue
    .line 4191
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    .line 4192
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getStarts(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 4277
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4278
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStarts:I

    .line 4288
    .local v0, "val":I
    :cond_0
    :goto_0
    return v0

    .line 4280
    .end local v0    # "val":I
    :cond_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 4281
    .restart local v0    # "val":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 4282
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 4283
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 4284
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public plug(JJJ)V
    .locals 0
    .param p1, "elapsedRealtime"    # J
    .param p3, "batteryUptime"    # J
    .param p5, "batteryRealtime"    # J

    .prologue
    .line 4142
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    .line 4150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    .line 4151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 4152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 4153
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    .line 4154
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    .line 4155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 4156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 4157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    .line 4158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    .line 4159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    .line 4160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStartTime:J

    .line 4161
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastStarts:I

    .line 4162
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLastLaunches:I

    .line 4163
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    .line 4164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    .line 4165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    .line 4166
    return-void

    :cond_0
    move v0, v2

    .line 4151
    goto :goto_0

    :cond_1
    move v1, v2

    .line 4155
    goto :goto_1
.end method

.method public startLaunchedLocked()V
    .locals 2

    .prologue
    .line 4196
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-nez v0, :cond_0

    .line 4197
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 4198
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    .line 4199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 4201
    :cond_0
    return-void
.end method

.method public startRunningLocked()V
    .locals 2

    .prologue
    .line 4216
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-nez v0, :cond_0

    .line 4217
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 4218
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    .line 4219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 4221
    :cond_0
    return-void
.end method

.method public stopLaunchedLocked()V
    .locals 6

    .prologue
    .line 4204
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-eqz v2, :cond_0

    .line 4205
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    sub-long v0, v2, v4

    .line 4206
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 4207
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    .line 4211
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 4213
    .end local v0    # "time":J
    :cond_0
    return-void

    .line 4209
    .restart local v0    # "time":J
    :cond_1
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    goto :goto_0
.end method

.method public stopRunningLocked()V
    .locals 6

    .prologue
    .line 4224
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-eqz v2, :cond_0

    .line 4225
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->this$2:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    sub-long v0, v2, v4

    .line 4226
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 4227
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    .line 4231
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 4233
    .end local v0    # "time":J
    :cond_0
    return-void

    .line 4229
    .restart local v0    # "time":J
    :cond_1
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    goto :goto_0
.end method

.method public unplug(JJJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "batteryUptime"    # J
    .param p5, "batteryRealtime"    # J

    .prologue
    .line 4136
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    .line 4137
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    .line 4138
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    .line 4139
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4169
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4170
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSince:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4171
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4172
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4173
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4174
    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSince:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4175
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4176
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4177
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4178
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4179
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4180
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4181
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4182
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mUnpluggedLaunches:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4183
    return-void

    :cond_0
    move v0, v2

    .line 4171
    goto :goto_0

    :cond_1
    move v1, v2

    .line 4175
    goto :goto_1
.end method
