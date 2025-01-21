.class public Lb/e/f/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/e/f/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/e/f/j;->f([Lb/e/h/b$f;I)Lb/e/h/b$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/e/f/j$b<",
        "Lb/e/h/b$f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lb/e/f/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lb/e/h/b$f;

    .line 1
    iget p1, p1, Lb/e/h/b$f;->c:I

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lb/e/h/b$f;

    .line 1
    iget-boolean p1, p1, Lb/e/h/b$f;->d:Z

    return p1
.end method
