.class public Lb/b/k/u$b;
.super Lb/e/k/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/k/u;


# direct methods
.method public constructor <init>(Lb/b/k/u;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/u$b;->a:Lb/b/k/u;

    invoke-direct {p0}, Lb/e/k/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/k/u$b;->a:Lb/b/k/u;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/k/u;->u:Lb/b/o/g;

    iget-object p1, p1, Lb/b/k/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
