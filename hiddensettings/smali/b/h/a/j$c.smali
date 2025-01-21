.class public Lb/h/a/j$c;
.super Lb/h/a/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/a/j;->Q()Lb/h/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/h/a/j;


# direct methods
.method public constructor <init>(Lb/h/a/j;)V
    .locals 0

    iput-object p1, p0, Lb/h/a/j$c;->b:Lb/h/a/j;

    invoke-direct {p0}, Lb/h/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object p1, p0, Lb/h/a/j$c;->b:Lb/h/a/j;

    iget-object p1, p1, Lb/h/a/j;->p:Lb/h/a/h;

    .line 1
    iget-object v0, p1, Lb/h/a/h;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0, p2, v1}, Landroidx/fragment/app/Fragment;->s(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_0
    throw v1
.end method
