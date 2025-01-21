.class public Lb/b/o/i/j$a;
.super Lb/e/k/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/o/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/view/ActionProvider;

.field public final synthetic c:Lb/b/o/i/j;


# direct methods
.method public constructor <init>(Lb/b/o/i/j;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    iput-object p1, p0, Lb/b/o/i/j$a;->c:Lb/b/o/i/j;

    invoke-direct {p0, p2}, Lb/e/k/b;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lb/b/o/i/j$a;->b:Landroid/view/ActionProvider;

    return-void
.end method
