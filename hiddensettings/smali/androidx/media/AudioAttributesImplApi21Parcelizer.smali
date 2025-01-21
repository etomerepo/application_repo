.class public final Landroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lb/n/a;)Lb/k/b;
    .locals 3

    new-instance v0, Lb/k/b;

    invoke-direct {v0}, Lb/k/b;-><init>()V

    iget-object v1, v0, Lb/k/b;->a:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lb/n/a;->j(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, v0, Lb/k/b;->a:Landroid/media/AudioAttributes;

    iget v1, v0, Lb/k/b;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lb/n/a;->i(II)I

    move-result p0

    iput p0, v0, Lb/k/b;->b:I

    return-object v0
.end method

.method public static write(Lb/k/b;Lb/n/a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/k/b;->a:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lb/n/a;->n(Landroid/os/Parcelable;I)V

    iget p0, p0, Lb/k/b;->b:I

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Lb/n/a;->m(II)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method
