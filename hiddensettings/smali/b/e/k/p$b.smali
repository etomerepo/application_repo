.class public Lb/e/k/p$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/e/k/p;->f(Lb/e/k/s;)Lb/e/k/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/e/k/s;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lb/e/k/p;Lb/e/k/s;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lb/e/k/p$b;->a:Lb/e/k/s;

    iput-object p3, p0, Lb/e/k/p$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lb/e/k/p$b;->a:Lb/e/k/s;

    check-cast p1, Lb/b/k/u$c;

    .line 1
    iget-object p1, p1, Lb/b/k/u$c;->a:Lb/b/k/u;

    iget-object p1, p1, Lb/b/k/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
