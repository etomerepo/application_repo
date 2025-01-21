.class public Lb/e/k/t;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/e/k/t$b;,
        Lb/e/k/t$a;,
        Lb/e/k/t$c;,
        Lb/e/k/t$g;,
        Lb/e/k/t$f;,
        Lb/e/k/t$e;,
        Lb/e/k/t$d;,
        Lb/e/k/t$h;
    }
.end annotation


# static fields
.field public static final b:Lb/e/k/t;


# instance fields
.field public final a:Lb/e/k/t$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/e/k/t$b;

    invoke-direct {v0}, Lb/e/k/t$b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lb/e/k/t$a;

    invoke-direct {v0}, Lb/e/k/t$a;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {v0}, Lb/e/k/t$c;->a()Lb/e/k/t;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lb/e/k/t;->a:Lb/e/k/t$h;

    invoke-virtual {v0}, Lb/e/k/t$h;->a()Lb/e/k/t;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lb/e/k/t;->a:Lb/e/k/t$h;

    invoke-virtual {v0}, Lb/e/k/t$h;->b()Lb/e/k/t;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lb/e/k/t;->a:Lb/e/k/t$h;

    invoke-virtual {v0}, Lb/e/k/t$h;->c()Lb/e/k/t;

    move-result-object v0

    .line 6
    sput-object v0, Lb/e/k/t;->b:Lb/e/k/t;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/e/k/t$g;

    invoke-direct {v0, p0, p1}, Lb/e/k/t$g;-><init>(Lb/e/k/t;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, Lb/e/k/t$f;

    invoke-direct {v0, p0, p1}, Lb/e/k/t$f;-><init>(Lb/e/k/t;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lb/e/k/t$e;

    invoke-direct {v0, p0, p1}, Lb/e/k/t$e;-><init>(Lb/e/k/t;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, Lb/e/k/t;->a:Lb/e/k/t$h;

    return-void
.end method

.method public constructor <init>(Lb/e/k/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lb/e/k/t$h;

    invoke-direct {p1, p0}, Lb/e/k/t$h;-><init>(Lb/e/k/t;)V

    iput-object p1, p0, Lb/e/k/t;->a:Lb/e/k/t$h;

    return-void
.end method

.method public static f(Lb/e/f/b;IIII)Lb/e/f/b;
    .locals 5

    iget v0, p0, Lb/e/f/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lb/e/f/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lb/e/f/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lb/e/f/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lb/e/f/b;->a(IIII)Lb/e/f/b;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/view/WindowInsets;)Lb/e/k/t;
    .locals 1

    new-instance v0, Lb/e/k/t;

    if-eqz p0, :cond_0

    invoke-direct {v0, p0}, Lb/e/k/t;-><init>(Landroid/view/WindowInsets;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lb/e/k/t;->e()Lb/e/f/b;

    move-result-object v0

    iget v0, v0, Lb/e/f/b;->d:I

    return v0
.end method

.method public b()I
    .locals 1

    invoke-virtual {p0}, Lb/e/k/t;->e()Lb/e/f/b;

    move-result-object v0

    iget v0, v0, Lb/e/f/b;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lb/e/k/t;->e()Lb/e/f/b;

    move-result-object v0

    iget v0, v0, Lb/e/f/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lb/e/k/t;->e()Lb/e/f/b;

    move-result-object v0

    iget v0, v0, Lb/e/f/b;->b:I

    return v0
.end method

.method public e()Lb/e/f/b;
    .locals 1

    iget-object v0, p0, Lb/e/k/t;->a:Lb/e/k/t$h;

    invoke-virtual {v0}, Lb/e/k/t$h;->f()Lb/e/f/b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lb/e/k/t;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lb/e/k/t;

    iget-object v0, p0, Lb/e/k/t;->a:Lb/e/k/t$h;

    iget-object p1, p1, Lb/e/k/t;->a:Lb/e/k/t$h;

    .line 1
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lb/e/k/t;->a:Lb/e/k/t$h;

    instance-of v1, v0, Lb/e/k/t$d;

    if-eqz v1, :cond_0

    check-cast v0, Lb/e/k/t$d;

    iget-object v0, v0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lb/e/k/t;->a:Lb/e/k/t$h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/e/k/t$h;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
