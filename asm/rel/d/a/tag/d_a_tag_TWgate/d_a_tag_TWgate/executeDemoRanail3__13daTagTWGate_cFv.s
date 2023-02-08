lbl_80D54178:
/* 80D54178  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D5417C  7C 08 02 A6 */	mflr r0
/* 80D54180  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D54184  39 61 00 50 */	addi r11, r1, 0x50
/* 80D54188  4B 60 E0 49 */	bl _savegpr_26
/* 80D5418C  7C 7B 1B 78 */	mr r27, r3
/* 80D54190  3C 60 80 D5 */	lis r3, mAttr__13daTagTWGate_c@ha /* 0x80D557AC@ha */
/* 80D54194  3B C3 57 AC */	addi r30, r3, mAttr__13daTagTWGate_c@l /* 0x80D557AC@l */
/* 80D54198  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5419C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D541A0  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80D541A4  7F A3 EB 78 */	mr r3, r29
/* 80D541A8  3C 80 80 D5 */	lis r4, l_myName@ha /* 0x80D55994@ha */
/* 80D541AC  38 84 59 94 */	addi r4, r4, l_myName@l /* 0x80D55994@l */
/* 80D541B0  80 84 00 00 */	lwz r4, 0(r4)
/* 80D541B4  38 A0 00 00 */	li r5, 0
/* 80D541B8  38 C0 00 00 */	li r6, 0
/* 80D541BC  4B 2F 39 61 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D541C0  7C 7C 1B 78 */	mr r28, r3
/* 80D541C4  2C 1C FF FF */	cmpwi r28, -1
/* 80D541C8  41 82 03 8C */	beq lbl_80D54554
/* 80D541CC  7F A3 EB 78 */	mr r3, r29
/* 80D541D0  7F 84 E3 78 */	mr r4, r28
/* 80D541D4  4B 2F 3D 89 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80D541D8  7C 7A 1B 78 */	mr r26, r3
/* 80D541DC  7F A3 EB 78 */	mr r3, r29
/* 80D541E0  7F 84 E3 78 */	mr r4, r28
/* 80D541E4  4B 2F 3B 69 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D541E8  2C 03 00 00 */	cmpwi r3, 0
/* 80D541EC  41 82 00 70 */	beq lbl_80D5425C
/* 80D541F0  80 9A 00 00 */	lwz r4, 0(r26)
/* 80D541F4  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D541F8  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D541FC  7C 04 00 00 */	cmpw r4, r0
/* 80D54200  41 82 00 1C */	beq lbl_80D5421C
/* 80D54204  40 80 00 08 */	bge lbl_80D5420C
/* 80D54208  48 00 00 54 */	b lbl_80D5425C
lbl_80D5420C:
/* 80D5420C  38 03 30 34 */	addi r0, r3, 0x3034
/* 80D54210  7C 04 00 00 */	cmpw r4, r0
/* 80D54214  40 80 00 48 */	bge lbl_80D5425C
/* 80D54218  48 00 00 28 */	b lbl_80D54240
lbl_80D5421C:
/* 80D5421C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D54220  7F 64 DB 78 */	mr r4, r27
/* 80D54224  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 80D54228  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 80D5422C  38 C0 00 00 */	li r6, 0
/* 80D54230  4B 2E E6 E5 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80D54234  38 00 00 00 */	li r0, 0
/* 80D54238  98 1B 05 E1 */	stb r0, 0x5e1(r27)
/* 80D5423C  48 00 00 20 */	b lbl_80D5425C
lbl_80D54240:
/* 80D54240  7F 63 DB 78 */	mr r3, r27
/* 80D54244  48 00 0C 89 */	bl initBaseMtx__13daTagTWGate_cFv
/* 80D54248  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80D5424C  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80D54250  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D54254  38 00 00 01 */	li r0, 1
/* 80D54258  98 1B 05 E0 */	stb r0, 0x5e0(r27)
lbl_80D5425C:
/* 80D5425C  80 9A 00 00 */	lwz r4, 0(r26)
/* 80D54260  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D54264  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D54268  7C 04 00 00 */	cmpw r4, r0
/* 80D5426C  41 82 00 80 */	beq lbl_80D542EC
/* 80D54270  40 80 00 14 */	bge lbl_80D54284
/* 80D54274  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D54278  7C 04 00 00 */	cmpw r4, r0
/* 80D5427C  40 80 00 18 */	bge lbl_80D54294
/* 80D54280  48 00 02 70 */	b lbl_80D544F0
lbl_80D54284:
/* 80D54284  38 03 30 34 */	addi r0, r3, 0x3034
/* 80D54288  7C 04 00 00 */	cmpw r4, r0
/* 80D5428C  40 80 02 64 */	bge lbl_80D544F0
/* 80D54290  48 00 01 E4 */	b lbl_80D54474
lbl_80D54294:
/* 80D54294  7F 63 DB 78 */	mr r3, r27
/* 80D54298  48 00 0C F1 */	bl downloadModels__13daTagTWGate_cFv
/* 80D5429C  2C 03 00 01 */	cmpwi r3, 1
/* 80D542A0  40 82 00 14 */	bne lbl_80D542B4
/* 80D542A4  7F A3 EB 78 */	mr r3, r29
/* 80D542A8  7F 84 E3 78 */	mr r4, r28
/* 80D542AC  4B 2F 3E D1 */	bl cutEnd__16dEvent_manager_cFi
/* 80D542B0  48 00 02 40 */	b lbl_80D544F0
lbl_80D542B4:
/* 80D542B4  2C 03 FF FF */	cmpwi r3, -1
/* 80D542B8  40 82 02 38 */	bne lbl_80D544F0
/* 80D542BC  88 1B 05 E2 */	lbz r0, 0x5e2(r27)
/* 80D542C0  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80D542C4  38 1E 00 04 */	addi r0, r30, 4
/* 80D542C8  7C C0 1A 14 */	add r6, r0, r3
/* 80D542CC  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80D542D0  A8 86 00 18 */	lha r4, 0x18(r6)
/* 80D542D4  88 06 00 1A */	lbz r0, 0x1a(r6)
/* 80D542D8  7C 05 07 74 */	extsb r5, r0
/* 80D542DC  88 06 00 1B */	lbz r0, 0x1b(r6)
/* 80D542E0  7C 06 07 74 */	extsb r6, r0
/* 80D542E4  4B 2D 92 71 */	bl dComIfGp_setNextStage__FPCcsScSc
/* 80D542E8  48 00 02 08 */	b lbl_80D544F0
lbl_80D542EC:
/* 80D542EC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D542F0  A0 1F 4F A2 */	lhz r0, 0x4fa2(r31)
/* 80D542F4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D542F8  41 82 00 34 */	beq lbl_80D5432C
/* 80D542FC  4B 2E E6 AD */	bl onSkipFade__14dEvt_control_cFv
/* 80D54300  88 1B 05 E2 */	lbz r0, 0x5e2(r27)
/* 80D54304  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80D54308  38 1E 00 04 */	addi r0, r30, 4
/* 80D5430C  7C C0 1A 14 */	add r6, r0, r3
/* 80D54310  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80D54314  A8 86 00 18 */	lha r4, 0x18(r6)
/* 80D54318  88 06 00 1A */	lbz r0, 0x1a(r6)
/* 80D5431C  7C 05 07 74 */	extsb r5, r0
/* 80D54320  88 06 00 1B */	lbz r0, 0x1b(r6)
/* 80D54324  7C 06 07 74 */	extsb r6, r0
/* 80D54328  4B 2D 92 2D */	bl dComIfGp_setNextStage__FPCcsScSc
lbl_80D5432C:
/* 80D5432C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D54330  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D54334  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D54338  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D5433C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D54340  38 80 00 4A */	li r4, 0x4a
/* 80D54344  41 82 00 08 */	beq lbl_80D5434C
/* 80D54348  38 80 00 2E */	li r4, 0x2e
lbl_80D5434C:
/* 80D5434C  88 7B 05 E1 */	lbz r3, 0x5e1(r27)
/* 80D54350  38 03 00 01 */	addi r0, r3, 1
/* 80D54354  98 1B 05 E1 */	stb r0, 0x5e1(r27)
/* 80D54358  7C 03 20 00 */	cmpw r3, r4
/* 80D5435C  40 82 01 94 */	bne lbl_80D544F0
/* 80D54360  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D54364  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D54368  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 80D5436C  38 61 00 24 */	addi r3, r1, 0x24
/* 80D54370  38 80 00 00 */	li r4, 0
/* 80D54374  A8 BA 04 E6 */	lha r5, 0x4e6(r26)
/* 80D54378  3C A5 00 01 */	addis r5, r5, 1
/* 80D5437C  38 05 80 00 */	addi r0, r5, -32768
/* 80D54380  7C 05 07 34 */	extsh r5, r0
/* 80D54384  38 C0 00 00 */	li r6, 0
/* 80D54388  4B 51 30 6D */	bl __ct__5csXyzFsss
/* 80D5438C  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80D54390  4B 2B 89 D5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D54394  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D54398  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D5439C  A8 81 00 26 */	lha r4, 0x26(r1)
/* 80D543A0  4B 2B 80 95 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D543A4  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D543A8  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80D543AC  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80D543B0  4B 2B 89 ED */	bl transM__14mDoMtx_stack_cFfff
/* 80D543B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D543B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D543BC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D543C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D543C4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D543C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D543CC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80D543D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D543D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D543D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D543DC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D543E0  38 80 00 00 */	li r4, 0
/* 80D543E4  90 81 00 08 */	stw r4, 8(r1)
/* 80D543E8  38 00 FF FF */	li r0, -1
/* 80D543EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D543F0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D543F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D543F8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D543FC  38 80 00 00 */	li r4, 0
/* 80D54400  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086C5@ha */
/* 80D54404  38 A5 86 C5 */	addi r5, r5, 0x86C5 /* 0x000086C5@l */
/* 80D54408  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80D5440C  38 E0 00 00 */	li r7, 0
/* 80D54410  39 01 00 24 */	addi r8, r1, 0x24
/* 80D54414  39 20 00 00 */	li r9, 0
/* 80D54418  39 40 00 FF */	li r10, 0xff
/* 80D5441C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D54420  4B 2F 86 71 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D54424  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080277@ha */
/* 80D54428  38 03 02 77 */	addi r0, r3, 0x0277 /* 0x00080277@l */
/* 80D5442C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D54430  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D54434  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D54438  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5443C  38 81 00 20 */	addi r4, r1, 0x20
/* 80D54440  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80D54444  38 C0 00 00 */	li r6, 0
/* 80D54448  38 E0 00 00 */	li r7, 0
/* 80D5444C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D54450  FC 40 08 90 */	fmr f2, f1
/* 80D54454  C0 7E 00 90 */	lfs f3, 0x90(r30)
/* 80D54458  FC 80 18 90 */	fmr f4, f3
/* 80D5445C  39 00 00 00 */	li r8, 0
/* 80D54460  4B 55 75 25 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D54464  7F A3 EB 78 */	mr r3, r29
/* 80D54468  7F 84 E3 78 */	mr r4, r28
/* 80D5446C  4B 2F 3D 11 */	bl cutEnd__16dEvent_manager_cFi
/* 80D54470  48 00 00 80 */	b lbl_80D544F0
lbl_80D54474:
/* 80D54474  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D54478  A0 1F 4F A2 */	lhz r0, 0x4fa2(r31)
/* 80D5447C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D54480  41 82 00 34 */	beq lbl_80D544B4
/* 80D54484  4B 2E E5 25 */	bl onSkipFade__14dEvt_control_cFv
/* 80D54488  88 1B 05 E2 */	lbz r0, 0x5e2(r27)
/* 80D5448C  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80D54490  38 1E 00 04 */	addi r0, r30, 4
/* 80D54494  7C C0 1A 14 */	add r6, r0, r3
/* 80D54498  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80D5449C  A8 86 00 18 */	lha r4, 0x18(r6)
/* 80D544A0  88 06 00 1A */	lbz r0, 0x1a(r6)
/* 80D544A4  7C 05 07 74 */	extsb r5, r0
/* 80D544A8  88 06 00 1B */	lbz r0, 0x1b(r6)
/* 80D544AC  7C 06 07 74 */	extsb r6, r0
/* 80D544B0  4B 2D 90 A5 */	bl dComIfGp_setNextStage__FPCcsScSc
lbl_80D544B4:
/* 80D544B4  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80D544B8  38 80 00 01 */	li r4, 1
/* 80D544BC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80D544C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D544C4  40 82 00 18 */	bne lbl_80D544DC
/* 80D544C8  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D544CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D544D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D544D4  41 82 00 08 */	beq lbl_80D544DC
/* 80D544D8  38 80 00 00 */	li r4, 0
lbl_80D544DC:
/* 80D544DC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D544E0  41 82 00 10 */	beq lbl_80D544F0
/* 80D544E4  7F A3 EB 78 */	mr r3, r29
/* 80D544E8  7F 84 E3 78 */	mr r4, r28
/* 80D544EC  4B 2F 3C 91 */	bl cutEnd__16dEvent_manager_cFi
lbl_80D544F0:
/* 80D544F0  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80D544F4  28 00 00 02 */	cmplwi r0, 2
/* 80D544F8  40 82 00 5C */	bne lbl_80D54554
/* 80D544FC  A8 9B 05 DC */	lha r4, 0x5dc(r27)
/* 80D54500  2C 04 FF FF */	cmpwi r4, -1
/* 80D54504  41 82 00 50 */	beq lbl_80D54554
/* 80D54508  7F A3 EB 78 */	mr r3, r29
/* 80D5450C  4B 2F 35 6D */	bl endCheck__16dEvent_manager_cFs
/* 80D54510  2C 03 00 00 */	cmpwi r3, 0
/* 80D54514  41 82 00 40 */	beq lbl_80D54554
/* 80D54518  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D5451C  4B 2E DF 4D */	bl reset__14dEvt_control_cFv
/* 80D54520  38 00 00 00 */	li r0, 0
/* 80D54524  98 1B 05 E0 */	stb r0, 0x5e0(r27)
/* 80D54528  90 1B 05 88 */	stw r0, 0x588(r27)
/* 80D5452C  80 1B 05 88 */	lwz r0, 0x588(r27)
/* 80D54530  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D54534  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha /* 0x80D55AD0@ha */
/* 80D54538  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l /* 0x80D55AD0@l */
/* 80D5453C  7C 00 22 14 */	add r0, r0, r4
/* 80D54540  90 1B 05 84 */	stw r0, 0x584(r27)
/* 80D54544  7F 63 DB 78 */	mr r3, r27
/* 80D54548  81 9B 05 84 */	lwz r12, 0x584(r27)
/* 80D5454C  4B 60 DB 39 */	bl __ptmf_scall
/* 80D54550  60 00 00 00 */	nop 
lbl_80D54554:
/* 80D54554  39 61 00 50 */	addi r11, r1, 0x50
/* 80D54558  4B 60 DC C5 */	bl _restgpr_26
/* 80D5455C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D54560  7C 08 03 A6 */	mtlr r0
/* 80D54564  38 21 00 50 */	addi r1, r1, 0x50
/* 80D54568  4E 80 00 20 */	blr 
