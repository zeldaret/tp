lbl_80C921A8:
/* 80C921A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C921AC  7C 08 02 A6 */	mflr r0
/* 80C921B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C921B4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C921B8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C921BC  7C 65 1B 78 */	mr r5, r3
/* 80C921C0  3C 60 80 C9 */	lis r3, l_B_ling_bmd_table@ha /* 0x80C92C50@ha */
/* 80C921C4  3B E3 2C 50 */	addi r31, r3, l_B_ling_bmd_table@l /* 0x80C92C50@l */
/* 80C921C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C921CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C921D0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C921D4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C921D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C921DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C921E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C921E4  38 00 00 00 */	li r0, 0
/* 80C921E8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80C921EC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80C921F0  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80C921F4  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80C921F8  38 65 04 D0 */	addi r3, r5, 0x4d0
/* 80C921FC  1C 04 01 C0 */	mulli r0, r4, 0x1c0
/* 80C92200  7F C5 02 14 */	add r30, r5, r0
/* 80C92204  88 1E 07 2E */	lbz r0, 0x72e(r30)
/* 80C92208  54 00 10 3A */	slwi r0, r0, 2
/* 80C9220C  38 9F 00 28 */	addi r4, r31, 0x28
/* 80C92210  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C92214  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 80C92218  7C 05 07 74 */	extsb r5, r0
/* 80C9221C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80C92220  38 E1 00 14 */	addi r7, r1, 0x14
/* 80C92224  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C92228  FC 40 08 90 */	fmr f2, f1
/* 80C9222C  4B 38 9F D1 */	bl fopAcM_createItemForSimpleDemo__FPC4cXyziiPC5csXyzPC4cXyzff
/* 80C92230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C92234  38 C3 61 C0 */	addi r6, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C92238  80 A6 5D C4 */	lwz r5, 0x5dc4(r6)
/* 80C9223C  88 9E 07 2E */	lbz r4, 0x72e(r30)
/* 80C92240  38 7F 00 44 */	addi r3, r31, 0x44
/* 80C92244  7C 03 20 AE */	lbzx r0, r3, r4
/* 80C92248  7C 05 02 14 */	add r0, r5, r0
/* 80C9224C  90 06 5D C4 */	stw r0, 0x5dc4(r6)
/* 80C92250  54 80 10 3A */	slwi r0, r4, 2
/* 80C92254  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80C92258  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C9225C  90 01 00 08 */	stw r0, 8(r1)
/* 80C92260  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C92264  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C92268  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9226C  38 81 00 08 */	addi r4, r1, 8
/* 80C92270  38 A0 00 00 */	li r5, 0
/* 80C92274  38 C0 00 00 */	li r6, 0
/* 80C92278  38 E0 00 00 */	li r7, 0
/* 80C9227C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80C92280  FC 40 08 90 */	fmr f2, f1
/* 80C92284  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80C92288  FC 80 18 90 */	fmr f4, f3
/* 80C9228C  39 00 00 00 */	li r8, 0
/* 80C92290  4B 61 96 F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C92294  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C92298  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C9229C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C922A0  7C 08 03 A6 */	mtlr r0
/* 80C922A4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C922A8  4E 80 00 20 */	blr 
