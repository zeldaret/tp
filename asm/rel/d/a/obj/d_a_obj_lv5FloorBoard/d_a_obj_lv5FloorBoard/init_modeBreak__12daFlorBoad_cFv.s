lbl_80C6AC9C:
/* 80C6AC9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C6ACA0  7C 08 02 A6 */	mflr r0
/* 80C6ACA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C6ACA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C6ACAC  7C 7F 1B 78 */	mr r31, r3
/* 80C6ACB0  88 83 07 26 */	lbz r4, 0x726(r3)
/* 80C6ACB4  28 04 00 FF */	cmplwi r4, 0xff
/* 80C6ACB8  41 82 00 18 */	beq lbl_80C6ACD0
/* 80C6ACBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6ACC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6ACC4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6ACC8  7C 05 07 74 */	extsb r5, r0
/* 80C6ACCC  4B 3C A5 35 */	bl onSwitch__10dSv_info_cFii
lbl_80C6ACD0:
/* 80C6ACD0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C6ACD4  7C 03 07 74 */	extsb r3, r0
/* 80C6ACD8  4B 3C 23 95 */	bl dComIfGp_getReverb__Fi
/* 80C6ACDC  7C 67 1B 78 */	mr r7, r3
/* 80C6ACE0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801DC@ha */
/* 80C6ACE4  38 03 01 DC */	addi r0, r3, 0x01DC /* 0x000801DC@l */
/* 80C6ACE8  90 01 00 08 */	stw r0, 8(r1)
/* 80C6ACEC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C6ACF0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C6ACF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6ACF8  38 81 00 08 */	addi r4, r1, 8
/* 80C6ACFC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C6AD00  38 C0 00 00 */	li r6, 0
/* 80C6AD04  3D 00 80 C7 */	lis r8, lit_3656@ha /* 0x80C6B148@ha */
/* 80C6AD08  C0 28 B1 48 */	lfs f1, lit_3656@l(r8)  /* 0x80C6B148@l */
/* 80C6AD0C  FC 40 08 90 */	fmr f2, f1
/* 80C6AD10  3D 00 80 C7 */	lis r8, lit_3891@ha /* 0x80C6B188@ha */
/* 80C6AD14  C0 68 B1 88 */	lfs f3, lit_3891@l(r8)  /* 0x80C6B188@l */
/* 80C6AD18  FC 80 18 90 */	fmr f4, f3
/* 80C6AD1C  39 00 00 00 */	li r8, 0
/* 80C6AD20  4B 64 0C 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C6AD24  38 00 00 01 */	li r0, 1
/* 80C6AD28  98 1F 07 24 */	stb r0, 0x724(r31)
/* 80C6AD2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C6AD30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C6AD34  7C 08 03 A6 */	mtlr r0
/* 80C6AD38  38 21 00 20 */	addi r1, r1, 0x20
/* 80C6AD3C  4E 80 00 20 */	blr 
