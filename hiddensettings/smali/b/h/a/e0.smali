.class public Lb/h/a/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/g;


# instance fields
.field public b:Lb/i/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/h/a/e0;->b:Lb/i/h;

    return-void
.end method


# virtual methods
.method public a()Lb/i/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/a/e0;->b:Lb/i/h;

    if-nez v0, :cond_0

    new-instance v0, Lb/i/h;

    invoke-direct {v0, p0}, Lb/i/h;-><init>(Lb/i/g;)V

    iput-object v0, p0, Lb/h/a/e0;->b:Lb/i/h;

    .line 2
    :cond_0
    iget-object v0, p0, Lb/h/a/e0;->b:Lb/i/h;

    return-object v0
.end method
