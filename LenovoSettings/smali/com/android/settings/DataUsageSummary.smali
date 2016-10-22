.class public Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.super Lcom/flyme/deviceoriginalsettings/HighlightingFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$UidDetailTask;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleEditorFragment;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppDetailsFragment;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleChangeItem;,
        Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field private static final DATA_USAGE_CYCLE_KEY:Ljava/lang/String; = "data_usage_cycle"

.field private static final DATA_USAGE_DISABLE_MOBILE_LIMIT_KEY:Ljava/lang/String; = "data_usage_disable_mobile_limit"

.field private static final DATA_USAGE_ENABLE_MOBILE_KEY:Ljava/lang/String; = "data_usage_enable_mobile"

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOADER_SUMMARY:I = 0x3

.field private static final LOGD:Z = false

.field private static final PREF_FILE:Ljava/lang/String; = "data_usage"

.field private static final PREF_SHOW_ETHERNET:Ljava/lang/String; = "show_ethernet"

.field private static final PREF_SHOW_WIFI:Ljava/lang/String; = "show_wifi"

.field private static final TAB_3G:Ljava/lang/String; = "3g"

.field private static final TAB_4G:Ljava/lang/String; = "4g"

.field private static final TAB_ETHERNET:Ljava/lang/String; = "ethernet"

.field private static final TAB_MOBILE:Ljava/lang/String; = "mobile"

.field private static final TAB_WIFI:Ljava/lang/String; = "wifi"

.field private static final TAG:Ljava/lang/String; = "DataUsage"

.field private static final TAG_APP_DETAILS:Ljava/lang/String; = "appDetails"

.field private static final TAG_CONFIRM_APP_RESTRICT:Ljava/lang/String; = "confirmAppRestrict"

.field private static final TAG_CONFIRM_DATA_DISABLE:Ljava/lang/String; = "confirmDataDisable"

.field private static final TAG_CONFIRM_LIMIT:Ljava/lang/String; = "confirmLimit"

.field private static final TAG_CONFIRM_RESTRICT:Ljava/lang/String; = "confirmRestrict"

.field private static final TAG_CYCLE_EDITOR:Ljava/lang/String; = "cycleEditor"

.field private static final TAG_DENIED_RESTRICT:Ljava/lang/String; = "deniedRestrict"

.field private static final TAG_LIMIT_EDITOR:Ljava/lang/String; = "limitEditor"

.field private static final TAG_WARNING_EDITOR:Ljava/lang/String; = "warningEditor"

.field private static final TEST_ANIM:Z = false

.field private static final TEST_RADIOS:Z = false

.field private static final TEST_RADIOS_PROP:Ljava/lang/String; = "test.radios"

.field private static final TEST_SUBSCRIBER_PROP:Ljava/lang/String; = "test.subscriberid"

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppRestrict:Landroid/widget/Switch;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mAppTotal:Landroid/widget/TextView;

.field private mBinding:Z

.field private mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

.field private mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/flyme/deviceoriginalsettings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mCurrentApp:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSummary:Landroid/widget/TextView;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledSupported:Z

.field private mDataEnabledView:Landroid/view/View;

.field private mDisableAtLimit:Landroid/widget/Switch;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitSupported:Z

.field private mDisableAtLimitView:Landroid/view/View;

.field private mDisclaimer:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMenuShowEthernet:Landroid/view/MenuItem;

.field private mMenuShowWifi:Landroid/view/MenuItem;

.field private mMenuSimCards:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1425
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/HighlightingFragment;-><init>()V

    .line 207
    iput v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mInsetSide:I

    .line 242
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowWifi:Z

    .line 243
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowEthernet:Z

    .line 248
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentApp:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .line 254
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 255
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 687
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$3;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 703
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$4;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1101
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$6;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 1125
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$7;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1140
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$8;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1157
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$9;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1174
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1277
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$11;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1308
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1363
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$13;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartListener:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2270
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$1000(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mUidDetailProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$1700(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Lcom/flyme/deviceoriginalsettings/net/ChartData;)Lcom/flyme/deviceoriginalsettings/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    .param p1, "x1"    # Lcom/flyme/deviceoriginalsettings/net/ChartData;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$2700(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/LayoutInflater;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 151
    invoke-static {p0, p1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2802(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;)Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    .param p1, "x1"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentApp:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    return-object v0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 634
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 638
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 639
    return-object v0
.end method

.method private buildLimitedNetworksList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2454
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2457
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2459
    .local v1, "limited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 2460
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 2461
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2462
    .local v2, "subscriberId":Ljava/lang/String;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2463
    const v4, 0x7f0c0b24

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2465
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2466
    const v4, 0x7f0c0b23

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2468
    :cond_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2469
    const v4, 0x7f0c0b22

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    .end local v2    # "subscriberId":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2474
    const v4, 0x7f0c0301

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2476
    :cond_3
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2477
    const v4, 0x7f0c0b20

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2480
    :cond_4
    return-object v1
.end method

.method private buildLimitedNetworksString()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2438
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    .line 2441
    .local v0, "limited":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2442
    const v1, 0x7f0c0b25

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2445
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 699
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 2247
    const-string v2, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2248
    .local v0, "template":Landroid/net/NetworkTemplate;
    if-nez v0, :cond_0

    .line 2262
    :goto_0
    return-object v1

    .line 2252
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2258
    :pswitch_0
    const-string v1, "mobile"

    goto :goto_0

    .line 2254
    :pswitch_1
    const-string v1, "3g"

    goto :goto_0

    .line 2256
    :pswitch_2
    const-string v1, "4g"

    goto :goto_0

    .line 2260
    :pswitch_3
    const-string v1, "wifi"

    goto :goto_0

    .line 2252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 619
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 631
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 624
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 625
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 627
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 628
    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 629
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 630
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 1429
    const v8, 0x10010

    .line 1431
    .local v8, "flags":I
    sget-object v9, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 1432
    :try_start_0
    sget-object v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1433
    sget-object v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 1435
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1358
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1359
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1360
    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string v2, "test.subscriberid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 967
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentApp:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->key:I

    .line 968
    .local v0, "uid":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 969
    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    .prologue
    .line 2428
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2347
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 2335
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2336
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2339
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2370
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2371
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 2415
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2418
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 2419
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2420
    invoke-virtual {p0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 2407
    const v2, 0x7f040076

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2408
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2410
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2411
    return-object v0
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "insetSide"    # I

    .prologue
    .line 2488
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2489
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2493
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2494
    .local v2, "stub":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2495
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2497
    new-instance v3, Lcom/flyme/deviceoriginalsettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/flyme/deviceoriginalsettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2498
    new-instance v3, Lcom/flyme/deviceoriginalsettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/flyme/deviceoriginalsettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2499
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentApp:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 954
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 957
    :goto_0
    return v1

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 934
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1338
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1339
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1341
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v1

    .line 1343
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 948
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 976
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentApp:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->key:I

    .line 977
    .local v0, "uid":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 979
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 980
    return-void

    .line 977
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 942
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 943
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 944
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updatePolicy(Z)V

    .line 945
    return-void
.end method

.method private setMobilePolicySplit(Z)V
    .locals 3
    .param p1, "split"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1351
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1353
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    .line 1355
    :cond_0
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 919
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 920
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updatePolicy(Z)V

    .line 921
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 911
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 912
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updatePolicy(Z)V

    .line 913
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 2515
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2516
    .local v0, "summary":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2517
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2518
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 2506
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2507
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2508
    return-void
.end method

.method private updateAppDetail()V
    .locals 23

    .prologue
    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 802
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 803
    .local v17, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 805
    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentApp:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->key:I

    move/from16 v19, v0

    .line 822
    .local v19, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mUidDetailProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/flyme/deviceoriginalsettings/net/UidDetail;

    move-result-object v7

    .line 823
    .local v7, "detail":Lcom/flyme/deviceoriginalsettings/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/flyme/deviceoriginalsettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 827
    const/16 v18, 0x0

    .line 828
    .local v18, "title":Landroid/view/View;
    iget-object v0, v7, Lcom/flyme/deviceoriginalsettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 829
    iget-object v0, v7, Lcom/flyme/deviceoriginalsettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v14, v0

    .line 830
    .local v14, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v14, :cond_2

    .line 831
    iget-object v0, v7, Lcom/flyme/deviceoriginalsettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v11, v20, v8

    .line 832
    .local v11, "label":Ljava/lang/CharSequence;
    iget-object v0, v7, Lcom/flyme/deviceoriginalsettings/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v5, v20, v8

    .line 833
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    const v20, 0x7f040024

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 834
    const v20, 0x7f0b006d

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 835
    .local v3, "appTitle":Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 830
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 809
    .end local v3    # "appTitle":Landroid/widget/TextView;
    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    .end local v7    # "detail":Lcom/flyme/deviceoriginalsettings/net/UidDetail;
    .end local v8    # "i":I
    .end local v11    # "label":Ljava/lang/CharSequence;
    .end local v14    # "n":I
    .end local v18    # "title":Landroid/view/View;
    .end local v19    # "uid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 905
    :goto_1
    return-void

    .line 840
    .restart local v7    # "detail":Lcom/flyme/deviceoriginalsettings/net/UidDetail;
    .restart local v18    # "title":Landroid/view/View;
    .restart local v19    # "uid":I
    :cond_1
    const v20, 0x7f040024

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 841
    const v20, 0x7f0b006d

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 842
    .restart local v3    # "appTitle":Landroid/widget/TextView;
    iget-object v0, v7, Lcom/flyme/deviceoriginalsettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v0, v7, Lcom/flyme/deviceoriginalsettings/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 848
    .end local v3    # "appTitle":Landroid/widget/TextView;
    :cond_2
    if-eqz v18, :cond_4

    .line 849
    const v20, 0x7f0b006e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    .line 855
    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 856
    .local v16, "packageNames":[Ljava/lang/String;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_6

    .line 857
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.category.DEFAULT"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    const/4 v13, 0x0

    .line 862
    .local v13, "matchFound":Z
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v12, :cond_3

    aget-object v15, v4, v9

    .line 863
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 865
    const/4 v13, 0x1

    .line 870
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$5;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 891
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateDetailData()V

    .line 893
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0c0b2a

    invoke-static/range {v20 .. v21}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0c0b2b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    .line 851
    .end local v16    # "packageNames":[Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 862
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "matchFound":Z
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "packageNames":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 886
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 903
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 719
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mBinding:Z

    .line 720
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAdded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 790
    :goto_0
    return-void

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 725
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "currentTab":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 728
    .local v2, "isOwner":Z
    :goto_1
    if-nez v1, :cond_2

    .line 729
    const-string v3, "DataUsage"

    const-string v4, "no tab selected; hiding body"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .end local v2    # "isOwner":Z
    :cond_1
    move v2, v4

    .line 726
    goto :goto_1

    .line 733
    .restart local v2    # "isOwner":Z
    :cond_2
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 736
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 742
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 743
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 747
    const-string v3, "mobile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 748
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0c0b26

    invoke-static {v3, v5}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 749
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0c0b1d

    invoke-static {v3, v5}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 750
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 783
    :goto_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentApp:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    invoke-static {v6, v7}, Lcom/flyme/deviceoriginalsettings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 787
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 789
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mBinding:Z

    goto :goto_0

    .line 752
    :cond_3
    const-string v3, "3g"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 753
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0c0b27

    invoke-static {v3, v5}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 754
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0c0b1f

    invoke-static {v3, v5}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 756
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 758
    :cond_4
    const-string v3, "4g"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 759
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v5, 0x7f0c0b28

    invoke-static {v3, v5}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 760
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v5, 0x7f0c0b1e

    invoke-static {v3, v5}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 762
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 764
    :cond_5
    const-string v3, "wifi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 766
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 767
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 768
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 770
    :cond_6
    const-string v3, "ethernet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 772
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 773
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 774
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 777
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tab: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 25
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;

    .line 1032
    .local v17, "previousItem":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->clear()V

    .line 1034
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1036
    .local v5, "context":Landroid/content/Context;
    const-wide v20, 0x7fffffffffffffffL

    .line 1037
    .local v20, "historyStart":J
    const-wide/high16 v18, -0x8000000000000000L

    .line 1038
    .local v18, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

    if-eqz v4, :cond_0

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

    iget-object v4, v4, Lcom/flyme/deviceoriginalsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v20

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

    iget-object v4, v4, Lcom/flyme/deviceoriginalsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v18

    .line 1043
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1044
    .local v22, "now":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v20, v10

    if-nez v4, :cond_1

    .line 1045
    move-wide/from16 v20, v22

    .line 1047
    :cond_1
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v4, v18, v10

    if-nez v4, :cond_2

    .line 1048
    const-wide/16 v10, 0x1

    add-long v18, v22, v10

    .line 1051
    :cond_2
    const/16 v16, 0x0

    .line 1052
    .local v16, "hasCycles":Z
    if-eqz p1, :cond_4

    .line 1054
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1057
    .local v8, "cycleEnd":J
    :goto_0
    cmp-long v4, v8, v20

    if-lez v4, :cond_3

    .line 1058
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1059
    .local v6, "cycleStart":J
    const-string v4, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generating cs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to ce="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " waiting for hs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1062
    move-wide v8, v6

    .line 1063
    const/16 v16, 0x1

    .line 1064
    goto :goto_0

    .line 1067
    .end local v6    # "cycleStart":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1070
    .end local v8    # "cycleEnd":J
    :cond_4
    if-nez v16, :cond_6

    .line 1072
    move-wide/from16 v8, v18

    .line 1073
    .restart local v8    # "cycleEnd":J
    :goto_1
    cmp-long v4, v8, v20

    if-lez v4, :cond_5

    .line 1074
    const-wide v10, 0x90321000L

    sub-long v6, v8, v10

    .line 1075
    .restart local v6    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1076
    move-wide v8, v6

    .line 1077
    goto :goto_1

    .line 1079
    .end local v6    # "cycleStart":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1083
    .end local v8    # "cycleEnd":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 1084
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;)I

    move-result v13

    .line 1085
    .local v13, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v13}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;

    .line 1090
    .local v24, "selectedItem":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1091
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-interface/range {v10 .. v15}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1099
    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;
    :goto_2
    return-void

    .line 1094
    .restart local v13    # "position":I
    .restart local v24    # "selectedItem":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateDetailData()V

    goto :goto_2

    .line 1097
    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateDetailData()V

    goto :goto_2
.end method

.method private updateDetailData()V
    .locals 26

    .prologue
    .line 1218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    .line 1219
    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    .line 1220
    .local v6, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1222
    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1224
    .local v2, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 1225
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

    iget-object v3, v3, Lcom/flyme/deviceoriginalsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_2

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

    iget-object v3, v3, Lcom/flyme/deviceoriginalsettings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1228
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v12, v14

    .line 1229
    .local v20, "defaultBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

    iget-object v3, v3, Lcom/flyme/deviceoriginalsettings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1230
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v12, v14

    .line 1231
    .local v22, "foregroundBytes":J
    add-long v24, v20, v22

    .line 1233
    .local v24, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

    iget-object v11, v3, Lcom/flyme/deviceoriginalsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1258
    .end local v20    # "defaultBytes":J
    .end local v22    # "foregroundBytes":J
    .end local v24    # "totalBytes":J
    :goto_0
    if-eqz v10, :cond_4

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v12, v14

    .line 1259
    .restart local v24    # "totalBytes":J
    :goto_1
    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 1260
    .local v19, "totalPhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    const-string v3, "mobile"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "3g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "4g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1264
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1275
    return-void

    .line 1247
    .end local v19    # "totalPhrase":Ljava/lang/String;
    .end local v24    # "totalBytes":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

    if-eqz v3, :cond_3

    .line 1248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;

    iget-object v11, v3, Lcom/flyme/deviceoriginalsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1251
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v4, v5, v6, v7}, Lcom/flyme/deviceoriginalsettings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1258
    :cond_4
    const-wide/16 v24, 0x0

    goto :goto_1

    .line 1267
    .restart local v19    # "totalPhrase":Ljava/lang/String;
    .restart local v24    # "totalBytes":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1270
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateMenuTitles()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0c0b0c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 539
    :goto_0
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0c0b0f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 545
    :goto_1
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0c0b11

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 550
    :goto_2
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0c0b0b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0c0b0e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0c0b10

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 12
    .param p1, "refreshCycle"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 987
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 988
    .local v0, "dataEnabledVisible":Z
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 990
    .local v1, "disableAtLimitVisible":Z
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 991
    const/4 v0, 0x0

    .line 992
    const/4 v1, 0x0

    .line 996
    :cond_0
    const-string v6, "mobile"

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 997
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mBinding:Z

    .line 998
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 999
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mBinding:Z

    .line 1002
    :cond_1
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 1003
    .local v2, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1004
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    if-eqz v2, :cond_4

    iget-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1005
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1006
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    invoke-virtual {v3, v2}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1015
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    if-eqz p1, :cond_3

    .line 1020
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1022
    :cond_3
    return-void

    :cond_4
    move v3, v4

    .line 1004
    goto :goto_0

    .line 1011
    :cond_5
    const/4 v1, 0x0

    .line 1012
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_1

    :cond_6
    move v3, v5

    .line 1015
    goto :goto_2

    :cond_7
    move v4, v5

    .line 1016
    goto :goto_3
.end method

.method private updateTabs()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 648
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 649
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 651
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v1

    .line 652
    .local v1, "mobileSplit":Z
    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 653
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "3g"

    const v8, 0x7f0c0b23

    invoke-direct {p0, v7, v8}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 654
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "4g"

    const v8, 0x7f0c0b22

    invoke-direct {p0, v7, v8}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 658
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v6, :cond_1

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 659
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "wifi"

    const v8, 0x7f0c0301

    invoke-direct {p0, v7, v8}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 661
    :cond_1
    iget-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 662
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "ethernet"

    const v8, 0x7f0c0b20

    invoke-direct {p0, v7, v8}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 665
    :cond_2
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    if-nez v6, :cond_5

    move v3, v4

    .line 666
    .local v3, "noTabs":Z
    :goto_1
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    if-le v6, v4, :cond_6

    move v2, v4

    .line 667
    .local v2, "multipleTabs":Z
    :goto_2
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_7

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 668
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 669
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 671
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateBody()V

    .line 675
    :goto_4
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 682
    :cond_3
    :goto_5
    return-void

    .line 655
    .end local v2    # "multipleTabs":Z
    .end local v3    # "noTabs":Z
    :cond_4
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 656
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "mobile"

    const v8, 0x7f0c0b21

    invoke-direct {p0, v7, v8}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    :cond_5
    move v3, v5

    .line 665
    goto :goto_1

    .restart local v3    # "noTabs":Z
    :cond_6
    move v2, v5

    .line 666
    goto :goto_2

    .line 667
    .restart local v2    # "multipleTabs":Z
    :cond_7
    const/16 v5, 0x8

    goto :goto_3

    .line 673
    :cond_8
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    .line 676
    :cond_9
    if-eqz v3, :cond_3

    .line 678
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateBody()V

    goto :goto_5
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2382
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 2383
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 2386
    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2388
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2399
    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2391
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 2392
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2395
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    .line 2399
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 270
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 273
    .local v0, "context":Landroid/content/Context;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 275
    const-string v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 277
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 278
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 280
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "data_usage"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 282
    new-instance v2, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v2, v3}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    .line 283
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->read()V

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    const-string v2, "DataUsage"

    const-string v3, "No bandwidth control; leaving"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_wifi"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowWifi:Z

    .line 302
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_ethernet"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowEthernet:Z

    .line 305
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    iput-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowWifi:Z

    .line 307
    iput-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowEthernet:Z

    .line 310
    :cond_1
    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 311
    return-void

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DataUsage"

    const-string v3, "No bandwidth control; leaving"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 297
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 298
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 479
    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 480
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0b0023

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 317
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 318
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f04002e

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 320
    .local v3, "view":Landroid/view/View;
    new-instance v4, Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    invoke-direct {v4, v0}, Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mUidDetailProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    .line 322
    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 323
    const v4, 0x7f0b0084

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 324
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 325
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 330
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v4

    const/high16 v7, 0x2000000

    if-ne v4, v7, :cond_1

    move v1, v5

    .line 332
    .local v1, "shouldInset":Z
    :goto_0
    iput v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mInsetSide:I

    .line 335
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3, v4, v6}, Lcom/flyme/deviceoriginalsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 337
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 338
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 340
    const v4, 0x7f04002c

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 341
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 343
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7, v10, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 344
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v10, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 345
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 347
    iget v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mInsetSide:I

    if-lez v4, :cond_0

    .line 349
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mInsetSide:I

    invoke-static {v4, v7}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 350
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mInsetSide:I

    iget v8, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v4, v7, v6, v8, v6}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 355
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b0080

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 357
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b0081

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 359
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 360
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 361
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 362
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 363
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const-string v7, "data_usage_enable_mobile"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 365
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 366
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 367
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    .line 371
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 372
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 373
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 374
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const-string v7, "data_usage_disable_mobile_limit"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 376
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 377
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 378
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    const v4, 0x7f04002a

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 382
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const-string v7, "data_usage_cycle"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 383
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f0b0077

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 384
    new-instance v4, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    .line 385
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 386
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 387
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f0b0078

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    .line 388
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b0070

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    .line 392
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartListener:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v4, v7}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->setListener(Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 393
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    invoke-virtual {v4, v10}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 397
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0b0079

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 398
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b007a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 399
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b007b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 400
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b007c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 401
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b007d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 402
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b007f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 404
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0b007e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 406
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    .line 407
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 408
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 409
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-static {p1, v4, v6}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 410
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 411
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 412
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0b0082

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    .line 417
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 418
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0b0083

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    .line 420
    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 421
    .local v2, "um":Landroid/os/UserManager;
    new-instance v4, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mUidDetailProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    iget v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v4, v2, v5, v6}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;-><init>(Landroid/os/UserManager;Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;

    .line 422
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 423
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mAdapter:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 425
    return-object v3

    .end local v1    # "shouldInset":Z
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_1
    move v1, v6

    .line 330
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 602
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 603
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 605
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mUidDetailProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;->clearCache()V

    .line 606
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mUidDetailProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    .line 608
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 610
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/HighlightingFragment;->onDestroy()V

    .line 611
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 554
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v9, v6

    .line 597
    :goto_0
    :pswitch_0
    return v9

    .line 556
    :pswitch_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_0

    move v8, v9

    .line 557
    .local v8, "restrictBackground":Z
    :goto_1
    if-eqz v8, :cond_1

    .line 558
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    goto :goto_0

    .end local v8    # "restrictBackground":Z
    :cond_0
    move v8, v6

    .line 556
    goto :goto_1

    .line 561
    .restart local v8    # "restrictBackground":Z
    :cond_1
    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 566
    .end local v8    # "restrictBackground":Z
    :pswitch_2
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowWifi:Z

    if-nez v1, :cond_2

    move v6, v9

    :cond_2
    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowWifi:Z

    .line 567
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 568
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateMenuTitles()V

    .line 569
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 573
    :pswitch_3
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowEthernet:Z

    if-nez v1, :cond_3

    move v6, v9

    :cond_3
    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowEthernet:Z

    .line 574
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 575
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateMenuTitles()V

    .line 576
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 584
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v7, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 591
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 592
    .local v0, "sa":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    const-class v1, Lcom/flyme/deviceoriginalsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0b42

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0262
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 484
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 485
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 486
    .local v0, "appDetailMode":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-nez v8, :cond_1

    move v4, v6

    .line 488
    .local v4, "isOwner":Z
    :goto_0
    const v8, 0x7f0b0263

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    .line 489
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 490
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    move v8, v6

    :goto_1
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 495
    :goto_2
    const v8, 0x7f0b0264

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    .line 496
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 497
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-nez v0, :cond_4

    move v8, v6

    :goto_3
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 502
    :goto_4
    const v8, 0x7f0b0262

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 503
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    move v8, v6

    :goto_5
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 506
    const v8, 0x7f0b0265

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 507
    .local v5, "metered":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 508
    :cond_0
    if-nez v0, :cond_7

    move v8, v6

    :goto_6
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 514
    :goto_7
    const v8, 0x7f0b0266

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    .line 515
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 517
    const v8, 0x7f0b0267

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    .line 518
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v0, :cond_9

    if-eqz v4, :cond_9

    :goto_8
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 521
    const v6, 0x7f0b0268

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 523
    .local v2, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0bbe

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "helpUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 524
    invoke-static {v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 529
    :goto_9
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateMenuTitles()V

    .line 530
    return-void

    .end local v2    # "help":Landroid/view/MenuItem;
    .end local v3    # "helpUrl":Ljava/lang/String;
    .end local v4    # "isOwner":Z
    .end local v5    # "metered":Landroid/view/MenuItem;
    :cond_1
    move v4, v7

    .line 486
    goto/16 :goto_0

    .restart local v4    # "isOwner":Z
    :cond_2
    move v8, v7

    .line 490
    goto/16 :goto_1

    .line 492
    :cond_3
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_4
    move v8, v7

    .line 497
    goto/16 :goto_3

    .line 499
    :cond_5
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_6
    move v8, v7

    .line 503
    goto :goto_5

    .restart local v5    # "metered":Landroid/view/MenuItem;
    :cond_7
    move v8, v7

    .line 508
    goto :goto_6

    .line 510
    :cond_8
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_9
    move v6, v7

    .line 518
    goto :goto_8

    .line 526
    .restart local v2    # "help":Landroid/view/MenuItem;
    .restart local v3    # "helpUrl":Ljava/lang/String;
    :cond_a
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 443
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/HighlightingFragment;->onResume()V

    .line 445
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$1;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 454
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$2;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 475
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 430
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 433
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 434
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 438
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateTabs()V

    .line 439
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 962
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 963
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateMenuTitles()V

    .line 964
    return-void
.end method
