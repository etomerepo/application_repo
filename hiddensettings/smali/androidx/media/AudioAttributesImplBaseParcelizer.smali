.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lb/n/a;)Lb/k/c;
    .locals 3

    new-instance v0, Lb/k/c;

    invoke-direct {v0}, Lb/k/c;-><init>()V

    iget v1, v0, Lb/k/c;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lb/n/a;->i(II)I

    move-result v1

    iput v1, v0, Lb/k/c;->a:I

    iget v1, v0, Lb/k/c;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lb/n/a;->i(II)I

    move-result v1

    iput v1, v0, Lb/k/c;->b:I

    iget v1, v0, Lb/k/c;->c:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lb/n/a;->i(II)I

    move-result v1

    iput v1, v0, Lb/k/c;->c:I

    iget v1, v0, Lb/k/c;->d:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lb/n/a;->i(II)I

    move-result p0

    iput p0, v0, Lb/k/c;->d:I

    return-object v0
.end method

.method public static write(Lb/k/c;Lb/n/a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lb/k/c;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lb/n/a;->m(II)V

    iget v0, p0, Lb/k/c;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lb/n/a;->m(II)V

    iget v0, p0, Lb/k/c;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lb/n/a;->m(II)V

    iget p0, p0, Lb/k/c;->d:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lb/n/a;->m(II)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method
