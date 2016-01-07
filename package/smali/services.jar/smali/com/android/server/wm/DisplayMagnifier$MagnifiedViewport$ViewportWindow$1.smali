.class Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;
.super Ljava/lang/Object;
.source "DisplayMagnifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setShown(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

.field final synthetic val$animate:Z

.field final synthetic val$shown:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;ZZ)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->val$shown:Z

    iput-boolean p3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShown:Z
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->access$1200(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->val$shown:Z

    if-ne v0, v2, :cond_0

    .line 541
    monitor-exit v1

    .line 566
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->val$shown:Z

    # setter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShown:Z
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->access$1202(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;Z)Z

    .line 544
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->val$animate:Z

    if-eqz v0, :cond_3

    .line 545
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->access$1300(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->access$1300(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 565
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 548
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->val$shown:Z

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->access$1300(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->access$1300(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->access$1300(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 556
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->val$shown:Z

    if-eqz v0, :cond_4

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V

    goto :goto_1

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
