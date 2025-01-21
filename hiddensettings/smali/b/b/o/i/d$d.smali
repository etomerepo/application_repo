.class public Lb/b/o/i/d$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/o/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lb/b/p/m0;

.field public final b:Lb/b/o/i/g;

.field public final c:I


# direct methods
.method public constructor <init>(Lb/b/p/m0;Lb/b/o/i/g;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/o/i/d$d;->a:Lb/b/p/m0;

    iput-object p2, p0, Lb/b/o/i/d$d;->b:Lb/b/o/i/g;

    iput p3, p0, Lb/b/o/i/d$d;->c:I

    return-void
.end method
