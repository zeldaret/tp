lbl_800CEAF4:
/* 800CEAF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CEAF8  7C 08 02 A6 */	mflr r0
/* 800CEAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CEB00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CEB04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CEB08  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800CEB0C  60 00 20 00 */	ori r0, r0, 0x2000
/* 800CEB10  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800CEB14  38 00 00 37 */	li r0, 0x37
/* 800CEB18  90 01 00 08 */	stw r0, 8(r1)
/* 800CEB1C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800CEB20  38 81 00 08 */	addi r4, r1, 8
/* 800CEB24  38 A0 00 00 */	li r5, 0
/* 800CEB28  38 C0 00 00 */	li r6, 0
/* 800CEB2C  38 E0 00 00 */	li r7, 0
/* 800CEB30  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800CEB34  FC 40 08 90 */	fmr f2, f1
/* 800CEB38  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800CEB3C  FC 80 18 90 */	fmr f4, f3
/* 800CEB40  39 00 00 00 */	li r8, 0
/* 800CEB44  48 1D CE 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 800CEB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CEB4C  7C 08 03 A6 */	mtlr r0
/* 800CEB50  38 21 00 10 */	addi r1, r1, 0x10
/* 800CEB54  4E 80 00 20 */	blr 
