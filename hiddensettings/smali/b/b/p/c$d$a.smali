.class public Lb/b/p/c$d$a;
.super Lb/b/p/h0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/p/c$d;-><init>(Lb/b/p/c;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lb/b/p/c$d;


# direct methods
.method public constructor <init>(Lb/b/p/c$d;Landroid/view/View;Lb/b/p/c;)V
    .locals 0

    iput-object p1, p0, Lb/b/p/c$d$a;->k:Lb/b/p/c$d;

    invoke-direct {p0, p2}, Lb/b/p/h0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Lb/b/o/i/p;
    .locals 1

    iget-object v0, p0, Lb/b/p/c$d$a;->k:Lb/b/p/c$d;

    iget-object v0, v0, Lb/b/p/c$d;->d:Lb/b/p/c;

    iget-object v0, v0, Lb/b/p/c;->u:Lb/b/p/c$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lb/b/o/i/l;->a()Lb/b/o/i/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lb/b/p/c$d$a;->k:Lb/b/p/c$d;

    iget-object v0, v0, Lb/b/p/c$d;->d:Lb/b/p/c;

    invoke-virtual {v0}, Lb/b/p/c;->n()Z

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lb/b/p/c$d$a;->k:Lb/b/p/c$d;

    iget-object v0, v0, Lb/b/p/c$d;->d:Lb/b/p/c;

    iget-object v1, v0, Lb/b/p/c;->w:Lb/b/p/c$c;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lb/b/p/c;->k()Z

    const/4 v0, 0x1

    return v0
.end method
