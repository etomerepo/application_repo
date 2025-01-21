.class public Lb/h/a/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/h/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/a/h<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/h/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/h/a/h<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/a/f;->a:Lb/h/a/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/h/a/f;->a:Lb/h/a/h;

    iget-object v0, v0, Lb/h/a/h;->f:Lb/h/a/j;

    invoke-virtual {v0}, Lb/h/a/j;->a0()V

    return-void
.end method
