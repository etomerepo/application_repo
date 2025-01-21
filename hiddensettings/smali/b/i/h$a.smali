.class public Lb/i/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lb/i/d$b;

.field public b:Lb/i/e;


# direct methods
.method public constructor <init>(Lb/i/f;Lb/i/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lb/i/j;->d(Ljava/lang/Object;)Lb/i/e;

    move-result-object p1

    iput-object p1, p0, Lb/i/h$a;->b:Lb/i/e;

    iput-object p2, p0, Lb/i/h$a;->a:Lb/i/d$b;

    return-void
.end method


# virtual methods
.method public a(Lb/i/g;Lb/i/d$a;)V
    .locals 2

    invoke-static {p2}, Lb/i/h;->c(Lb/i/d$a;)Lb/i/d$b;

    move-result-object v0

    iget-object v1, p0, Lb/i/h$a;->a:Lb/i/d$b;

    invoke-static {v1, v0}, Lb/i/h;->e(Lb/i/d$b;Lb/i/d$b;)Lb/i/d$b;

    move-result-object v1

    iput-object v1, p0, Lb/i/h$a;->a:Lb/i/d$b;

    iget-object v1, p0, Lb/i/h$a;->b:Lb/i/e;

    invoke-interface {v1, p1, p2}, Lb/i/e;->d(Lb/i/g;Lb/i/d$a;)V

    iput-object v0, p0, Lb/i/h$a;->a:Lb/i/d$b;

    return-void
.end method
