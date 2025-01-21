.class public abstract Lc/c/a/a/f/j;
.super Lc/c/a/a/f/g;
.source ""

# interfaces
.implements Lc/c/a/a/f/i;


# direct methods
.method public static f(Landroid/os/IBinder;)Lc/c/a/a/f/i;
    .locals 2

    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/c/a/a/f/i;

    if-eqz v1, :cond_0

    check-cast v0, Lc/c/a/a/f/i;

    return-object v0

    :cond_0
    new-instance v0, Lc/c/a/a/f/k;

    invoke-direct {v0, p0}, Lc/c/a/a/f/k;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
