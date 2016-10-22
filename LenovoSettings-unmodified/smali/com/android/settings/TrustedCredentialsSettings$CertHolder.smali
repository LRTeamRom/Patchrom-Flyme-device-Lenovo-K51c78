.class Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

.field private final mAlias:Ljava/lang/String;

.field private mDeleted:Z

.field private final mSslCert:Lcom/android/settings/SslCertificate;

.field private final mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final mSubjectPrimary:Ljava/lang/String;

.field private final mSubjectSecondary:Ljava/lang/String;

.field private final mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field private final mX509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method private constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p1, "store"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p2, "adapter"    # Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    .param p3, "tab"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "x509Cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 377
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    .line 378
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 379
    iput-object p4, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    .line 380
    iput-object p5, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 382
    new-instance v3, Lcom/android/settings/SslCertificate;

    invoke-direct {v3, p5}, Lcom/android/settings/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSslCert:Lcom/android/settings/SslCertificate;

    .line 384
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSslCert:Lcom/android/settings/SslCertificate;

    invoke-virtual {v3}, Lcom/android/settings/SslCertificate;->getIssuedTo()Lcom/android/settings/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "cn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSslCert:Lcom/android/settings/SslCertificate;

    invoke-virtual {v3}, Lcom/android/settings/SslCertificate;->getIssuedTo()Lcom/android/settings/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "o":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSslCert:Lcom/android/settings/SslCertificate;

    invoke-virtual {v3}, Lcom/android/settings/SslCertificate;->getIssuedTo()Lcom/android/settings/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "ou":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 391
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 392
    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 393
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    .line 407
    :goto_0
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    iget-object v5, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    # invokes: Lcom/android/settings/TrustedCredentialsSettings$Tab;->deleted(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z
    invoke-static {v3, v4, v5}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2500(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    .line 408
    return-void

    .line 395
    :cond_0
    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 396
    iput-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 400
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 401
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 403
    :cond_2
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSslCert:Lcom/android/settings/SslCertificate;

    invoke-virtual {v3}, Lcom/android/settings/SslCertificate;->getIssuedTo()Lcom/android/settings/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 404
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p2, "x1"    # Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    .param p3, "x2"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/security/cert/X509Certificate;
    .param p6, "x5"    # Lcom/android/settings/TrustedCredentialsSettings$1;

    .prologue
    .line 359
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/SslCertificate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSslCert:Lcom/android/settings/SslCertificate;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 3
    .param p1, "o"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 411
    .local v0, "primary":I
    if-eqz v0, :cond_0

    .line 414
    .end local v0    # "primary":I
    :goto_0
    return v0

    .restart local v0    # "primary":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 359
    check-cast p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->compareTo(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 417
    instance-of v1, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    if-nez v1, :cond_0

    .line 418
    const/4 v1, 0x0

    .line 421
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 420
    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 421
    .local v0, "other":Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method