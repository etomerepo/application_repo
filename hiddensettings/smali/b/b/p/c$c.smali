.class public Lb/b/p/c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/p/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public b:Lb/b/p/c$e;

.field public final synthetic c:Lb/b/p/c;


# direct methods
.method public constructor <init>(Lb/b/p/c;Lb/b/p/c$e;)V
    .locals 0

    iput-object p1, p0, Lb/b/p/c$c;->c:Lb/b/p/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/p/c$c;->b:Lb/b/p/c$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/b/p/c$c;->c:Lb/b/p/c;

    .line 1
    iget-object v0, v0, Lb/b/o/i/b;->d:Lb/b/o/i/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lb/b/o/i/g;->e:Lb/b/o/i/g$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lb/b/o/i/g$a;->b(Lb/b/o/i/g;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/p/c$c;->c:Lb/b/p/c;

    .line 4
    iget-object v0, v0, Lb/b/o/i/b;->i:Lb/b/o/i/n;

    .line 5
    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/p/c$c;->b:Lb/b/p/c$e;

    invoke-virtual {v0}, Lb/b/o/i/l;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/p/c$c;->c:Lb/b/p/c;

    iget-object v1, p0, Lb/b/p/c$c;->b:Lb/b/p/c$e;

    iput-object v1, v0, Lb/b/p/c;->u:Lb/b/p/c$e;

    :cond_1
    iget-object v0, p0, Lb/b/p/c$c;->c:Lb/b/p/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/b/p/c;->w:Lb/b/p/c$c;

    return-void
.end method
