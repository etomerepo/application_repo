.class public final Lc/c/a/a/f/k;
.super Lc/c/a/a/f/f;
.source ""

# interfaces
.implements Lc/c/a/a/f/i;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-direct {p0, p1, v0}, Lc/c/a/a/f/f;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Z)Z
    .locals 2

    invoke-virtual {p0}, Lc/c/a/a/f/f;->e()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/a/f/h;->b(Landroid/os/Parcel;Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lc/c/a/a/f/f;->f(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lc/c/a/a/f/f;->e()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lc/c/a/a/f/f;->f(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
