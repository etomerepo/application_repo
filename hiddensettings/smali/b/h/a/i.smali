.class public abstract Lb/h/a/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Lb/h/a/g;


# instance fields
.field public b:Lb/h/a/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/h/a/g;

    invoke-direct {v0}, Lb/h/a/g;-><init>()V

    sput-object v0, Lb/h/a/i;->c:Lb/h/a/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/h/a/i;->b:Lb/h/a/g;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract b()Z
.end method
