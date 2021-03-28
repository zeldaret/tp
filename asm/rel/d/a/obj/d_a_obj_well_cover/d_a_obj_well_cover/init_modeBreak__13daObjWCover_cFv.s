lbl_80D36790:
/* 80D36790  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D36794  7C 08 02 A6 */	mflr r0
/* 80D36798  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D3679C  39 61 00 50 */	addi r11, r1, 0x50
/* 80D367A0  4B 62 BA 30 */	b _savegpr_26
/* 80D367A4  7C 7E 1B 78 */	mr r30, r3
/* 80D367A8  3C 60 80 D3 */	lis r3, lit_3794@ha
/* 80D367AC  3B E3 6A 0C */	addi r31, r3, lit_3794@l
/* 80D367B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D367B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D367B8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D367BC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D367C0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D367C4  7C 05 07 74 */	extsb r5, r0
/* 80D367C8  4B 2F EA 38 */	b onSwitch__10dSv_info_cFii
/* 80D367CC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D367D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D367D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80D367D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D367DC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D367E0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D367E4  4B 2D 65 80 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D367E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D367EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D367F0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80D367F4  4B 2D 5C 40 */	b mDoMtx_YrotM__FPA4_fs
/* 80D367F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D367FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D36800  38 81 00 20 */	addi r4, r1, 0x20
/* 80D36804  7C 85 23 78 */	mr r5, r4
/* 80D36808  4B 61 05 64 */	b PSMTXMultVec
/* 80D3680C  3B 40 00 00 */	li r26, 0
/* 80D36810  3B A0 00 00 */	li r29, 0
/* 80D36814  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D36818  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80D3681C  3B 9F 00 28 */	addi r28, r31, 0x28
lbl_80D36820:
/* 80D36820  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80D36824  38 80 00 00 */	li r4, 0
/* 80D36828  90 81 00 08 */	stw r4, 8(r1)
/* 80D3682C  38 00 FF FF */	li r0, -1
/* 80D36830  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D36834  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D36838  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D3683C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D36840  38 80 00 00 */	li r4, 0
/* 80D36844  7C BC EA 2E */	lhzx r5, r28, r29
/* 80D36848  38 C1 00 20 */	addi r6, r1, 0x20
/* 80D3684C  38 E0 00 00 */	li r7, 0
/* 80D36850  39 00 00 00 */	li r8, 0
/* 80D36854  39 20 00 00 */	li r9, 0
/* 80D36858  39 40 00 FF */	li r10, 0xff
/* 80D3685C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80D36860  4B 31 62 30 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D36864  3B 5A 00 01 */	addi r26, r26, 1
/* 80D36868  2C 1A 00 03 */	cmpwi r26, 3
/* 80D3686C  3B BD 00 02 */	addi r29, r29, 2
/* 80D36870  41 80 FF B0 */	blt lbl_80D36820
/* 80D36874  7F C3 F3 78 */	mr r3, r30
/* 80D36878  4B 2E 34 04 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80D3687C  38 00 00 01 */	li r0, 1
/* 80D36880  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 80D36884  39 61 00 50 */	addi r11, r1, 0x50
/* 80D36888  4B 62 B9 94 */	b _restgpr_26
/* 80D3688C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D36890  7C 08 03 A6 */	mtlr r0
/* 80D36894  38 21 00 50 */	addi r1, r1, 0x50
/* 80D36898  4E 80 00 20 */	blr 
