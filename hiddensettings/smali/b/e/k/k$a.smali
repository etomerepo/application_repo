.class public Lb/e/k/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/e/k/k;->x(Landroid/view/View;Lb/e/k/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/e/k/i;


# direct methods
.method public constructor <init>(Lb/e/k/i;)V
    .locals 0

    iput-object p1, p0, Lb/e/k/k$a;->a:Lb/e/k/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 1
    new-instance v0, Lb/e/k/t;

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-direct {v0, p2}, Lb/e/k/t;-><init>(Landroid/view/WindowInsets;)V

    .line 2
    iget-object p2, p0, Lb/e/k/k$a;->a:Lb/e/k/i;

    check-cast p2, Lb/b/k/l;

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {v0}, Lb/e/k/t;->d()I

    move-result v2

    iget-object p2, p2, Lb/b/k/l;->a:Lb/b/k/k;

    invoke-virtual {p2, v0, v1}, Lb/b/k/k;->N(Lb/e/k/t;Landroid/graphics/Rect;)I

    move-result p2

    if-eq v2, p2, :cond_1

    invoke-virtual {v0}, Lb/e/k/t;->b()I

    move-result v1

    invoke-virtual {v0}, Lb/e/k/t;->c()I

    move-result v2

    invoke-virtual {v0}, Lb/e/k/t;->a()I

    move-result v3

    .line 4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_0

    new-instance v4, Lb/e/k/t$b;

    invoke-direct {v4, v0}, Lb/e/k/t$b;-><init>(Lb/e/k/t;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lb/e/k/t$a;

    invoke-direct {v4, v0}, Lb/e/k/t$a;-><init>(Lb/e/k/t;)V

    .line 5
    :goto_0
    invoke-static {v1, p2, v2, v3}, Lb/e/f/b;->a(IIII)Lb/e/f/b;

    move-result-object p2

    .line 6
    invoke-virtual {v4, p2}, Lb/e/k/t$c;->c(Lb/e/f/b;)V

    .line 7
    invoke-virtual {v4}, Lb/e/k/t$c;->a()Lb/e/k/t;

    move-result-object v0

    .line 8
    :cond_1
    invoke-static {p1, v0}, Lb/e/k/k;->o(Landroid/view/View;Lb/e/k/t;)Lb/e/k/t;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lb/e/k/t;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    throw v1

    .line 11
    :cond_3
    throw v1
.end method
