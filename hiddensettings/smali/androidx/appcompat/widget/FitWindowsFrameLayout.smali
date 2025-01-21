.class public Landroidx/appcompat/widget/FitWindowsFrameLayout;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public b:Lb/b/p/g0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/FitWindowsFrameLayout;->b:Lb/b/p/g0;

    if-eqz v0, :cond_0

    check-cast v0, Lb/b/k/m;

    .line 1
    iget-object v0, v0, Lb/b/k/m;->a:Lb/b/k/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lb/b/k/k;->N(Lb/e/k/t;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setOnFitSystemWindowsListener(Lb/b/p/g0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/FitWindowsFrameLayout;->b:Lb/b/p/g0;

    return-void
.end method
