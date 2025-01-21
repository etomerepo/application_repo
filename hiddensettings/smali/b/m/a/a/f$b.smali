.class public Lb/m/a/a/f$b;
.super Lb/m/a/a/f$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/m/a/a/f$f;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb/m/a/a/f$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/m/a/a/f$f;-><init>(Lb/m/a/a/f$f;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
