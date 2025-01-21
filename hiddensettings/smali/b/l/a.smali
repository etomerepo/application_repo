.class public final Lb/l/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/l/a$b;,
        Lb/l/a$a;
    }
.end annotation


# instance fields
.field public a:Lb/c/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/b/b<",
            "Ljava/lang/String;",
            "Lb/l/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/os/Bundle;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/c/a/b/b;

    invoke-direct {v0}, Lb/c/a/b/b;-><init>()V

    iput-object v0, p0, Lb/l/a;->a:Lb/c/a/b/b;

    return-void
.end method
