.class public abstract Lb/j/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lb/i/g;)Lb/j/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/i/g;",
            ":",
            "Lb/i/t;",
            ">(TT;)",
            "Lb/j/a/a;"
        }
    .end annotation

    new-instance v0, Lb/j/a/b;

    move-object v1, p0

    check-cast v1, Lb/i/t;

    invoke-interface {v1}, Lb/i/t;->g()Lb/i/s;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/j/a/b;-><init>(Lb/i/g;Lb/i/s;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
