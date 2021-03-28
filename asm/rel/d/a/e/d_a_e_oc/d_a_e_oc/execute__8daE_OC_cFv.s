lbl_807348DC:
/* 807348DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807348E0  7C 08 02 A6 */	mflr r0
/* 807348E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 807348E8  39 61 00 50 */	addi r11, r1, 0x50
/* 807348EC  4B C2 D8 F0 */	b _savegpr_29
/* 807348F0  7C 7E 1B 78 */	mr r30, r3
/* 807348F4  3C 60 80 73 */	lis r3, lit_3911@ha
/* 807348F8  3B E3 5B 28 */	addi r31, r3, lit_3911@l
/* 807348FC  A8 7E 06 C0 */	lha r3, 0x6c0(r30)
/* 80734900  2C 03 00 00 */	cmpwi r3, 0
/* 80734904  41 82 00 0C */	beq lbl_80734910
/* 80734908  38 03 FF FF */	addi r0, r3, -1
/* 8073490C  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
lbl_80734910:
/* 80734910  A8 7E 06 C2 */	lha r3, 0x6c2(r30)
/* 80734914  2C 03 00 00 */	cmpwi r3, 0
/* 80734918  41 82 00 0C */	beq lbl_80734924
/* 8073491C  38 03 FF FF */	addi r0, r3, -1
/* 80734920  B0 1E 06 C2 */	sth r0, 0x6c2(r30)
lbl_80734924:
/* 80734924  A8 7E 06 C4 */	lha r3, 0x6c4(r30)
/* 80734928  2C 03 00 00 */	cmpwi r3, 0
/* 8073492C  41 82 00 0C */	beq lbl_80734938
/* 80734930  38 03 FF FF */	addi r0, r3, -1
/* 80734934  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
lbl_80734938:
/* 80734938  A8 7E 06 C6 */	lha r3, 0x6c6(r30)
/* 8073493C  2C 03 00 00 */	cmpwi r3, 0
/* 80734940  41 82 00 0C */	beq lbl_8073494C
/* 80734944  38 03 FF FF */	addi r0, r3, -1
/* 80734948  B0 1E 06 C6 */	sth r0, 0x6c6(r30)
lbl_8073494C:
/* 8073494C  A8 7E 06 CC */	lha r3, 0x6cc(r30)
/* 80734950  2C 03 00 00 */	cmpwi r3, 0
/* 80734954  41 82 00 0C */	beq lbl_80734960
/* 80734958  38 03 FF FF */	addi r0, r3, -1
/* 8073495C  B0 1E 06 CC */	sth r0, 0x6cc(r30)
lbl_80734960:
/* 80734960  A8 7E 06 CA */	lha r3, 0x6ca(r30)
/* 80734964  2C 03 00 00 */	cmpwi r3, 0
/* 80734968  41 82 00 0C */	beq lbl_80734974
/* 8073496C  38 03 FF FF */	addi r0, r3, -1
/* 80734970  B0 1E 06 CA */	sth r0, 0x6ca(r30)
lbl_80734974:
/* 80734974  A8 7E 06 D6 */	lha r3, 0x6d6(r30)
/* 80734978  2C 03 00 00 */	cmpwi r3, 0
/* 8073497C  41 82 00 0C */	beq lbl_80734988
/* 80734980  38 03 FF FF */	addi r0, r3, -1
/* 80734984  B0 1E 06 D6 */	sth r0, 0x6d6(r30)
lbl_80734988:
/* 80734988  A8 7E 06 CE */	lha r3, 0x6ce(r30)
/* 8073498C  2C 03 00 00 */	cmpwi r3, 0
/* 80734990  41 82 00 0C */	beq lbl_8073499C
/* 80734994  38 03 FF FF */	addi r0, r3, -1
/* 80734998  B0 1E 06 CE */	sth r0, 0x6ce(r30)
lbl_8073499C:
/* 8073499C  A8 7E 06 C8 */	lha r3, 0x6c8(r30)
/* 807349A0  2C 03 00 00 */	cmpwi r3, 0
/* 807349A4  41 82 01 04 */	beq lbl_80734AA8
/* 807349A8  38 03 FF FF */	addi r0, r3, -1
/* 807349AC  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
/* 807349B0  A8 1E 06 C8 */	lha r0, 0x6c8(r30)
/* 807349B4  2C 00 00 00 */	cmpwi r0, 0
/* 807349B8  40 82 00 F0 */	bne lbl_80734AA8
/* 807349BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807349C0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 807349C4  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 807349C8  7C 00 07 74 */	extsb r0, r0
/* 807349CC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807349D0  7C 64 02 14 */	add r3, r4, r0
/* 807349D4  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 807349D8  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 807349DC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807349E0  D0 1E 06 EC */	stfs f0, 0x6ec(r30)
/* 807349E4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807349E8  D0 1E 06 F0 */	stfs f0, 0x6f0(r30)
/* 807349EC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807349F0  D0 1E 06 F4 */	stfs f0, 0x6f4(r30)
/* 807349F4  C0 3E 06 F0 */	lfs f1, 0x6f0(r30)
/* 807349F8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 807349FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80734A00  D0 1E 06 F0 */	stfs f0, 0x6f0(r30)
/* 80734A04  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 80734A08  D0 1E 07 04 */	stfs f0, 0x704(r30)
/* 80734A0C  C0 1E 06 F8 */	lfs f0, 0x6f8(r30)
/* 80734A10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80734A14  C0 1E 06 FC */	lfs f0, 0x6fc(r30)
/* 80734A18  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80734A1C  C0 1E 07 00 */	lfs f0, 0x700(r30)
/* 80734A20  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80734A24  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 80734A28  D0 01 00 08 */	stfs f0, 8(r1)
/* 80734A2C  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80734A30  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80734A34  C0 1E 06 F4 */	lfs f0, 0x6f4(r30)
/* 80734A38  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80734A3C  38 7D 02 48 */	addi r3, r29, 0x248
/* 80734A40  38 81 00 14 */	addi r4, r1, 0x14
/* 80734A44  38 A1 00 08 */	addi r5, r1, 8
/* 80734A48  C0 3E 07 04 */	lfs f1, 0x704(r30)
/* 80734A4C  38 C0 00 00 */	li r6, 0
/* 80734A50  4B A4 C1 50 */	b Reset__9dCamera_cF4cXyz4cXyzfs
/* 80734A54  38 7D 02 48 */	addi r3, r29, 0x248
/* 80734A58  4B A2 CA 54 */	b Start__9dCamera_cFv
/* 80734A5C  38 7D 02 48 */	addi r3, r29, 0x248
/* 80734A60  38 80 00 00 */	li r4, 0
/* 80734A64  4B A2 E5 A8 */	b SetTrimSize__9dCamera_cFl
/* 80734A68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80734A6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80734A70  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80734A74  4B 90 D9 F4 */	b reset__14dEvt_control_cFv
/* 80734A78  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80734A7C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80734A80  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80734A84  3C 60 80 73 */	lis r3, s_demo_oc__FPvPv@ha
/* 80734A88  38 63 D2 E8 */	addi r3, r3, s_demo_oc__FPvPv@l
/* 80734A8C  7F C4 F3 78 */	mr r4, r30
/* 80734A90  4B 8E C8 A8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80734A94  28 03 00 00 */	cmplwi r3, 0
/* 80734A98  41 82 00 10 */	beq lbl_80734AA8
/* 80734A9C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80734AA0  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80734AA4  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80734AA8:
/* 80734AA8  7F C3 F3 78 */	mr r3, r30
/* 80734AAC  4B FF F4 75 */	bl action__8daE_OC_cFv
/* 80734AB0  7F C3 F3 78 */	mr r3, r30
/* 80734AB4  4B FF FB 25 */	bl mtx_set__8daE_OC_cFv
/* 80734AB8  7F C3 F3 78 */	mr r3, r30
/* 80734ABC  4B FF FB DD */	bl cc_set__8daE_OC_cFv
/* 80734AC0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80734AC4  80 63 00 04 */	lwz r3, 4(r3)
/* 80734AC8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80734ACC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80734AD0  38 63 00 30 */	addi r3, r3, 0x30
/* 80734AD4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80734AD8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80734ADC  4B C1 19 D4 */	b PSMTXCopy
/* 80734AE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80734AE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80734AE8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80734AEC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80734AF0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80734AF4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80734AF8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80734AFC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80734B00  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80734B04  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80734B08  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80734B0C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80734B10  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80734B14  7F C3 F3 78 */	mr r3, r30
/* 80734B18  38 9E 05 C4 */	addi r4, r30, 0x5c4
/* 80734B1C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80734B20  38 C1 00 20 */	addi r6, r1, 0x20
/* 80734B24  48 00 0B A1 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 80734B28  38 60 00 01 */	li r3, 1
/* 80734B2C  39 61 00 50 */	addi r11, r1, 0x50
/* 80734B30  4B C2 D6 F8 */	b _restgpr_29
/* 80734B34  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80734B38  7C 08 03 A6 */	mtlr r0
/* 80734B3C  38 21 00 50 */	addi r1, r1, 0x50
/* 80734B40  4E 80 00 20 */	blr 
