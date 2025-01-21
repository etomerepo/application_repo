.class public Lb/e/k/t$g;
.super Lb/e/k/t$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/e/k/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(Lb/e/k/t;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/e/k/t$f;-><init>(Lb/e/k/t;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public g(IIII)Lb/e/k/t;
    .locals 1

    iget-object v0, p0, Lb/e/k/t$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lb/e/k/t;->h(Landroid/view/WindowInsets;)Lb/e/k/t;

    move-result-object p1

    return-object p1
.end method
