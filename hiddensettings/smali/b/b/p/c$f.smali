.class public Lb/b/p/c$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/o/i/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/p/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic b:Lb/b/p/c;


# direct methods
.method public constructor <init>(Lb/b/p/c;)V
    .locals 0

    iput-object p1, p0, Lb/b/p/c$f;->b:Lb/b/p/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/o/i/g;Z)V
    .locals 2

    instance-of v0, p1, Lb/b/o/i/r;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/b/o/i/g;->k()Lb/b/o/i/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/o/i/g;->c(Z)V

    :cond_0
    iget-object v0, p0, Lb/b/p/c$f;->b:Lb/b/p/c;

    .line 1
    iget-object v0, v0, Lb/b/o/i/b;->f:Lb/b/o/i/m$a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1, p2}, Lb/b/o/i/m$a;->a(Lb/b/o/i/g;Z)V

    :cond_1
    return-void
.end method

.method public b(Lb/b/o/i/g;)Z
    .locals 3

    iget-object v0, p0, Lb/b/p/c$f;->b:Lb/b/p/c;

    .line 1
    iget-object v1, v0, Lb/b/o/i/b;->d:Lb/b/o/i/g;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    .line 2
    :cond_0
    move-object v1, p1

    check-cast v1, Lb/b/o/i/r;

    .line 3
    iget-object v1, v1, Lb/b/o/i/r;->B:Lb/b/o/i/i;

    .line 4
    iget v1, v1, Lb/b/o/i/i;->a:I

    .line 5
    iget-object v0, v0, Lb/b/o/i/b;->f:Lb/b/o/i/m$a;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Lb/b/o/i/m$a;->b(Lb/b/o/i/g;)Z

    move-result v2

    :cond_1
    return v2
.end method
