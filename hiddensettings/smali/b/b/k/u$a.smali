.class public Lb/b/k/u$a;
.super Lb/e/k/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/k/u;


# direct methods
.method public constructor <init>(Lb/b/k/u;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/u$a;->a:Lb/b/k/u;

    invoke-direct {p0}, Lb/e/k/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lb/b/k/u$a;->a:Lb/b/k/u;

    iget-boolean v0, p1, Lb/b/k/u;->p:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lb/b/k/u;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lb/b/k/u$a;->a:Lb/b/k/u;

    iget-object p1, p1, Lb/b/k/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Lb/b/k/u$a;->a:Lb/b/k/u;

    iget-object p1, p1, Lb/b/k/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Lb/b/k/u$a;->a:Lb/b/k/u;

    iget-object p1, p1, Lb/b/k/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Lb/b/k/u$a;->a:Lb/b/k/u;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/k/u;->u:Lb/b/o/g;

    .line 1
    iget-object v1, p1, Lb/b/k/u;->k:Lb/b/o/a$a;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lb/b/k/u;->j:Lb/b/o/a;

    invoke-interface {v1, v2}, Lb/b/o/a$a;->d(Lb/b/o/a;)V

    iput-object v0, p1, Lb/b/k/u;->j:Lb/b/o/a;

    iput-object v0, p1, Lb/b/k/u;->k:Lb/b/o/a$a;

    .line 2
    :cond_1
    iget-object p1, p0, Lb/b/k/u$a;->a:Lb/b/k/u;

    iget-object p1, p1, Lb/b/k/u;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lb/e/k/k;->s(Landroid/view/View;)V

    :cond_2
    return-void
.end method
