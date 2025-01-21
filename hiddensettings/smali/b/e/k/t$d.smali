.class public Lb/e/k/t$d;
.super Lb/e/k/t$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/e/k/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Landroid/view/WindowInsets;

.field public c:Lb/e/f/b;


# direct methods
.method public constructor <init>(Lb/e/k/t;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/e/k/t$h;-><init>(Lb/e/k/t;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/e/k/t$d;->c:Lb/e/f/b;

    iput-object p2, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final f()Lb/e/f/b;
    .locals 4

    iget-object v0, p0, Lb/e/k/t$d;->c:Lb/e/f/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lb/e/f/b;->a(IIII)Lb/e/f/b;

    move-result-object v0

    iput-object v0, p0, Lb/e/k/t$d;->c:Lb/e/f/b;

    :cond_0
    iget-object v0, p0, Lb/e/k/t$d;->c:Lb/e/f/b;

    return-object v0
.end method

.method public g(IIII)Lb/e/k/t;
    .locals 3

    iget-object v0, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, Lb/e/k/t;->h(Landroid/view/WindowInsets;)Lb/e/k/t;

    move-result-object v0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    new-instance v1, Lb/e/k/t$b;

    invoke-direct {v1, v0}, Lb/e/k/t$b;-><init>(Lb/e/k/t;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lb/e/k/t$a;

    invoke-direct {v1, v0}, Lb/e/k/t$a;-><init>(Lb/e/k/t;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lb/e/k/t$d;->f()Lb/e/f/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lb/e/k/t;->f(Lb/e/f/b;IIII)Lb/e/f/b;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Lb/e/k/t$c;->c(Lb/e/f/b;)V

    .line 4
    invoke-virtual {p0}, Lb/e/k/t$h;->e()Lb/e/f/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lb/e/k/t;->f(Lb/e/f/b;IIII)Lb/e/f/b;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Lb/e/k/t$c;->b(Lb/e/f/b;)V

    .line 6
    invoke-virtual {v1}, Lb/e/k/t$c;->a()Lb/e/k/t;

    move-result-object p1

    return-object p1
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method
