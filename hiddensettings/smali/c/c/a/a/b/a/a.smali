.class public Lc/c/a/a/b/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/b/a/a$a;,
        Lc/c/a/a/b/a/a$b;
    }
.end annotation


# instance fields
.field public a:Lc/c/a/a/c/d;

.field public b:Lc/c/a/a/f/i;

.field public c:Z

.field public d:Ljava/lang/Object;

.field public e:Lc/c/a/a/b/a/a$b;

.field public final f:Landroid/content/Context;

.field public g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/c/a/a/b/a/a;->d:Ljava/lang/Object;

    invoke-static {p1}, La/a/a/a/a;->f0(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p4

    :cond_1
    :goto_0
    iput-object p1, p0, Lc/c/a/a/b/a/a;->f:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/c/a/a/b/a/a;->c:Z

    iput-wide p2, p0, Lc/c/a/a/b/a/a;->g:J

    return-void
.end method

.method public static b(Landroid/content/Context;)Lc/c/a/a/b/a/a$a;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lc/c/a/a/c/m;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "google_ads_flags"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "gads:ad_id_app_context:enabled"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "gads:ad_id_app_context:ping_ratio"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v2

    const/4 v3, 0x0

    :goto_0
    const-string v4, "AdvertisingIdClient"

    const-string v5, "Error while reading from SharedPreferences "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    new-instance v2, Lc/c/a/a/b/a/a;

    const-wide/16 v4, -0x1

    invoke-direct {v2, p0, v4, v5, v3}, Lc/c/a/a/b/a/a;-><init>(Landroid/content/Context;JZ)V

    const/4 p0, 0x0

    :try_start_2
    invoke-virtual {v2, v1}, Lc/c/a/a/b/a/a;->d(Z)V

    invoke-virtual {v2}, Lc/c/a/a/b/a/a;->c()Lc/c/a/a/b/a/a$a;

    move-result-object v1

    invoke-virtual {v2, v1, v3, v0, p0}, Lc/c/a/a/b/a/a;->e(Lc/c/a/a/b/a/a$a;ZFLjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lc/c/a/a/b/a/a;->a()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2, p0, v3, v0, v1}, Lc/c/a/a/b/a/a;->e(Lc/c/a/a/b/a/a$a;ZFLjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v2}, Lc/c/a/a/b/a/a;->a()V

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v2}, Lc/c/a/a/b/a/a;->a()V

    throw p0
.end method

.method public static g(Landroid/content/Context;)Lc/c/a/a/c/d;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1
    sget-object v0, Lc/c/a/a/c/e;->a:Lc/c/a/a/c/e;

    if-eqz v0, :cond_8

    .line 2
    invoke-static {p0}, Lc/c/a/a/c/m;->b(Landroid/content/Context;)I

    move-result v0

    const-string v1, "com.google.android.gms"

    const/16 v3, 0x12

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x2000

    :try_start_1
    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-boolean v2, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    const/16 v0, 0x12

    :cond_4
    if-eqz v0, :cond_6

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    goto :goto_2

    .line 4
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Google Play services not available"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    new-instance v0, Lc/c/a/a/c/d;

    invoke-direct {v0}, Lc/c/a/a/c/d;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    invoke-static {}, Lc/c/a/a/c/c/a;->b()Lc/c/a/a/c/c/a;

    move-result-object v1

    invoke-virtual {v1, p0, v2, v0, v4}, Lc/c/a/a/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_7

    return-object v0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Connection failure"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :catch_1
    new-instance p0, Lc/c/a/a/c/a;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lc/c/a/a/c/a;-><init>(I)V

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, La/a/a/a/a;->e0(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/c/a/a/b/a/a;->f:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/c/a/a/b/a/a;->a:Lc/c/a/a/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lc/c/a/a/b/a/a;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lc/c/a/a/c/c/a;->b()Lc/c/a/a/c/c/a;

    iget-object v0, p0, Lc/c/a/a/b/a/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lc/c/a/a/b/a/a;->a:Lc/c/a/a/c/d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "AdvertisingIdClient"

    const-string v2, "AdvertisingIdClient unbindService failed."

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AdvertisingIdClient"

    const-string v2, "AdvertisingIdClient unbindService failed."

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/a/a/b/a/a;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/a/a/b/a/a;->b:Lc/c/a/a/f/i;

    iput-object v0, p0, Lc/c/a/a/b/a/a;->a:Lc/c/a/a/c/d;

    monitor-exit p0

    return-void

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public c()Lc/c/a/a/b/a/a$a;
    .locals 4

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, La/a/a/a/a;->e0(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc/c/a/a/b/a/a;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/c/a/a/b/a/a;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lc/c/a/a/b/a/a;->e:Lc/c/a/a/b/a/a$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/a/b/a/a;->e:Lc/c/a/a/b/a/a$b;

    iget-boolean v1, v1, Lc/c/a/a/b/a/a$b;->e:Z

    if-eqz v1, :cond_1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lc/c/a/a/b/a/a;->d(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v0, p0, Lc/c/a/a/b/a/a;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient is not connected."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lc/c/a/a/b/a/a;->a:Lc/c/a/a/c/d;

    invoke-static {v0}, La/a/a/a/a;->f0(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/c/a/a/b/a/a;->b:Lc/c/a/a/f/i;

    invoke-static {v0}, La/a/a/a/a;->f0(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v0, Lc/c/a/a/b/a/a$a;

    iget-object v1, p0, Lc/c/a/a/b/a/a;->b:Lc/c/a/a/f/i;

    invoke-interface {v1}, Lc/c/a/a/f/i;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc/c/a/a/b/a/a;->b:Lc/c/a/a/f/i;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lc/c/a/a/f/i;->b(Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lc/c/a/a/b/a/a$a;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-virtual {p0}, Lc/c/a/a/b/a/a;->f()V

    return-object v0

    :catch_1
    move-exception v0

    :try_start_8
    const-string v1, "AdvertisingIdClient"

    const-string v2, "GMS remote exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method public final d(Z)V
    .locals 2

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, La/a/a/a/a;->e0(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc/c/a/a/b/a/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/b/a/a;->a()V

    :cond_0
    iget-object v0, p0, Lc/c/a/a/b/a/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lc/c/a/a/b/a/a;->g(Landroid/content/Context;)Lc/c/a/a/c/d;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/a/b/a/a;->a:Lc/c/a/a/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lc/c/a/a/c/d;->a(Ljava/util/concurrent/TimeUnit;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/a/f/j;->f(Landroid/os/IBinder;)Lc/c/a/a/f/i;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2
    :try_start_2
    iput-object v0, p0, Lc/c/a/a/b/a/a;->b:Lc/c/a/a/f/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/a/a/b/a/a;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lc/c/a/a/b/a/a;->f()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Interrupted exception"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final e(Lc/c/a/a/b/a/a$a;ZFLjava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p3

    cmpl-double p3, v0, v2

    if-lez p3, :cond_0

    return-void

    :cond_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "1"

    const-string v1, "0"

    if-eqz p2, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    const-string v2, "app_context"

    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 1
    iget-boolean p2, p1, Lc/c/a/a/b/a/a$a;->b:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const-string p2, "limit_ad_tracking"

    .line 2
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p1, Lc/c/a/a/b/a/a$a;->a:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ad_id_size"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "error"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p1, "https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lc/c/a/a/b/a/b;

    invoke-direct {p2, p1}, Lc/c/a/a/b/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Lc/c/a/a/b/a/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/c/a/a/b/a/a;->e:Lc/c/a/a/b/a/a$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/c/a/a/b/a/a;->e:Lc/c/a/a/b/a/a$b;

    iget-object v1, v1, Lc/c/a/a/b/a/a$b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lc/c/a/a/b/a/a;->e:Lc/c/a/a/b/a/a$b;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    iget-wide v1, p0, Lc/c/a/a/b/a/a;->g:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    new-instance v1, Lc/c/a/a/b/a/a$b;

    iget-wide v2, p0, Lc/c/a/a/b/a/a;->g:J

    invoke-direct {v1, p0, v2, v3}, Lc/c/a/a/b/a/a$b;-><init>(Lc/c/a/a/b/a/a;J)V

    iput-object v1, p0, Lc/c/a/a/b/a/a;->e:Lc/c/a/a/b/a/a$b;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lc/c/a/a/b/a/a;->a()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
