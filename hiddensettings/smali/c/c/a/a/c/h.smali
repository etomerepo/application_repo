.class public final Lc/c/a/a/c/h;
.super Lc/c/a/a/c/g;
.source ""


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lc/c/a/a/c/g;-><init>([B)V

    iput-object p1, p0, Lc/c/a/a/c/h;->b:[B

    return-void
.end method


# virtual methods
.method public final f()[B
    .locals 1

    iget-object v0, p0, Lc/c/a/a/c/h;->b:[B

    return-object v0
.end method
