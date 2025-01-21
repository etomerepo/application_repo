.class public Lb/b/k/k$d$a;
.super Lb/e/k/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/k/k$d;->d(Lb/b/o/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/k/k$d;


# direct methods
.method public constructor <init>(Lb/b/k/k$d;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/k$d$a;->a:Lb/b/k/k$d;

    invoke-direct {p0}, Lb/e/k/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/k/k$d$a;->a:Lb/b/k/k$d;

    iget-object p1, p1, Lb/b/k/k$d;->b:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Lb/b/k/k$d$a;->a:Lb/b/k/k$d;

    iget-object p1, p1, Lb/b/k/k$d;->b:Lb/b/k/k;

    iget-object v0, p1, Lb/b/k/k;->q:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lb/b/k/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/b/k/k$d$a;->a:Lb/b/k/k$d;

    iget-object p1, p1, Lb/b/k/k$d;->b:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lb/e/k/k;->s(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lb/b/k/k$d$a;->a:Lb/b/k/k$d;

    iget-object p1, p1, Lb/b/k/k$d;->b:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lb/b/k/k$d$a;->a:Lb/b/k/k$d;

    iget-object p1, p1, Lb/b/k/k$d;->b:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->s:Lb/e/k/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/e/k/p;->d(Lb/e/k/q;)Lb/e/k/p;

    iget-object p1, p0, Lb/b/k/k$d$a;->a:Lb/b/k/k$d;

    iget-object p1, p1, Lb/b/k/k$d;->b:Lb/b/k/k;

    iput-object v0, p1, Lb/b/k/k;->s:Lb/e/k/p;

    iget-object p1, p1, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    invoke-static {p1}, Lb/e/k/k;->s(Landroid/view/View;)V

    return-void
.end method
