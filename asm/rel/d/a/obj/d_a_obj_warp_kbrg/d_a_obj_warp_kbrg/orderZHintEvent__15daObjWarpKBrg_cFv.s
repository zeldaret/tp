lbl_80D27A38:
/* 80D27A38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D27A3C  7C 08 02 A6 */	mflr r0
/* 80D27A40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D27A44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D27A48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D27A4C  7C 7F 1B 78 */	mr r31, r3
/* 80D27A50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D27A54  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D27A58  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80D27A5C  48 00 10 85 */	bl checkTalkDistance__15daObjWarpKBrg_cFv
/* 80D27A60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D27A64  41 82 00 B0 */	beq lbl_80D27B14
/* 80D27A68  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D27A6C  60 00 00 01 */	ori r0, r0, 1
/* 80D27A70  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80D27A74  7F C3 F3 78 */	mr r3, r30
/* 80D27A78  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D27A7C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80D27A80  7D 89 03 A6 */	mtctr r12
/* 80D27A84  4E 80 04 21 */	bctrl 
/* 80D27A88  28 03 00 00 */	cmplwi r3, 0
/* 80D27A8C  40 82 00 88 */	bne lbl_80D27B14
/* 80D27A90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D27A94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D27A98  38 63 5B 48 */	addi r3, r3, 0x5b48
/* 80D27A9C  7F E4 FB 78 */	mr r4, r31
/* 80D27AA0  38 A0 01 FF */	li r5, 0x1ff
/* 80D27AA4  4B 34 BE 58 */	b request__10dAttHint_cFP10fopAc_ac_ci
/* 80D27AA8  88 1F 06 9A */	lbz r0, 0x69a(r31)
/* 80D27AAC  28 00 00 00 */	cmplwi r0, 0
/* 80D27AB0  40 82 00 64 */	bne lbl_80D27B14
/* 80D27AB4  38 00 00 01 */	li r0, 1
/* 80D27AB8  98 1F 06 9A */	stb r0, 0x69a(r31)
/* 80D27ABC  88 1F 06 9B */	lbz r0, 0x69b(r31)
/* 80D27AC0  28 00 00 00 */	cmplwi r0, 0
/* 80D27AC4  40 82 00 48 */	bne lbl_80D27B0C
/* 80D27AC8  38 00 00 0E */	li r0, 0xe
/* 80D27ACC  90 01 00 08 */	stw r0, 8(r1)
/* 80D27AD0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D27AD4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D27AD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D27ADC  38 81 00 08 */	addi r4, r1, 8
/* 80D27AE0  38 A0 00 00 */	li r5, 0
/* 80D27AE4  38 C0 00 00 */	li r6, 0
/* 80D27AE8  38 E0 00 00 */	li r7, 0
/* 80D27AEC  3D 00 80 D3 */	lis r8, lit_3964@ha
/* 80D27AF0  C0 28 96 34 */	lfs f1, lit_3964@l(r8)
/* 80D27AF4  FC 40 08 90 */	fmr f2, f1
/* 80D27AF8  3D 00 80 D3 */	lis r8, lit_4071@ha
/* 80D27AFC  C0 68 96 38 */	lfs f3, lit_4071@l(r8)
/* 80D27B00  FC 80 18 90 */	fmr f4, f3
/* 80D27B04  39 00 00 00 */	li r8, 0
/* 80D27B08  4B 58 3E 7C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D27B0C:
/* 80D27B0C  38 00 00 3C */	li r0, 0x3c
/* 80D27B10  98 1F 06 9B */	stb r0, 0x69b(r31)
lbl_80D27B14:
/* 80D27B14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D27B18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D27B1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D27B20  7C 08 03 A6 */	mtlr r0
/* 80D27B24  38 21 00 20 */	addi r1, r1, 0x20
/* 80D27B28  4E 80 00 20 */	blr 
