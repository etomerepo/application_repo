.class public Lb/e/k/t$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/e/k/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lb/e/k/t;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lb/e/k/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/e/k/t;-><init>(Lb/e/k/t;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/e/k/t$c;->a:Lb/e/k/t;

    return-void
.end method


# virtual methods
.method public abstract a()Lb/e/k/t;
.end method

.method public b(Lb/e/f/b;)V
    .locals 0

    return-void
.end method

.method public abstract c(Lb/e/f/b;)V
.end method
