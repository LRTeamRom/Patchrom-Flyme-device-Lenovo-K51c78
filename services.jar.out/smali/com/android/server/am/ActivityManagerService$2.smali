.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1988
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1991
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2071
    :goto_0
    return-void

    .line 1993
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 1994
    .local v22, "start":J
    const/4 v15, 0x0

    .line 1995
    .local v15, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1996
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    if-eqz v3, :cond_0

    .line 1997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 1998
    new-instance v18, Lcom/android/internal/util/MemInfoReader;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .end local v15    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v18, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v15, v18

    .line 2000
    .end local v18    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v15    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2001
    if-eqz v15, :cond_6

    .line 2002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2003
    const-wide/16 v12, 0x0

    .line 2004
    .local v12, "nativeTotalPss":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v8

    .line 2005
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    .line 2006
    .local v2, "N":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    if-ge v14, v2, :cond_4

    .line 2007
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v14}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v21

    .line 2008
    .local v21, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v26, 0x0

    cmp-long v3, v10, v26

    if-lez v3, :cond_1

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v9, 0x2710

    if-lt v3, v9, :cond_2

    .line 2006
    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2000
    .end local v2    # "N":I
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "j":I
    .end local v21    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2012
    .restart local v2    # "N":I
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "j":I
    .restart local v21    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2013
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 2015
    monitor-exit v9

    goto :goto_2

    .line 2017
    :catchall_1
    move-exception v3

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3

    .line 2020
    .end local v2    # "N":I
    .end local v14    # "j":I
    .end local v21    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_2
    move-exception v3

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 2017
    .restart local v2    # "N":I
    .restart local v14    # "j":I
    .restart local v21    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_3
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2018
    :try_start_7
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v10

    add-long/2addr v12, v10

    goto :goto_2

    .line 2020
    .end local v21    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2021
    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2023
    :try_start_8
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_PSS:Z

    if-eqz v3, :cond_5

    const-string v3, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collected native and kernel memory in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v22

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v6

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v8

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v10

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 2028
    monitor-exit v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2031
    .end local v2    # "N":I
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "j":I
    :cond_6
    const/16 v19, 0x0

    .line 2032
    .local v19, "num":I
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v24, v0

    .line 2038
    .local v24, "tmp":[J
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2039
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_a

    .line 2040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->DEBUG_PSS:Z

    if-eqz v3, :cond_9

    :cond_8
    const-string v3, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Collected PSS of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " processes in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v22

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2043
    monitor-exit v8

    goto/16 :goto_0

    .line 2056
    :catchall_3
    move-exception v3

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v3

    .line 2028
    .end local v19    # "num":I
    .end local v24    # "tmp":[J
    .restart local v2    # "N":I
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "j":I
    :catchall_4
    move-exception v3

    :try_start_a
    monitor-exit v25
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v3

    .line 2045
    .end local v2    # "N":I
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "j":I
    .restart local v19    # "num":I
    .restart local v24    # "tmp":[J
    :cond_a
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2046
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 2047
    .local v5, "procState":I
    iget-wide v0, v4, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    move-wide/from16 v16, v0

    .line 2048
    .local v16, "lastPssTime":J
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_c

    iget v3, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v5, v3, :cond_c

    const-wide/16 v10, 0x3e8

    add-long v10, v10, v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    cmp-long v3, v10, v26

    if-gez v3, :cond_c

    .line 2051
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v20, v0

    .line 2056
    .local v20, "pid":I
    :goto_4
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2057
    if-eqz v4, :cond_7

    .line 2058
    const/4 v3, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v0, v1, v3}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v6

    .line 2059
    .local v6, "pss":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2060
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_b

    :try_start_c
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_b

    iget v3, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v3, v5, :cond_b

    iget v3, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v20

    if-ne v3, v0, :cond_b

    iget-wide v8, v4, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v3, v8, v16

    if-nez v3, :cond_b

    .line 2062
    add-int/lit8 v19, v19, 0x1

    .line 2063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    aget-wide v8, v24, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->recordPssSample(Lcom/android/server/am/ProcessRecord;IJJJ)V

    .line 2066
    :cond_b
    monitor-exit v25

    goto/16 :goto_3

    :catchall_5
    move-exception v3

    monitor-exit v25
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v3

    .line 2053
    .end local v6    # "pss":J
    .end local v20    # "pid":I
    :cond_c
    const/4 v4, 0x0

    .line 2054
    const/16 v20, 0x0

    .restart local v20    # "pid":I
    goto :goto_4

    .line 1991
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
