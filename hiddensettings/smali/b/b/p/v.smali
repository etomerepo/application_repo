.class public Lb/b/p/v;
.super Lb/b/p/h0;
.source ""


# instance fields
.field public final synthetic k:Lb/b/p/w$d;

.field public final synthetic l:Lb/b/p/w;


# direct methods
.method public constructor <init>(Lb/b/p/w;Landroid/view/View;Lb/b/p/w$d;)V
    .locals 0

    iput-object p1, p0, Lb/b/p/v;->l:Lb/b/p/w;

    iput-object p3, p0, Lb/b/p/v;->k:Lb/b/p/w$d;

    invoke-direct {p0, p2}, Lb/b/p/h0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Lb/b/o/i/p;
    .locals 1

    iget-object v0, p0, Lb/b/p/v;->k:Lb/b/p/w$d;

    return-object v0
.end method

.method public c()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object v0, p0, Lb/b/p/v;->l:Lb/b/p/w;

    invoke-virtual {v0}, Lb/b/p/w;->getInternalPopup()Lb/b/p/w$f;

    move-result-object v0

    invoke-interface {v0}, Lb/b/p/w$f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/p/v;->l:Lb/b/p/w;

    invoke-virtual {v0}, Lb/b/p/w;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
