lbl_80D537DC:
/* 80D537DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D537E0  7C 08 02 A6 */	mflr r0
/* 80D537E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D537E8  39 61 00 50 */	addi r11, r1, 0x50
/* 80D537EC  4B 60 E9 E4 */	b _savegpr_26
/* 80D537F0  7C 7B 1B 78 */	mr r27, r3
/* 80D537F4  3C 60 80 D5 */	lis r3, mAttr__13daTagTWGate_c@ha
/* 80D537F8  3B C3 57 AC */	addi r30, r3, mAttr__13daTagTWGate_c@l
/* 80D537FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D53800  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D53804  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80D53808  7F A3 EB 78 */	mr r3, r29
/* 80D5380C  3C 80 80 D5 */	lis r4, l_myName@ha
/* 80D53810  38 84 59 94 */	addi r4, r4, l_myName@l
/* 80D53814  80 84 00 00 */	lwz r4, 0(r4)
/* 80D53818  38 A0 00 00 */	li r5, 0
/* 80D5381C  38 C0 00 00 */	li r6, 0
/* 80D53820  4B 2F 42 FC */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D53824  7C 7C 1B 78 */	mr r28, r3
/* 80D53828  2C 1C FF FF */	cmpwi r28, -1
/* 80D5382C  41 82 03 8C */	beq lbl_80D53BB8
/* 80D53830  7F A3 EB 78 */	mr r3, r29
/* 80D53834  7F 84 E3 78 */	mr r4, r28
/* 80D53838  4B 2F 47 24 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80D5383C  7C 7A 1B 78 */	mr r26, r3
/* 80D53840  7F A3 EB 78 */	mr r3, r29
/* 80D53844  7F 84 E3 78 */	mr r4, r28
/* 80D53848  4B 2F 45 04 */	b getIsAddvance__16dEvent_manager_cFi
/* 80D5384C  2C 03 00 00 */	cmpwi r3, 0
/* 80D53850  41 82 00 70 */	beq lbl_80D538C0
/* 80D53854  80 9A 00 00 */	lwz r4, 0(r26)
/* 80D53858  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D5385C  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D53860  7C 04 00 00 */	cmpw r4, r0
/* 80D53864  41 82 00 1C */	beq lbl_80D53880
/* 80D53868  40 80 00 08 */	bge lbl_80D53870
/* 80D5386C  48 00 00 54 */	b lbl_80D538C0
lbl_80D53870:
/* 80D53870  38 03 30 34 */	addi r0, r3, 0x3034
/* 80D53874  7C 04 00 00 */	cmpw r4, r0
/* 80D53878  40 80 00 48 */	bge lbl_80D538C0
/* 80D5387C  48 00 00 28 */	b lbl_80D538A4
lbl_80D53880:
/* 80D53880  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D53884  7F 64 DB 78 */	mr r4, r27
/* 80D53888  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 80D5388C  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 80D53890  38 C0 00 00 */	li r6, 0
/* 80D53894  4B 2E F0 80 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80D53898  38 00 00 00 */	li r0, 0
/* 80D5389C  98 1B 05 E1 */	stb r0, 0x5e1(r27)
/* 80D538A0  48 00 00 20 */	b lbl_80D538C0
lbl_80D538A4:
/* 80D538A4  7F 63 DB 78 */	mr r3, r27
/* 80D538A8  48 00 16 25 */	bl initBaseMtx__13daTagTWGate_cFv
/* 80D538AC  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80D538B0  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80D538B4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D538B8  38 00 00 01 */	li r0, 1
/* 80D538BC  98 1B 05 E0 */	stb r0, 0x5e0(r27)
lbl_80D538C0:
/* 80D538C0  80 9A 00 00 */	lwz r4, 0(r26)
/* 80D538C4  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D538C8  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D538CC  7C 04 00 00 */	cmpw r4, r0
/* 80D538D0  41 82 00 80 */	beq lbl_80D53950
/* 80D538D4  40 80 00 14 */	bge lbl_80D538E8
/* 80D538D8  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D538DC  7C 04 00 00 */	cmpw r4, r0
/* 80D538E0  40 80 00 18 */	bge lbl_80D538F8
/* 80D538E4  48 00 02 70 */	b lbl_80D53B54
lbl_80D538E8:
/* 80D538E8  38 03 30 34 */	addi r0, r3, 0x3034
/* 80D538EC  7C 04 00 00 */	cmpw r4, r0
/* 80D538F0  40 80 02 64 */	bge lbl_80D53B54
/* 80D538F4  48 00 01 E4 */	b lbl_80D53AD8
lbl_80D538F8:
/* 80D538F8  7F 63 DB 78 */	mr r3, r27
/* 80D538FC  48 00 16 8D */	bl downloadModels__13daTagTWGate_cFv
/* 80D53900  2C 03 00 01 */	cmpwi r3, 1
/* 80D53904  40 82 00 14 */	bne lbl_80D53918
/* 80D53908  7F A3 EB 78 */	mr r3, r29
/* 80D5390C  7F 84 E3 78 */	mr r4, r28
/* 80D53910  4B 2F 48 6C */	b cutEnd__16dEvent_manager_cFi
/* 80D53914  48 00 02 40 */	b lbl_80D53B54
lbl_80D53918:
/* 80D53918  2C 03 FF FF */	cmpwi r3, -1
/* 80D5391C  40 82 02 38 */	bne lbl_80D53B54
/* 80D53920  88 1B 05 E2 */	lbz r0, 0x5e2(r27)
/* 80D53924  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80D53928  38 1E 00 04 */	addi r0, r30, 4
/* 80D5392C  7C C0 1A 14 */	add r6, r0, r3
/* 80D53930  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80D53934  A8 86 00 18 */	lha r4, 0x18(r6)
/* 80D53938  88 06 00 1A */	lbz r0, 0x1a(r6)
/* 80D5393C  7C 05 07 74 */	extsb r5, r0
/* 80D53940  88 06 00 1B */	lbz r0, 0x1b(r6)
/* 80D53944  7C 06 07 74 */	extsb r6, r0
/* 80D53948  4B 2D 9C 0C */	b dComIfGp_setNextStage__FPCcsScSc
/* 80D5394C  48 00 02 08 */	b lbl_80D53B54
lbl_80D53950:
/* 80D53950  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D53954  A0 1F 4F A2 */	lhz r0, 0x4fa2(r31)
/* 80D53958  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5395C  41 82 00 34 */	beq lbl_80D53990
/* 80D53960  4B 2E F0 48 */	b onSkipFade__14dEvt_control_cFv
/* 80D53964  88 1B 05 E2 */	lbz r0, 0x5e2(r27)
/* 80D53968  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80D5396C  38 1E 00 04 */	addi r0, r30, 4
/* 80D53970  7C C0 1A 14 */	add r6, r0, r3
/* 80D53974  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80D53978  A8 86 00 18 */	lha r4, 0x18(r6)
/* 80D5397C  88 06 00 1A */	lbz r0, 0x1a(r6)
/* 80D53980  7C 05 07 74 */	extsb r5, r0
/* 80D53984  88 06 00 1B */	lbz r0, 0x1b(r6)
/* 80D53988  7C 06 07 74 */	extsb r6, r0
/* 80D5398C  4B 2D 9B C8 */	b dComIfGp_setNextStage__FPCcsScSc
lbl_80D53990:
/* 80D53990  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D53994  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D53998  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D5399C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D539A0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D539A4  38 80 00 4A */	li r4, 0x4a
/* 80D539A8  41 82 00 08 */	beq lbl_80D539B0
/* 80D539AC  38 80 00 2E */	li r4, 0x2e
lbl_80D539B0:
/* 80D539B0  88 7B 05 E1 */	lbz r3, 0x5e1(r27)
/* 80D539B4  38 03 00 01 */	addi r0, r3, 1
/* 80D539B8  98 1B 05 E1 */	stb r0, 0x5e1(r27)
/* 80D539BC  7C 03 20 00 */	cmpw r3, r4
/* 80D539C0  40 82 01 94 */	bne lbl_80D53B54
/* 80D539C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D539C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D539CC  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 80D539D0  38 61 00 24 */	addi r3, r1, 0x24
/* 80D539D4  38 80 00 00 */	li r4, 0
/* 80D539D8  A8 BA 04 E6 */	lha r5, 0x4e6(r26)
/* 80D539DC  3C A5 00 01 */	addis r5, r5, 1
/* 80D539E0  38 05 80 00 */	addi r0, r5, -32768
/* 80D539E4  7C 05 07 34 */	extsh r5, r0
/* 80D539E8  38 C0 00 00 */	li r6, 0
/* 80D539EC  4B 51 3A 08 */	b __ct__5csXyzFsss
/* 80D539F0  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80D539F4  4B 2B 93 70 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D539F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D539FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D53A00  A8 81 00 26 */	lha r4, 0x26(r1)
/* 80D53A04  4B 2B 8A 30 */	b mDoMtx_YrotM__FPA4_fs
/* 80D53A08  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D53A0C  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80D53A10  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80D53A14  4B 2B 93 88 */	b transM__14mDoMtx_stack_cFfff
/* 80D53A18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D53A1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D53A20  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D53A24  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D53A28  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D53A2C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D53A30  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80D53A34  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D53A38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D53A3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D53A40  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D53A44  38 80 00 00 */	li r4, 0
/* 80D53A48  90 81 00 08 */	stw r4, 8(r1)
/* 80D53A4C  38 00 FF FF */	li r0, -1
/* 80D53A50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D53A54  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D53A58  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D53A5C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D53A60  38 80 00 00 */	li r4, 0
/* 80D53A64  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086C5@ha */
/* 80D53A68  38 A5 86 C5 */	addi r5, r5, 0x86C5 /* 0x000086C5@l */
/* 80D53A6C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80D53A70  38 E0 00 00 */	li r7, 0
/* 80D53A74  39 01 00 24 */	addi r8, r1, 0x24
/* 80D53A78  39 20 00 00 */	li r9, 0
/* 80D53A7C  39 40 00 FF */	li r10, 0xff
/* 80D53A80  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D53A84  4B 2F 90 0C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D53A88  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080277@ha */
/* 80D53A8C  38 03 02 77 */	addi r0, r3, 0x0277 /* 0x00080277@l */
/* 80D53A90  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D53A94  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D53A98  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D53A9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D53AA0  38 81 00 20 */	addi r4, r1, 0x20
/* 80D53AA4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80D53AA8  38 C0 00 00 */	li r6, 0
/* 80D53AAC  38 E0 00 00 */	li r7, 0
/* 80D53AB0  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D53AB4  FC 40 08 90 */	fmr f2, f1
/* 80D53AB8  C0 7E 00 90 */	lfs f3, 0x90(r30)
/* 80D53ABC  FC 80 18 90 */	fmr f4, f3
/* 80D53AC0  39 00 00 00 */	li r8, 0
/* 80D53AC4  4B 55 7E C0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D53AC8  7F A3 EB 78 */	mr r3, r29
/* 80D53ACC  7F 84 E3 78 */	mr r4, r28
/* 80D53AD0  4B 2F 46 AC */	b cutEnd__16dEvent_manager_cFi
/* 80D53AD4  48 00 00 80 */	b lbl_80D53B54
lbl_80D53AD8:
/* 80D53AD8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D53ADC  A0 1F 4F A2 */	lhz r0, 0x4fa2(r31)
/* 80D53AE0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D53AE4  41 82 00 34 */	beq lbl_80D53B18
/* 80D53AE8  4B 2E EE C0 */	b onSkipFade__14dEvt_control_cFv
/* 80D53AEC  88 1B 05 E2 */	lbz r0, 0x5e2(r27)
/* 80D53AF0  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80D53AF4  38 1E 00 04 */	addi r0, r30, 4
/* 80D53AF8  7C C0 1A 14 */	add r6, r0, r3
/* 80D53AFC  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80D53B00  A8 86 00 18 */	lha r4, 0x18(r6)
/* 80D53B04  88 06 00 1A */	lbz r0, 0x1a(r6)
/* 80D53B08  7C 05 07 74 */	extsb r5, r0
/* 80D53B0C  88 06 00 1B */	lbz r0, 0x1b(r6)
/* 80D53B10  7C 06 07 74 */	extsb r6, r0
/* 80D53B14  4B 2D 9A 40 */	b dComIfGp_setNextStage__FPCcsScSc
lbl_80D53B18:
/* 80D53B18  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80D53B1C  38 80 00 01 */	li r4, 1
/* 80D53B20  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80D53B24  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D53B28  40 82 00 18 */	bne lbl_80D53B40
/* 80D53B2C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D53B30  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D53B34  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D53B38  41 82 00 08 */	beq lbl_80D53B40
/* 80D53B3C  38 80 00 00 */	li r4, 0
lbl_80D53B40:
/* 80D53B40  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D53B44  41 82 00 10 */	beq lbl_80D53B54
/* 80D53B48  7F A3 EB 78 */	mr r3, r29
/* 80D53B4C  7F 84 E3 78 */	mr r4, r28
/* 80D53B50  4B 2F 46 2C */	b cutEnd__16dEvent_manager_cFi
lbl_80D53B54:
/* 80D53B54  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80D53B58  28 00 00 02 */	cmplwi r0, 2
/* 80D53B5C  40 82 00 5C */	bne lbl_80D53BB8
/* 80D53B60  A8 9B 05 DC */	lha r4, 0x5dc(r27)
/* 80D53B64  2C 04 FF FF */	cmpwi r4, -1
/* 80D53B68  41 82 00 50 */	beq lbl_80D53BB8
/* 80D53B6C  7F A3 EB 78 */	mr r3, r29
/* 80D53B70  4B 2F 3F 08 */	b endCheck__16dEvent_manager_cFs
/* 80D53B74  2C 03 00 00 */	cmpwi r3, 0
/* 80D53B78  41 82 00 40 */	beq lbl_80D53BB8
/* 80D53B7C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D53B80  4B 2E E8 E8 */	b reset__14dEvt_control_cFv
/* 80D53B84  38 00 00 00 */	li r0, 0
/* 80D53B88  98 1B 05 E0 */	stb r0, 0x5e0(r27)
/* 80D53B8C  90 1B 05 88 */	stw r0, 0x588(r27)
/* 80D53B90  80 1B 05 88 */	lwz r0, 0x588(r27)
/* 80D53B94  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D53B98  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D53B9C  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D53BA0  7C 00 22 14 */	add r0, r0, r4
/* 80D53BA4  90 1B 05 84 */	stw r0, 0x584(r27)
/* 80D53BA8  7F 63 DB 78 */	mr r3, r27
/* 80D53BAC  81 9B 05 84 */	lwz r12, 0x584(r27)
/* 80D53BB0  4B 60 E4 D4 */	b __ptmf_scall
/* 80D53BB4  60 00 00 00 */	nop 
lbl_80D53BB8:
/* 80D53BB8  39 61 00 50 */	addi r11, r1, 0x50
/* 80D53BBC  4B 60 E6 60 */	b _restgpr_26
/* 80D53BC0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D53BC4  7C 08 03 A6 */	mtlr r0
/* 80D53BC8  38 21 00 50 */	addi r1, r1, 0x50
/* 80D53BCC  4E 80 00 20 */	blr 
