.class public final Lc/c/a/a/f/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lc/c/a/a/f/b;


# instance fields
.field public a:Lc/c/a/a/f/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/f/b;

    invoke-direct {v0}, Lc/c/a/a/f/b;-><init>()V

    sput-object v0, Lc/c/a/a/f/b;->b:Lc/c/a/a/f/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/a/a/f/b;->a:Lc/c/a/a/f/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lc/c/a/a/f/a;
    .locals 2

    sget-object v0, Lc/c/a/a/f/b;->b:Lc/c/a/a/f/b;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lc/c/a/a/f/b;->a:Lc/c/a/a/f/a;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    new-instance v1, Lc/c/a/a/f/a;

    invoke-direct {v1, p0}, Lc/c/a/a/f/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lc/c/a/a/f/b;->a:Lc/c/a/a/f/a;

    :cond_1
    iget-object p0, v0, Lc/c/a/a/f/b;->a:Lc/c/a/a/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
