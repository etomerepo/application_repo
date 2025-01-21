.class public Lb/e/k/t$e;
.super Lb/e/k/t$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/e/k/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public d:Lb/e/f/b;


# direct methods
.method public constructor <init>(Lb/e/k/t;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/e/k/t$d;-><init>(Lb/e/k/t;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/e/k/t$e;->d:Lb/e/f/b;

    return-void
.end method


# virtual methods
.method public b()Lb/e/k/t;
    .locals 1

    iget-object v0, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lb/e/k/t;->h(Landroid/view/WindowInsets;)Lb/e/k/t;

    move-result-object v0

    return-object v0
.end method

.method public c()Lb/e/k/t;
    .locals 1

    iget-object v0, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lb/e/k/t;->h(Landroid/view/WindowInsets;)Lb/e/k/t;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lb/e/f/b;
    .locals 4

    iget-object v0, p0, Lb/e/k/t$e;->d:Lb/e/f/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lb/e/f/b;->a(IIII)Lb/e/f/b;

    move-result-object v0

    iput-object v0, p0, Lb/e/k/t$e;->d:Lb/e/f/b;

    :cond_0
    iget-object v0, p0, Lb/e/k/t$e;->d:Lb/e/f/b;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method
