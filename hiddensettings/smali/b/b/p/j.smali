.class public final Lb/b/p/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Landroid/graphics/PorterDuff$Mode;

.field public static c:Lb/b/p/j;


# instance fields
.field public a:Lb/b/p/n0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lb/b/p/j;->b:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lb/b/p/j;
    .locals 2

    const-class v0, Lb/b/p/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lb/b/p/j;->c:Lb/b/p/j;

    if-nez v1, :cond_0

    invoke-static {}, Lb/b/p/j;->d()V

    :cond_0
    sget-object v1, Lb/b/p/j;->c:Lb/b/p/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()V
    .locals 3

    const-class v0, Lb/b/p/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lb/b/p/j;->c:Lb/b/p/j;

    if-nez v1, :cond_0

    new-instance v1, Lb/b/p/j;

    invoke-direct {v1}, Lb/b/p/j;-><init>()V

    sput-object v1, Lb/b/p/j;->c:Lb/b/p/j;

    invoke-static {}, Lb/b/p/n0;->d()Lb/b/p/n0;

    move-result-object v2

    iput-object v2, v1, Lb/b/p/j;->a:Lb/b/p/n0;

    sget-object v1, Lb/b/p/j;->c:Lb/b/p/j;

    iget-object v1, v1, Lb/b/p/j;->a:Lb/b/p/n0;

    new-instance v2, Lb/b/p/j$a;

    invoke-direct {v2}, Lb/b/p/j$a;-><init>()V

    .line 1
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v2, v1, Lb/b/p/n0;->g:Lb/b/p/n0$e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e(Landroid/graphics/drawable/Drawable;Lb/b/p/v0;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lb/b/p/n0;->l(Landroid/graphics/drawable/Drawable;Lb/b/p/v0;[I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/p/j;->a:Lb/b/p/n0;

    invoke-virtual {v0, p1, p2}, Lb/b/p/n0;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/p/j;->a:Lb/b/p/n0;

    invoke-virtual {v0, p1, p2}, Lb/b/p/n0;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
