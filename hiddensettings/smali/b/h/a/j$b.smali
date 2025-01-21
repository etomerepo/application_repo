.class public Lb/h/a/j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/a/j;
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

    iput-object p1, p0, Lb/h/a/j$b;->b:Lb/h/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lb/h/a/j$b;->b:Lb/h/a/j;

    invoke-virtual {v0}, Lb/h/a/j;->L()Z

    return-void
.end method
