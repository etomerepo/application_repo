.class public final Lb/b/k/k$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/o/i/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lb/b/k/k;


# direct methods
.method public constructor <init>(Lb/b/k/k;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/k$c;->b:Lb/b/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/o/i/g;Z)V
    .locals 0

    iget-object p2, p0, Lb/b/k/k$c;->b:Lb/b/k/k;

    invoke-virtual {p2, p1}, Lb/b/k/k;->t(Lb/b/o/i/g;)V

    return-void
.end method

.method public b(Lb/b/o/i/g;)Z
    .locals 2

    iget-object v0, p0, Lb/b/k/k$c;->b:Lb/b/k/k;

    invoke-virtual {v0}, Lb/b/k/k;->E()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
