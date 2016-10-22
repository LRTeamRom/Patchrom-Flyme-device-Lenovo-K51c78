.class public Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;,
        Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;,
        Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;,
        Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;
    }
.end annotation


# static fields
.field static final CHART_DATA_BIN_MASK:I = -0x10000

.field static final CHART_DATA_BIN_SHIFT:I = 0x10

.field static final CHART_DATA_X_MASK:I = 0xffff

.field static final DEBUG:Z = false

.field static final MONOSPACE:I = 0x3

.field static final NUM_PHONE_SIGNALS:I = 0x7

.field static final SANS:I = 0x1

.field static final SERIF:I = 0x2

.field static final TAG:Ljava/lang/String; = "BatteryHistoryChart"


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field mBatteryBroadcast:Landroid/content/Intent;

.field mBatteryCriticalLevel:I

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field mBatteryLevel:I

.field mBatteryWarnLevel:I

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mBitmap:Landroid/graphics/Bitmap;

.field mCanvas:Landroid/graphics/Canvas;

.field mChargeDurationString:Ljava/lang/String;

.field mChargeDurationStringWidth:I

.field mChargeLabelString:Ljava/lang/String;

.field mChargeLabelStringWidth:I

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mChartMinHeight:I

.field mCpuRunningLabel:Ljava/lang/String;

.field mCpuRunningOffset:I

.field final mCpuRunningPaint:Landroid/graphics/Paint;

.field final mCpuRunningPath:Landroid/graphics/Path;

.field final mDateLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mDateLinePaint:Landroid/graphics/Paint;

.field final mDateLinePath:Landroid/graphics/Path;

.field final mDebugRectPaint:Landroid/graphics/Paint;

.field mDischarging:Z

.field mDrainString:Ljava/lang/String;

.field mDrainStringWidth:I

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mEndDataWallTime:J

.field mEndWallTime:J

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHeaderHeight:I

.field mHeaderTextAscent:I

.field mHeaderTextDescent:I

.field final mHeaderTextPaint:Landroid/text/TextPaint;

.field mHistDataEnd:J

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLastHeight:I

.field mLastWidth:I

.field mLevelBottom:I

.field mLevelLeft:I

.field mLevelOffset:I

.field mLevelRight:I

.field mLevelTop:I

.field mLineWidth:I

.field mMaxPercentLabelString:Ljava/lang/String;

.field mMaxPercentLabelStringWidth:I

.field mMinPercentLabelString:Ljava/lang/String;

.field mMinPercentLabelStringWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStartWallTime:J

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field final mTimeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mTimeRemainPaint:Landroid/graphics/Paint;

.field final mTimeRemainPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 346
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 128
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 129
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    .line 132
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 133
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 135
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    .line 137
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    .line 138
    new-instance v13, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct {v13}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;

    .line 139
    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 140
    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    .line 141
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    .line 143
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 144
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 145
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 146
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 147
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    .line 148
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 149
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 150
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 151
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 152
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    .line 153
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    .line 191
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 192
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 222
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    .line 223
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e003f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e003d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    .line 357
    const/4 v13, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    const/16 v14, 0x80

    const/4 v15, 0x0

    const/16 v16, 0x80

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    const/16 v14, 0x80

    const/16 v15, 0x80

    const/16 v16, 0x80

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    const/16 v14, 0xc0

    const/16 v15, 0x80

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    const v14, -0x312845

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;

    sget-object v14, Lcom/flyme/deviceoriginalsettings/Utils;->BADNESS_COLORS:[I

    invoke-virtual {v13, v14}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    const v14, -0xff6978

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    sget-object v13, Lcom/flyme/deviceoriginalsettings/R$styleable;->BatteryHistoryChart:[I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 386
    .local v2, "a":Landroid/content/res/TypedArray;
    new-instance v9, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v9}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 387
    .local v9, "mainTextAttrs":Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;
    new-instance v7, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v7}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 388
    .local v7, "headTextAttrs":Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v2, v13}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 389
    const/16 v13, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v2, v13}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 391
    const/4 v12, 0x0

    .line 392
    .local v12, "shadowcolor":I
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .local v5, "dy":F
    const/4 v11, 0x0

    .line 394
    .local v11, "r":F
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 395
    .local v10, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 396
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 398
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    .line 395
    :goto_1
    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 400
    :pswitch_1
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 401
    goto :goto_1

    .line 404
    :pswitch_2
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 405
    goto :goto_1

    .line 408
    :pswitch_3
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 409
    goto :goto_1

    .line 412
    :pswitch_4
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 413
    goto :goto_1

    .line 416
    :pswitch_5
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    iput-object v13, v9, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 417
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    iput-object v13, v7, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 421
    :pswitch_6
    iget v13, v9, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v9, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 422
    iget v13, v7, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v7, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    goto :goto_1

    .line 426
    :pswitch_7
    iget v13, v9, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v9, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 427
    iget v13, v7, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v7, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    goto :goto_1

    .line 431
    :pswitch_8
    iget v13, v9, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v9, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    .line 432
    iget v13, v7, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v7, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    goto :goto_1

    .line 436
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 445
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 449
    :pswitch_b
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    goto/16 :goto_1

    .line 454
    .end local v3    # "attr":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 456
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v13}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v13}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 461
    move-object/from16 v0, p0

    iget v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v6, v13, 0x2

    .line 462
    .local v6, "hairlineWidth":I
    const/4 v13, 0x1

    if-ge v6, v13, :cond_1

    .line 463
    const/4 v6, 0x1

    .line 465
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    int-to-float v14, v6

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 466
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/DashPathEffect;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 469
    if-eqz v12, :cond_2

    .line 470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v11, v4, v5, v12}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 471
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v11, v4, v5, v12}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 473
    :cond_2
    return-void

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isDayFirst()Z
    .locals 4

    .prologue
    .line 671
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 673
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 674
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 675
    .local v0, "d":Llibcore/icu/LocaleData;
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    .line 677
    .end local v0    # "d":Llibcore/icu/LocaleData;
    :cond_0
    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method addDateLabel(Ljava/util/Calendar;IIZ)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "isDayFirst"    # Z

    .prologue
    .line 1136
    iget-wide v4, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1137
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1138
    .local v2, "walltimeChange":J
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    new-instance v7, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-int v9, p3, p2

    int-to-long v12, v9

    mul-long/2addr v10, v12

    div-long/2addr v10, v2

    long-to-int v9, v10

    add-int v9, v9, p2

    move/from16 v0, p4

    invoke-direct {v7, v8, v9, p1, v0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    return-void
.end method

.method addTimeLabel(Ljava/util/Calendar;IIZ)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "is24hr"    # Z

    .prologue
    .line 1127
    iget-wide v4, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1128
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1129
    .local v2, "walltimeChange":J
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    new-instance v7, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-int v9, p3, p2

    int-to-long v12, v9

    mul-long/2addr v10, v12

    div-long/2addr v10, v2

    long-to-int v9, v10

    add-int v9, v9, p2

    move/from16 v0, p4

    invoke-direct {v7, v8, v9, p1, v0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    return-void
.end method

.method buildBitmap(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1173
    :goto_0
    return-void

    .line 1169
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 1171
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 1172
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0, p1, p2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    goto :goto_0
.end method

.method drawChart(Landroid/graphics/Canvas;II)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1176
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->isLayoutRtl()Z

    move-result v15

    .line 1177
    .local v15, "layoutRtl":Z
    if-eqz v15, :cond_3

    move/from16 v22, p2

    .line 1178
    .local v22, "textStartX":I
    :goto_0
    if-eqz v15, :cond_4

    const/16 v21, 0x0

    .line 1179
    .local v21, "textEndX":I
    :goto_1
    if-eqz v15, :cond_5

    sget-object v19, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 1180
    .local v19, "textAlignLeft":Landroid/graphics/Paint$Align;
    :goto_2
    if-eqz v15, :cond_6

    sget-object v20, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 1189
    .local v20, "textAlignRight":Landroid/graphics/Paint$Align;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1196
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 1197
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v25, v2, v3

    .line 1198
    .local v25, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v27, v2, v3

    .line 1199
    .local v27, "ytick":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1200
    const/4 v14, 0x0

    .line 1201
    .local v14, "lastX":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_b

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1203
    .local v12, "label":Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    if-nez v11, :cond_7

    .line 1204
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1205
    .local v24, "x":I
    if-gez v24, :cond_1

    .line 1206
    const/16 v24, 0x0

    .line 1211
    :cond_1
    iget-object v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1212
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v27

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1213
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v14, v24, v2

    .line 1201
    :cond_2
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1177
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v14    # "lastX":I
    .end local v19    # "textAlignLeft":Landroid/graphics/Paint$Align;
    .end local v20    # "textAlignRight":Landroid/graphics/Paint$Align;
    .end local v21    # "textEndX":I
    .end local v22    # "textStartX":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    .end local v27    # "ytick":I
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_0

    .restart local v22    # "textStartX":I
    :cond_4
    move/from16 v21, p2

    .line 1178
    goto/16 :goto_1

    .line 1179
    .restart local v21    # "textEndX":I
    :cond_5
    sget-object v19, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto/16 :goto_2

    .line 1180
    .restart local v19    # "textAlignLeft":Landroid/graphics/Paint$Align;
    :cond_6
    sget-object v20, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto/16 :goto_3

    .line 1214
    .restart local v11    # "i":I
    .restart local v12    # "label":Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .restart local v14    # "lastX":I
    .restart local v20    # "textAlignRight":Landroid/graphics/Paint$Align;
    .restart local v25    # "y":I
    .restart local v27    # "ytick":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v11, v2, :cond_8

    .line 1215
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1216
    .restart local v24    # "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int/2addr v2, v14

    move/from16 v0, v24

    if-lt v0, v2, :cond_2

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1220
    .local v17, "nextLabel":Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move/from16 v0, v24

    if-gt v0, v2, :cond_2

    .line 1226
    iget-object v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1227
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v27

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1228
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v14, v24, v2

    .line 1229
    goto :goto_5

    .line 1230
    .end local v17    # "nextLabel":Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v24    # "x":I
    :cond_8
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1231
    .restart local v24    # "x":I
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v2, v2, v24

    move/from16 v0, p2

    if-lt v2, v0, :cond_9

    .line 1232
    add-int/lit8 v2, p2, -0x1

    iget v3, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v24, v2, v3

    .line 1237
    :cond_9
    iget-object v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1238
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v27

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1241
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v14    # "lastX":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    .end local v27    # "ytick":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1242
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v25, v2, v3

    .line 1243
    .restart local v25    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1249
    .end local v25    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    add-int v10, v2, v3

    .line 1250
    .local v10, "headerTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1255
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    div-int/lit8 v18, v2, 0x2

    .line 1256
    .local v18, "stringHalfWidth":I
    if-eqz v15, :cond_c

    .line 1257
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 1259
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x2

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    :goto_6
    add-int v9, v3, v2

    .line 1264
    .local v9, "headerCenter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    sub-int v3, v9, v18

    int-to-float v3, v3

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    move/from16 v0, v21

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1278
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1284
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1290
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_10

    .line 1294
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v2, p3, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v23, v2, v3

    .line 1295
    .local v23, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 1297
    .end local v23    # "top":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1303
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1309
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_13

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1317
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_14

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1325
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1332
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_19

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v8

    .line 1337
    .local v8, "align":Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1338
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_16

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1342
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_17

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1346
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_18

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1350
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1359
    .end local v8    # "align":Landroid/graphics/Paint$Align;
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1361
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_1b

    .line 1362
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    const/16 v2, 0xa

    if-ge v11, v2, :cond_1b

    .line 1363
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v11

    div-int/lit8 v3, v3, 0xa

    add-int v25, v2, v3

    .line 1364
    .restart local v25    # "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v5, v2

    move/from16 v0, v25

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1362
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1259
    .end local v9    # "headerCenter":I
    .end local v11    # "i":I
    .end local v25    # "y":I
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    goto/16 :goto_6

    .line 1372
    .restart local v9    # "headerCenter":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1376
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    move/from16 v0, p2

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1e

    .line 1380
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int v28, v2, v3

    .line 1381
    .local v28, "ytop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move/from16 v26, v0

    .line 1382
    .local v26, "ybottom":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 1383
    .local v13, "lastLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .restart local v11    # "i":I
    :goto_8
    if-ltz v11, :cond_1e

    .line 1385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;

    .line 1386
    .local v12, "label":Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v16, v2, v3

    .line 1387
    .local v16, "left":I
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int v24, v2, v3

    .line 1388
    .restart local v24    # "x":I
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    add-int v2, v2, v24

    if-lt v2, v13, :cond_1d

    .line 1389
    iget v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    sub-int v24, v2, v3

    .line 1390
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v16, v24, v2

    .line 1391
    move/from16 v0, v16

    if-lt v0, v13, :cond_1d

    .line 1384
    :cond_1c
    :goto_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    .line 1396
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_1c

    .line 1400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v28

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v26

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1404
    iget-object v2, v12, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v4, v28, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 1407
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$DateLabel;
    .end local v13    # "lastLeft":I
    .end local v16    # "left":I
    .end local v24    # "x":I
    .end local v26    # "ybottom":I
    .end local v28    # "ytop":I
    :cond_1e
    return-void
.end method

.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "levelh"    # I
    .param p4, "startX"    # I
    .param p5, "y"    # I
    .param p6, "curLevelPath"    # Landroid/graphics/Path;
    .param p7, "lastX"    # I
    .param p8, "lastCharging"    # Z
    .param p9, "lastScreenOn"    # Z
    .param p10, "lastGpsOn"    # Z
    .param p11, "lastWifiRunning"    # Z
    .param p12, "lastCpuRunning"    # Z
    .param p13, "lastPath"    # Landroid/graphics/Path;

    .prologue
    .line 634
    if-eqz p6, :cond_2

    .line 635
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 636
    if-eqz p13, :cond_0

    .line 637
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 639
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 641
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 642
    int-to-float v1, p4

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 643
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 646
    :cond_2
    if-eqz p8, :cond_3

    .line 647
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 649
    :cond_3
    if-eqz p9, :cond_4

    .line 650
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 652
    :cond_4
    if-eqz p10, :cond_5

    .line 653
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 655
    :cond_5
    if-eqz p11, :cond_6

    .line 656
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 658
    :cond_6
    if-eqz p12, :cond_7

    .line 659
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 661
    :cond_7
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_8

    .line 662
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 664
    :cond_8
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1146
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1148
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v1

    .line 1149
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v0

    .line 1157
    .local v0, "height":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    .line 1158
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 616
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    .line 617
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    .line 618
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    .line 619
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    .line 620
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    .line 621
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 622
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 623
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    .line 624
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    .line 625
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int v0, v1, v2

    .line 626
    .local v0, "headerTextHeight":I
    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    .line 627
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    add-int/2addr v2, v3

    invoke-static {v2, p2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->setMeasuredDimension(II)V

    .line 629
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 68
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 700
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 706
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-eqz v4, :cond_0

    .line 718
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 719
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 720
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 721
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 723
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v52, v4, v6

    .line 724
    .local v52, "textHeight":I
    mul-int/lit8 v4, v52, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    add-int/2addr v4, v6

    move/from16 v0, p2

    if-le v0, v4, :cond_11

    .line 725
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 726
    mul-int/lit8 v4, v52, 0xf

    move/from16 v0, p2

    if-le v0, v4, :cond_10

    .line 728
    div-int/lit8 v4, v52, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 737
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v4, :cond_2

    .line 738
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 741
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 742
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 743
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 744
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int v46, v4, v6

    .line 746
    .local v46, "levelWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 749
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 757
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v34, v52, v4

    .line 759
    .local v34, "fullBarOffset":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_15

    .line 760
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 761
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v4, v4, v34

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 762
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v4, v4, v34

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    .line 763
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    add-int v4, v4, v34

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 764
    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v4, :cond_12

    move/from16 v4, v34

    :goto_2
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 765
    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v4, :cond_13

    move/from16 v4, v34

    :goto_3
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 766
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v6, :cond_14

    .end local v34    # "fullBarOffset":I
    :goto_4
    add-int v4, v4, v34

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 768
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_3

    .line 769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 780
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 794
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v56, v0

    .line 795
    .local v56, "walltimeStart":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v62, v0

    cmp-long v4, v62, v56

    if-lez v4, :cond_16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v62, v0

    sub-long v54, v62, v56

    .line 797
    .local v54, "walltimeChange":J
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v30, v0

    .line 798
    .local v30, "curWalltime":J
    const-wide/16 v40, 0x0

    .line 800
    .local v40, "lastRealtime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v20, v0

    .line 801
    .local v20, "batLow":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v19, v4, v6

    .line 803
    .local v19, "batChange":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v7, v4, v6

    .line 804
    .local v7, "levelh":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 806
    move-object/from16 v0, p0

    iget v5, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v5, "x":I
    const/16 v61, 0x0

    .local v61, "y":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v8, "startX":I
    const/4 v11, -0x1

    .local v11, "lastX":I
    const/4 v9, -0x1

    .line 807
    .local v9, "lastY":I
    const/16 v37, 0x0

    .line 808
    .local v37, "i":I
    const/4 v10, 0x0

    .line 809
    .local v10, "curLevelPath":Landroid/graphics/Path;
    const/16 v17, 0x0

    .line 810
    .local v17, "lastLinePath":Landroid/graphics/Path;
    const/4 v12, 0x0

    .local v12, "lastCharging":Z
    const/4 v13, 0x0

    .local v13, "lastScreenOn":Z
    const/4 v14, 0x0

    .line 811
    .local v14, "lastGpsOn":Z
    const/4 v15, 0x0

    .local v15, "lastWifiRunning":Z
    const/16 v44, 0x0

    .local v44, "lastWifiSupplRunning":Z
    const/16 v16, 0x0

    .line 812
    .local v16, "lastCpuRunning":Z
    const/16 v45, 0x0

    .line 813
    .local v45, "lastWifiSupplState":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v18, v0

    .line 814
    .local v18, "N":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v64, v0

    cmp-long v4, v62, v64

    if-lez v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 815
    new-instance v48, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v48 .. v48}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v48, "rec":Landroid/os/BatteryStats$HistoryItem;
    move/from16 v60, v5

    .line 816
    .end local v5    # "x":I
    .end local v12    # "lastCharging":Z
    .end local v13    # "lastScreenOn":Z
    .end local v14    # "lastGpsOn":Z
    .local v60, "x":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move/from16 v0, v37

    move/from16 v1, v18

    if-ge v0, v1, :cond_2c

    .line 817
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 818
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v62, v0

    sub-long v62, v62, v40

    add-long v30, v30, v62

    .line 819
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v40, v0

    .line 820
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-long v62, v30, v56

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    div-long v62, v62, v54

    move-wide/from16 v0, v62

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 822
    .end local v60    # "x":I
    .restart local v5    # "x":I
    if-gez v5, :cond_4

    .line 823
    const/4 v5, 0x0

    .line 837
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, v48

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v6, v6, v20

    add-int/lit8 v62, v7, -0x1

    mul-int v6, v6, v62

    div-int v6, v6, v19

    sub-int v61, v4, v6

    .line 840
    if-eq v11, v5, :cond_8

    .line 842
    move/from16 v0, v61

    if-eq v9, v0, :cond_8

    .line 845
    move-object/from16 v0, v48

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v53, v0

    .line 846
    .local v53, "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v53

    if-gt v0, v4, :cond_17

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v47, v0

    .line 854
    .local v47, "path":Landroid/graphics/Path;
    :goto_8
    move-object/from16 v0, v47

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_19

    .line 855
    if-eqz v17, :cond_5

    .line 856
    int-to-float v4, v5

    move/from16 v0, v61

    int-to-float v6, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 858
    :cond_5
    if-eqz v47, :cond_6

    .line 859
    int-to-float v4, v5

    move/from16 v0, v61

    int-to-float v6, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 861
    :cond_6
    move-object/from16 v17, v47

    .line 866
    :cond_7
    :goto_9
    if-nez v10, :cond_1a

    .line 867
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 868
    int-to-float v4, v5

    move/from16 v0, v61

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 869
    move v8, v5

    .line 873
    :goto_a
    move v11, v5

    .line 874
    move/from16 v9, v61

    .line 878
    .end local v47    # "path":Landroid/graphics/Path;
    .end local v53    # "value":B
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_f

    .line 879
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_1b

    const/16 v27, 0x1

    .line 881
    .local v27, "charging":Z
    :goto_b
    move/from16 v0, v27

    if-eq v0, v12, :cond_9

    .line 882
    if-eqz v27, :cond_1c

    .line 883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 887
    :goto_c
    move/from16 v12, v27

    .line 890
    :cond_9
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    and-int/2addr v4, v6

    if-eqz v4, :cond_1d

    const/16 v49, 0x1

    .line 892
    .local v49, "screenOn":Z
    :goto_d
    move/from16 v0, v49

    if-eq v0, v13, :cond_a

    .line 893
    if-eqz v49, :cond_1e

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 898
    :goto_e
    move/from16 v13, v49

    .line 901
    :cond_a
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_1f

    const/16 v36, 0x1

    .line 903
    .local v36, "gpsOn":Z
    :goto_f
    move/from16 v0, v36

    if-eq v0, v14, :cond_b

    .line 904
    if-eqz v36, :cond_20

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 909
    :goto_10
    move/from16 v14, v36

    .line 912
    :cond_b
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v59, v4, 0x0

    .line 915
    .local v59, "wifiSupplState":I
    move/from16 v0, v45

    move/from16 v1, v59

    if-eq v0, v1, :cond_21

    .line 916
    move/from16 v45, v59

    .line 917
    packed-switch v59, :pswitch_data_0

    .line 927
    :pswitch_0
    const/16 v44, 0x1

    move/from16 v58, v44

    .line 933
    :goto_11
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x1c000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_c

    .line 936
    const/16 v58, 0x1

    .line 938
    :cond_c
    move/from16 v0, v58

    if-eq v0, v15, :cond_d

    .line 939
    if-eqz v58, :cond_22

    .line 940
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 944
    :goto_12
    move/from16 v15, v58

    .line 947
    :cond_d
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, -0x80000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_23

    const/16 v28, 0x1

    .line 949
    .local v28, "cpuRunning":Z
    :goto_13
    move/from16 v0, v28

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    .line 950
    if-eqz v28, :cond_24

    .line 951
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 955
    :goto_14
    move/from16 v16, v28

    .line 958
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_f

    .line 960
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v4, v4, 0x1c0

    shr-int/lit8 v4, v4, 0x6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_25

    .line 962
    const/16 v21, 0x0

    .line 970
    .local v21, "bin":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 1001
    .end local v21    # "bin":I
    .end local v27    # "charging":Z
    .end local v28    # "cpuRunning":Z
    .end local v36    # "gpsOn":Z
    .end local v49    # "screenOn":Z
    .end local v59    # "wifiSupplState":I
    :cond_f
    :goto_16
    add-int/lit8 v37, v37, 0x1

    move/from16 v60, v5

    .end local v5    # "x":I
    .restart local v60    # "x":I
    goto/16 :goto_7

    .line 731
    .end local v7    # "levelh":I
    .end local v8    # "startX":I
    .end local v9    # "lastY":I
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .end local v11    # "lastX":I
    .end local v15    # "lastWifiRunning":Z
    .end local v16    # "lastCpuRunning":Z
    .end local v17    # "lastLinePath":Landroid/graphics/Path;
    .end local v18    # "N":I
    .end local v19    # "batChange":I
    .end local v20    # "batLow":I
    .end local v30    # "curWalltime":J
    .end local v37    # "i":I
    .end local v40    # "lastRealtime":J
    .end local v44    # "lastWifiSupplRunning":Z
    .end local v45    # "lastWifiSupplState":I
    .end local v46    # "levelWidth":I
    .end local v48    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v54    # "walltimeChange":J
    .end local v56    # "walltimeStart":J
    .end local v60    # "x":I
    .end local v61    # "y":I
    :cond_10
    div-int/lit8 v4, v52, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_1

    .line 734
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 735
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_1

    .line 764
    .restart local v34    # "fullBarOffset":I
    .restart local v46    # "levelWidth":I
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 765
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 766
    :cond_14
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 772
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 774
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v4, v4, 0x4

    add-int v4, v4, v34

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 775
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_3

    .line 776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_5

    .line 795
    .end local v34    # "fullBarOffset":I
    .restart local v56    # "walltimeStart":J
    :cond_16
    const-wide/16 v54, 0x1

    goto/16 :goto_6

    .line 848
    .restart local v5    # "x":I
    .restart local v7    # "levelh":I
    .restart local v8    # "startX":I
    .restart local v9    # "lastY":I
    .restart local v10    # "curLevelPath":Landroid/graphics/Path;
    .restart local v11    # "lastX":I
    .restart local v15    # "lastWifiRunning":Z
    .restart local v16    # "lastCpuRunning":Z
    .restart local v17    # "lastLinePath":Landroid/graphics/Path;
    .restart local v18    # "N":I
    .restart local v19    # "batChange":I
    .restart local v20    # "batLow":I
    .restart local v30    # "curWalltime":J
    .restart local v37    # "i":I
    .restart local v40    # "lastRealtime":J
    .restart local v44    # "lastWifiSupplRunning":Z
    .restart local v45    # "lastWifiSupplState":I
    .restart local v48    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v53    # "value":B
    .restart local v54    # "walltimeChange":J
    .restart local v61    # "y":I
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v53

    if-gt v0, v4, :cond_18

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v47, v0

    .restart local v47    # "path":Landroid/graphics/Path;
    goto/16 :goto_8

    .line 851
    .end local v47    # "path":Landroid/graphics/Path;
    :cond_18
    const/16 v47, 0x0

    .restart local v47    # "path":Landroid/graphics/Path;
    goto/16 :goto_8

    .line 862
    :cond_19
    if-eqz v47, :cond_7

    .line 863
    int-to-float v4, v5

    move/from16 v0, v61

    int-to-float v6, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 871
    :cond_1a
    int-to-float v4, v5

    move/from16 v0, v61

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_a

    .line 879
    .end local v47    # "path":Landroid/graphics/Path;
    .end local v53    # "value":B
    :cond_1b
    const/16 v27, 0x0

    goto/16 :goto_b

    .line 885
    .restart local v27    # "charging":Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_c

    .line 890
    :cond_1d
    const/16 v49, 0x0

    goto/16 :goto_d

    .line 896
    .restart local v49    # "screenOn":Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_e

    .line 901
    :cond_1f
    const/16 v36, 0x0

    goto/16 :goto_f

    .line 907
    .restart local v36    # "gpsOn":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_10

    .line 924
    .restart local v59    # "wifiSupplState":I
    :pswitch_1
    const/16 v44, 0x0

    move/from16 v58, v44

    .line 925
    .local v58, "wifiRunning":I
    goto/16 :goto_11

    .line 931
    .end local v58    # "wifiRunning":I
    :cond_21
    move/from16 v58, v44

    .local v58, "wifiRunning":Z
    goto/16 :goto_11

    .line 942
    .end local v58    # "wifiRunning":Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_12

    .line 947
    :cond_23
    const/16 v28, 0x0

    goto/16 :goto_13

    .line 953
    .restart local v28    # "cpuRunning":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v62, v0

    sub-int v62, p2, v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_14

    .line 963
    :cond_25
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x200000

    and-int/2addr v4, v6

    if-eqz v4, :cond_26

    .line 964
    const/16 v21, 0x1

    .restart local v21    # "bin":I
    goto/16 :goto_15

    .line 966
    .end local v21    # "bin":I
    :cond_26
    move-object/from16 v0, v48

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v4, v4, 0x38

    shr-int/lit8 v21, v4, 0x3

    .line 968
    .restart local v21    # "bin":I
    add-int/lit8 v21, v21, 0x2

    goto/16 :goto_15

    .line 975
    .end local v5    # "x":I
    .end local v21    # "bin":I
    .end local v27    # "charging":Z
    .end local v28    # "cpuRunning":Z
    .end local v36    # "gpsOn":Z
    .end local v49    # "screenOn":Z
    .end local v59    # "wifiSupplState":I
    .restart local v60    # "x":I
    :cond_27
    move-wide/from16 v42, v30

    .line 976
    .local v42, "lastWalltime":J
    move-object/from16 v0, v48

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v4, v6, :cond_28

    move-object/from16 v0, v48

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-ne v4, v6, :cond_29

    .line 978
    :cond_28
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v64, v0

    cmp-long v4, v62, v64

    if-ltz v4, :cond_2b

    .line 979
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v30, v0

    .line 983
    :goto_17
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v40, v0

    .line 986
    :cond_29
    move-object/from16 v0, v48

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x6

    if-eq v4, v6, :cond_3e

    move-object/from16 v0, v48

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-ne v4, v6, :cond_2a

    sub-long v62, v42, v30

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->abs(J)J

    move-result-wide v62

    const-wide/32 v64, 0x36ee80

    cmp-long v4, v62, v64

    if-lez v4, :cond_3e

    .line 989
    :cond_2a
    if-eqz v10, :cond_3e

    .line 990
    add-int/lit8 v5, v60, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v17}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 993
    const/4 v9, -0x1

    move v11, v9

    .line 994
    const/4 v10, 0x0

    .line 995
    const/16 v17, 0x0

    .line 996
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "lastGpsOn":I
    move/from16 v13, v16

    .local v13, "lastScreenOn":I
    move/from16 v12, v16

    .local v12, "lastCharging":I
    move/from16 v5, v60

    .end local v60    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_16

    .line 981
    .end local v5    # "x":I
    .end local v12    # "lastCharging":I
    .end local v13    # "lastScreenOn":I
    .end local v14    # "lastGpsOn":I
    .restart local v60    # "x":I
    :cond_2b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v64, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v66, v0

    sub-long v64, v64, v66

    add-long v30, v62, v64

    goto :goto_17

    .line 1003
    .end local v42    # "lastWalltime":J
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    move/from16 v5, v60

    .line 1006
    .end local v48    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v60    # "x":I
    .restart local v5    # "x":I
    :cond_2d
    if-ltz v9, :cond_2e

    if-gez v11, :cond_3b

    .line 1008
    :cond_2e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move v5, v11

    .line 1009
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    sub-int v6, v6, v20

    add-int/lit8 v62, v7, -0x1

    mul-int v6, v6, v62

    div-int v6, v6, v19

    sub-int v9, v4, v6

    move/from16 v61, v9

    .line 1011
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    int-to-byte v0, v4

    move/from16 v53, v0

    .line 1012
    .restart local v53    # "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v53

    if-gt v0, v4, :cond_39

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v47, v0

    .line 1019
    .restart local v47    # "path":Landroid/graphics/Path;
    :goto_18
    if-eqz v47, :cond_2f

    .line 1020
    int-to-float v4, v5

    move/from16 v0, v61

    int-to-float v6, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1021
    move-object/from16 v17, v47

    .line 1023
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 1025
    move/from16 v5, p1

    .end local v47    # "path":Landroid/graphics/Path;
    .end local v53    # "value":B
    :cond_30
    :goto_19
    move-object/from16 v4, p0

    move/from16 v6, p2

    .line 1035
    invoke-virtual/range {v4 .. v17}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 1039
    move/from16 v0, p1

    if-ge v5, v0, :cond_31

    .line 1042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    int-to-float v0, v9

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1043
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v20, 0x64

    add-int/lit8 v62, v7, -0x1

    mul-int v6, v6, v62

    div-int v6, v6, v19

    sub-int v35, v4, v6

    .line 1044
    .local v35, "fullY":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v20, 0x0

    add-int/lit8 v62, v7, -0x1

    mul-int v6, v6, v62

    div-int v6, v6, v19

    sub-int v29, v4, v6

    .line 1045
    .local v29, "emptyY":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    if-eqz v4, :cond_3c

    .line 1046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1051
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 1055
    .end local v29    # "emptyY":I
    .end local v35    # "fullY":I
    :cond_31
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x0

    cmp-long v4, v62, v64

    if-lez v4, :cond_38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v64, v0

    cmp-long v4, v62, v64

    if-lez v4, :cond_38

    .line 1057
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->is24Hour()Z

    move-result v38

    .line 1058
    .local v38, "is24hr":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v26

    .line 1059
    .local v26, "calStart":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1060
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1061
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1062
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1063
    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v50

    .line 1064
    .local v50, "startRoundTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    cmp-long v4, v50, v62

    if-gez v4, :cond_32

    .line 1065
    const/16 v4, 0xb

    const/16 v6, 0xb

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1066
    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v50

    .line 1068
    :cond_32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    .line 1069
    .local v22, "calEnd":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1070
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1071
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1072
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1073
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    .line 1074
    .local v32, "endRoundTime":J
    cmp-long v4, v50, v32

    if-gez v4, :cond_34

    .line 1075
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v38

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1076
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v23

    .line 1077
    .local v23, "calMid":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v64, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v66, v0

    sub-long v64, v64, v66

    const-wide/16 v66, 0x2

    div-long v64, v64, v66

    add-long v62, v62, v64

    move-object/from16 v0, v23

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1078
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1079
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1080
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1081
    invoke-virtual/range {v23 .. v23}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    .line 1082
    .local v24, "calMidMillis":J
    cmp-long v4, v24, v50

    if-lez v4, :cond_33

    cmp-long v4, v24, v32

    if-gez v4, :cond_33

    .line 1083
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v38

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1085
    :cond_33
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v38

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1089
    .end local v23    # "calMid":Ljava/util/Calendar;
    .end local v24    # "calMidMillis":J
    :cond_34
    const/4 v4, 0x6

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v4, v6, :cond_35

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v4, v6, :cond_38

    .line 1091
    :cond_35
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->isDayFirst()Z

    move-result v39

    .line 1092
    .local v39, "isDayFirst":Z
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1093
    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v50

    .line 1094
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v0

    cmp-long v4, v50, v62

    if-gez v4, :cond_36

    .line 1095
    const/4 v4, 0x6

    const/4 v6, 0x6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1096
    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v50

    .line 1098
    :cond_36
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1099
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    .line 1100
    cmp-long v4, v50, v32

    if-gez v4, :cond_37

    .line 1101
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v39

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v23

    .line 1103
    .restart local v23    # "calMid":Ljava/util/Calendar;
    sub-long v62, v32, v50

    const-wide/16 v64, 0x2

    div-long v62, v62, v64

    add-long v62, v62, v50

    move-object/from16 v0, v23

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1104
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1105
    invoke-virtual/range {v23 .. v23}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    .line 1106
    .restart local v24    # "calMidMillis":J
    cmp-long v4, v24, v50

    if-lez v4, :cond_37

    cmp-long v4, v24, v32

    if-gez v4, :cond_37

    .line 1107
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v39

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1110
    .end local v23    # "calMid":Ljava/util/Calendar;
    .end local v24    # "calMidMillis":J
    :cond_37
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v39

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1114
    .end local v22    # "calEnd":Ljava/util/Calendar;
    .end local v26    # "calStart":Ljava/util/Calendar;
    .end local v32    # "endRoundTime":J
    .end local v38    # "is24hr":Z
    .end local v39    # "isDayFirst":Z
    .end local v50    # "startRoundTime":J
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_3d

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v64, v0

    sub-long v62, v62, v64

    move-wide/from16 v0, v62

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto/16 :goto_0

    .line 1014
    .restart local v53    # "value":B
    :cond_39
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v53

    if-gt v0, v4, :cond_3a

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v47, v0

    .restart local v47    # "path":Landroid/graphics/Path;
    goto/16 :goto_18

    .line 1017
    .end local v47    # "path":Landroid/graphics/Path;
    :cond_3a
    const/16 v47, 0x0

    .restart local v47    # "path":Landroid/graphics/Path;
    goto/16 :goto_18

    .line 1028
    .end local v47    # "path":Landroid/graphics/Path;
    .end local v53    # "value":B
    :cond_3b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v62, v0

    sub-long v62, v62, v56

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    div-long v62, v62, v54

    move-wide/from16 v0, v62

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 1030
    if-gez v5, :cond_30

    .line 1031
    const/4 v5, 0x0

    goto/16 :goto_19

    .line 1048
    .restart local v29    # "emptyY":I
    .restart local v35    # "fullY":I
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1a

    .line 1121
    .end local v29    # "emptyY":I
    .end local v35    # "fullY":I
    :cond_3d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1122
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto/16 :goto_0

    .end local v5    # "x":I
    .restart local v42    # "lastWalltime":J
    .restart local v48    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v60    # "x":I
    :cond_3e
    move/from16 v5, v60

    .end local v60    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_16

    .line 917
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 36
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .param p2, "broadcast"    # Landroid/content/Intent;

    .prologue
    .line 476
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    .line 477
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    .line 483
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    mul-long v10, v30, v32

    .line 485
    .local v10, "elapsedRealtimeUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v28

    .line 487
    .local v28, "uSecTime":J
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f0c0997

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f0c0998

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f0c0999

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f0c02fa

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f0c099a

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f0c099b

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 495
    const/16 v30, 0x64

    invoke-static/range {v30 .. v30}, Lcom/flyme/deviceoriginalsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    .line 496
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/flyme/deviceoriginalsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/flyme/deviceoriginalsettings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    .line 499
    const-wide/16 v22, 0x0

    .line 500
    .local v22, "remainingTimeUs":J
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "plugged"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    if-nez v30, :cond_9

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v8

    .line 503
    .local v8, "drainTime":J
    const-wide/16 v30, 0x0

    cmp-long v30, v8, v30

    if-lez v30, :cond_8

    .line 504
    move-wide/from16 v22, v8

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v30

    const-wide/16 v32, 0x3e8

    div-long v32, v8, v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v27

    .line 507
    .local v27, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0c098c

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    aput-object v27, v32, v33

    invoke-virtual/range {v30 .. v32}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    .line 541
    .end local v8    # "drainTime":J
    .end local v27    # "timeString":Ljava/lang/String;
    :goto_0
    const-string v30, ""

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    .line 542
    const-string v30, ""

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 545
    const/16 v20, 0x0

    .line 546
    .local v20, "pos":I
    const/4 v13, 0x0

    .line 547
    .local v13, "lastInteresting":I
    const/4 v14, -0x1

    .line 548
    .local v14, "lastLevel":B
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 549
    const/16 v30, 0x64

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    .line 550
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 551
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 552
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 553
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 554
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 555
    const-wide/16 v18, 0x0

    .line 556
    .local v18, "lastWallTime":J
    const-wide/16 v16, 0x0

    .line 557
    .local v16, "lastRealtime":J
    const/4 v4, 0x0

    .line 558
    .local v4, "aggrStates":I
    const/4 v5, 0x0

    .line 559
    .local v5, "aggrStates2":I
    const/4 v12, 0x1

    .line 560
    .local v12, "first":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v30

    if-eqz v30, :cond_e

    .line 561
    new-instance v21, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v21 .. v21}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 562
    .local v21, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 563
    add-int/lit8 v20, v20, 0x1

    .line 564
    if-eqz v12, :cond_1

    .line 565
    const/4 v12, 0x0

    .line 566
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 568
    :cond_1
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v30, v0

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v30, v0

    const/16 v31, 0x7

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    .line 578
    :cond_2
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v30, v0

    const-wide v32, 0x39ef8b000L

    add-long v32, v32, v18

    cmp-long v30, v30, v32

    if-gtz v30, :cond_3

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v32, v0

    const-wide/32 v34, 0x493e0

    add-long v32, v32, v34

    cmp-long v30, v30, v32

    if-gez v30, :cond_4

    .line 580
    :cond_3
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 582
    :cond_4
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v18, v0

    .line 583
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v0

    .line 584
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-nez v30, :cond_5

    .line 585
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v30, v0

    sub-long v30, v16, v30

    sub-long v30, v18, v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 588
    :cond_5
    invoke-virtual/range {v21 .. v21}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 589
    move-object/from16 v0, v21

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v30, v0

    move/from16 v0, v30

    if-ne v0, v14, :cond_6

    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 590
    :cond_6
    move-object/from16 v0, v21

    iget-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 592
    :cond_7
    move/from16 v13, v20

    .line 593
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    .line 594
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v30, v0

    or-int v4, v4, v30

    .line 595
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v30, v0

    or-int v5, v5, v30

    goto/16 :goto_1

    .line 510
    .end local v4    # "aggrStates":I
    .end local v5    # "aggrStates2":I
    .end local v12    # "first":Z
    .end local v13    # "lastInteresting":I
    .end local v14    # "lastLevel":B
    .end local v16    # "lastRealtime":J
    .end local v18    # "lastWallTime":J
    .end local v20    # "pos":I
    .end local v21    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v8    # "drainTime":J
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/flyme/deviceoriginalsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 513
    .end local v8    # "drainTime":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v6

    .line 514
    .local v6, "chargeTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/flyme/deviceoriginalsettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v26

    .line 516
    .local v26, "statusLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "status"

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 518
    .local v25, "status":I
    const-wide/16 v30, 0x0

    cmp-long v30, v6, v30

    if-lez v30, :cond_d

    const/16 v30, 0x5

    move/from16 v0, v25

    move/from16 v1, v30

    if-eq v0, v1, :cond_d

    .line 519
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    .line 520
    move-wide/from16 v22, v6

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v30

    const-wide/16 v32, 0x3e8

    div-long v32, v6, v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v27

    .line 523
    .restart local v27    # "timeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "plugged"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 525
    .local v15, "plugType":I
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v15, v0, :cond_a

    .line 526
    const v24, 0x7f0c098f

    .line 534
    .local v24, "resId":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v27, v31, v32

    move-object/from16 v0, v30

    move/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 527
    .end local v24    # "resId":I
    :cond_a
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v15, v0, :cond_b

    .line 528
    const v24, 0x7f0c0990

    .restart local v24    # "resId":I
    goto :goto_2

    .line 529
    .end local v24    # "resId":I
    :cond_b
    const/16 v30, 0x4

    move/from16 v0, v30

    if-ne v15, v0, :cond_c

    .line 530
    const v24, 0x7f0c0991

    .restart local v24    # "resId":I
    goto :goto_2

    .line 532
    .end local v24    # "resId":I
    :cond_c
    const v24, 0x7f0c098e

    .restart local v24    # "resId":I
    goto :goto_2

    .line 537
    .end local v15    # "plugType":I
    .end local v24    # "resId":I
    .end local v27    # "timeString":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0c098d

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    aput-object v26, v32, v33

    invoke-virtual/range {v30 .. v32}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 599
    .end local v6    # "chargeTime":J
    .end local v25    # "status":I
    .end local v26    # "statusLabel":Ljava/lang/String;
    .restart local v4    # "aggrStates":I
    .restart local v5    # "aggrStates2":I
    .restart local v12    # "first":Z
    .restart local v13    # "lastInteresting":I
    .restart local v14    # "lastLevel":B
    .restart local v16    # "lastRealtime":J
    .restart local v18    # "lastWallTime":J
    .restart local v20    # "pos":I
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    div-long v32, v22, v32

    add-long v30, v30, v32

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 600
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v30, v0

    add-long v30, v30, v18

    sub-long v30, v30, v16

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 601
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    div-long v32, v22, v32

    add-long v30, v30, v32

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 602
    move-object/from16 v0, p0

    iput v13, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 603
    const/high16 v30, 0x20000000

    and-int v30, v30, v4

    if-eqz v30, :cond_12

    const/16 v30, 0x1

    :goto_3
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    .line 604
    const/high16 v30, 0x20000000

    and-int v30, v30, v5

    if-nez v30, :cond_f

    const/high16 v30, 0x1c000000

    and-int v30, v30, v4

    if-eqz v30, :cond_13

    :cond_f
    const/16 v30, 0x1

    :goto_4
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/flyme/deviceoriginalsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v30

    if-nez v30, :cond_10

    .line 609
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    .line 611
    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-gtz v30, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x1

    add-long v30, v30, v32

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 612
    :cond_11
    return-void

    .line 603
    :cond_12
    const/16 v30, 0x0

    goto :goto_3

    .line 604
    :cond_13
    const/16 v30, 0x0

    goto :goto_4
.end method
