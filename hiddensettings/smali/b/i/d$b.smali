.class public final enum Lb/i/d$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/i/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/i/d$b;

.field public static final enum c:Lb/i/d$b;

.field public static final enum d:Lb/i/d$b;

.field public static final enum e:Lb/i/d$b;

.field public static final enum f:Lb/i/d$b;

.field public static final synthetic g:[Lb/i/d$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lb/i/d$b;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/i/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/i/d$b;->b:Lb/i/d$b;

    new-instance v0, Lb/i/d$b;

    const-string v1, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/i/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/i/d$b;->c:Lb/i/d$b;

    new-instance v0, Lb/i/d$b;

    const-string v1, "CREATED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lb/i/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/i/d$b;->d:Lb/i/d$b;

    new-instance v0, Lb/i/d$b;

    const-string v1, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lb/i/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/i/d$b;->e:Lb/i/d$b;

    new-instance v0, Lb/i/d$b;

    const-string v1, "RESUMED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lb/i/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/i/d$b;->f:Lb/i/d$b;

    const/4 v1, 0x5

    new-array v1, v1, [Lb/i/d$b;

    sget-object v7, Lb/i/d$b;->b:Lb/i/d$b;

    aput-object v7, v1, v2

    sget-object v2, Lb/i/d$b;->c:Lb/i/d$b;

    aput-object v2, v1, v3

    sget-object v2, Lb/i/d$b;->d:Lb/i/d$b;

    aput-object v2, v1, v4

    sget-object v2, Lb/i/d$b;->e:Lb/i/d$b;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lb/i/d$b;->g:[Lb/i/d$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/i/d$b;
    .locals 1

    const-class v0, Lb/i/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/i/d$b;

    return-object p0
.end method

.method public static values()[Lb/i/d$b;
    .locals 1

    sget-object v0, Lb/i/d$b;->g:[Lb/i/d$b;

    invoke-virtual {v0}, [Lb/i/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/i/d$b;

    return-object v0
.end method
