.class public Lc/c/a/a/c/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:I = 0xa826e0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lc/c/a/a/c/m;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lc/c/a/a/a;->common_google_play_services_unknown_issue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v1, "GooglePlayServicesUtil"

    const-string v2, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0xa826e0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    sget-object v1, Lc/c/a/a/c/m;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1
    sget-object v1, Lc/c/a/a/c/b/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget-boolean v4, Lc/c/a/a/c/b/b;->b:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    sput-boolean v3, Lc/c/a/a/c/b/b;->b:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lc/c/a/a/f/b;->a(Landroid/content/Context;)Lc/c/a/a/f/a;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v6, 0x80

    .line 2
    :try_start_2
    iget-object v5, v5, Lc/c/a/a/f/a;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 3
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "com.google.app.id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "com.google.android.gms.version"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lc/c/a/a/c/b/b;->c:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "MetadataValueReader"

    const-string v6, "This should never happen."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4
    sget v1, Lc/c/a/a/c/b/b;->c:I

    if-eqz v1, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "com.google.android.gms.version"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x122

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but found "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".  You must have the following declaration within the <application> element:     <meta-data android:name=\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" android:value=\"@integer/google_play_services_version\" />"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    .line 6
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 7
    :cond_4
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const/4 v5, 0x0

    if-lt v1, v4, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 8
    sget-object v1, La/a/a/a/a;->t:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "cn.google"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, La/a/a/a/a;->t:Ljava/lang/Boolean;

    :cond_6
    sget-object v1, La/a/a/a/a;->t:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 9
    :cond_7
    sget-object v1, La/a/a/a/a;->s:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, La/a/a/a/a;->s:Ljava/lang/Boolean;

    :cond_8
    sget-object v1, La/a/a/a/a;->s:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_d

    .line 10
    sget-object v1, La/a/a/a/a;->u:Ljava/lang/Boolean;

    if-nez v1, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.type.iot"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.type.embedded"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v1, 0x1

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, La/a/a/a/a;->u:Ljava/lang/Boolean;

    :cond_c
    sget-object v1, La/a/a/a/a;->u:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    const/4 v4, 0x0

    const/16 v6, 0x9

    if-eqz v1, :cond_e

    :try_start_5
    const-string v4, "com.android.vending"

    const/16 v7, 0x2040

    .line 11
    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_9

    :catch_1
    const-string p0, "GooglePlayServicesUtil"

    const-string v0, "Google Play Store is missing."

    :goto_8
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_e
    :goto_9
    :try_start_6
    const-string v7, "com.google.android.gms"

    const/16 v8, 0x40

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 12
    invoke-static {p0}, La/a/a/a/a;->f0(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v8, Lc/c/a/a/c/n;

    monitor-enter v8

    :try_start_7
    sget-object v9, Lc/c/a/a/c/n;->a:Lc/c/a/a/c/n;

    if-nez v9, :cond_10

    .line 13
    const-class v9, Lc/c/a/a/c/f;

    monitor-enter v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    sget-object v10, Lc/c/a/a/c/f;->a:Landroid/content/Context;

    if-nez v10, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    sput-object v10, Lc/c/a/a/c/f;->a:Landroid/content/Context;

    goto :goto_a

    :cond_f
    const-string v10, "GoogleCertificates"

    const-string v11, "GoogleCertificates has been initialized already"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_a
    :try_start_9
    monitor-exit v9

    .line 14
    new-instance v9, Lc/c/a/a/c/n;

    invoke-direct {v9, p0}, Lc/c/a/a/c/n;-><init>(Landroid/content/Context;)V

    sput-object v9, Lc/c/a/a/c/n;->a:Lc/c/a/a/c/n;

    goto :goto_b

    :catchall_2
    move-exception p0

    .line 15
    monitor-exit v9

    throw p0

    .line 16
    :cond_10
    :goto_b
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 17
    sget-object p0, Lc/c/a/a/c/j;->a:[Lc/c/a/a/c/g;

    if-eqz v1, :cond_12

    invoke-static {v4, p0}, Lc/c/a/a/c/n;->a(Landroid/content/pm/PackageInfo;[Lc/c/a/a/c/g;)Lc/c/a/a/c/g;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "GooglePlayServicesUtil"

    const-string v0, "Google Play Store signature invalid."

    goto :goto_8

    :cond_11
    new-array v1, v3, [Lc/c/a/a/c/g;

    aput-object p0, v1, v5

    invoke-static {v7, v1}, Lc/c/a/a/c/n;->a(Landroid/content/pm/PackageInfo;[Lc/c/a/a/c/g;)Lc/c/a/a/c/g;

    move-result-object p0

    if-nez p0, :cond_13

    :goto_c
    const-string p0, "GooglePlayServicesUtil"

    const-string v0, "Google Play services signature invalid."

    goto :goto_8

    :cond_12
    invoke-static {v7, p0}, Lc/c/a/a/c/n;->a(Landroid/content/pm/PackageInfo;[Lc/c/a/a/c/g;)Lc/c/a/a/c/g;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_c

    :cond_13
    const/16 p0, 0x2b0c

    iget v1, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit16 v4, v1, 0x3e8

    if-ge v4, p0, :cond_14

    const-string p0, "GooglePlayServicesUtil"

    const/16 v0, 0x4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Google Play services out of date.  Requires "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but found "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_14
    iget-object p0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_15

    :try_start_a
    const-string p0, "com.google.android.gms"

    invoke-virtual {v0, p0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_d

    :catch_2
    move-exception p0

    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play services missing when getting application info."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_15
    :goto_d
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p0, :cond_16

    const/4 p0, 0x3

    return p0

    :cond_16
    return v5

    :catchall_3
    move-exception p0

    .line 18
    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw p0

    :catch_3
    const-string p0, "GooglePlayServicesUtil"

    const-string v0, "Google Play services is missing."

    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
