.class public Lb/b/m/a/a$d;
.super Lb/b/m/a/a$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/m/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lb/m/a/a/b;


# direct methods
.method public constructor <init>(Lb/m/a/a/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/b/m/a/a$g;-><init>(Lb/b/m/a/a$a;)V

    iput-object p1, p0, Lb/b/m/a/a$d;->a:Lb/m/a/a/b;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lb/b/m/a/a$d;->a:Lb/m/a/a/b;

    invoke-virtual {v0}, Lb/m/a/a/b;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lb/b/m/a/a$d;->a:Lb/m/a/a/b;

    invoke-virtual {v0}, Lb/m/a/a/b;->stop()V

    return-void
.end method
