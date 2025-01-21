.class public Lb/b/k/k$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/o/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lb/b/o/a$a;

.field public final synthetic b:Lb/b/k/k;


# direct methods
.method public constructor <init>(Lb/b/k/k;Lb/b/o/a$a;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/k$d;->b:Lb/b/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/k/k$d;->a:Lb/b/o/a$a;

    return-void
.end method


# virtual methods
.method public a(Lb/b/o/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lb/b/k/k$d;->b:Lb/b/k/k;

    iget-object v0, v0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    invoke-static {v0}, Lb/e/k/k;->s(Landroid/view/View;)V

    iget-object v0, p0, Lb/b/k/k$d;->a:Lb/b/o/a$a;

    invoke-interface {v0, p1, p2}, Lb/b/o/a$a;->a(Lb/b/o/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Lb/b/o/a;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lb/b/k/k$d;->a:Lb/b/o/a$a;

    invoke-interface {v0, p1, p2}, Lb/b/o/a$a;->b(Lb/b/o/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c(Lb/b/o/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lb/b/k/k$d;->a:Lb/b/o/a$a;

    invoke-interface {v0, p1, p2}, Lb/b/o/a$a;->c(Lb/b/o/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public d(Lb/b/o/a;)V
    .locals 2

    iget-object v0, p0, Lb/b/k/k$d;->a:Lb/b/o/a$a;

    invoke-interface {v0, p1}, Lb/b/o/a$a;->d(Lb/b/o/a;)V

    iget-object p1, p0, Lb/b/k/k$d;->b:Lb/b/k/k;

    iget-object v0, p1, Lb/b/k/k;->q:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lb/b/k/k;->f:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lb/b/k/k$d;->b:Lb/b/k/k;

    iget-object v0, v0, Lb/b/k/k;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lb/b/k/k$d;->b:Lb/b/k/k;

    iget-object v0, p1, Lb/b/k/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb/b/k/k;->y()V

    iget-object p1, p0, Lb/b/k/k$d;->b:Lb/b/k/k;

    iget-object v0, p1, Lb/b/k/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lb/e/k/k;->a(Landroid/view/View;)Lb/e/k/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/e/k/p;->a(F)Lb/e/k/p;

    iput-object v0, p1, Lb/b/k/k;->s:Lb/e/k/p;

    iget-object p1, p0, Lb/b/k/k$d;->b:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->s:Lb/e/k/p;

    new-instance v0, Lb/b/k/k$d$a;

    invoke-direct {v0, p0}, Lb/b/k/k$d$a;-><init>(Lb/b/k/k$d;)V

    .line 1
    iget-object v1, p1, Lb/e/k/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, v0}, Lb/e/k/p;->e(Landroid/view/View;Lb/e/k/q;)V

    .line 2
    :cond_1
    iget-object p1, p0, Lb/b/k/k$d;->b:Lb/b/k/k;

    iget-object v0, p1, Lb/b/k/k;->h:Lb/b/k/i;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lb/b/k/k;->o:Lb/b/o/a;

    invoke-interface {v0, p1}, Lb/b/k/i;->h(Lb/b/o/a;)V

    :cond_2
    iget-object p1, p0, Lb/b/k/k$d;->b:Lb/b/k/k;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/k/k;->o:Lb/b/o/a;

    iget-object p1, p1, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    invoke-static {p1}, Lb/e/k/k;->s(Landroid/view/View;)V

    return-void
.end method
