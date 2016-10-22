.class public Lcom/android/settings/inputmethod/SpellCheckerUtils;
.super Ljava/lang/Object;
.source "SpellCheckerUtils.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/settings/inputmethod/SpellCheckerUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SpellCheckerUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentSpellChecker(Landroid/view/textservice/TextServicesManager;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p0, "tsm"    # Landroid/view/textservice/TextServicesManager;

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 38
    .local v0, "retval":Landroid/view/textservice/SpellCheckerInfo;
    return-object v0
.end method

.method public static getEnabledSpellCheckers(Landroid/view/textservice/TextServicesManager;)[Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p0, "tsm"    # Landroid/view/textservice/TextServicesManager;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 45
    .local v0, "retval":[Landroid/view/textservice/SpellCheckerInfo;
    return-object v0
.end method

.method public static getSpellCheckersEnabled(Landroid/view/textservice/TextServicesManager;)Z
    .locals 1
    .param p0, "tsm"    # Landroid/view/textservice/TextServicesManager;

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public static setCurrentSpellChecker(Landroid/view/textservice/TextServicesManager;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0
    .param p0, "tsm"    # Landroid/view/textservice/TextServicesManager;
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    .line 32
    return-void
.end method

.method public static setSpellCheckersEnabled(Landroid/view/textservice/TextServicesManager;Z)V
    .locals 0
    .param p0, "tsm"    # Landroid/view/textservice/TextServicesManager;
    .param p1, "enable"    # Z

    .prologue
    .line 27
    return-void
.end method
