lbl_8018FB80:
/* 8018FB80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018FB84  7C 08 02 A6 */	mflr r0
/* 8018FB88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018FB8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018FB90  7C 7F 1B 78 */	mr r31, r3
/* 8018FB94  7C 86 23 78 */	mr r6, r4
/* 8018FB98  38 00 00 A0 */	li r0, 0xa0
/* 8018FB9C  90 01 00 08 */	stw r0, 8(r1)
/* 8018FBA0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018FBA4  38 81 00 08 */	addi r4, r1, 8
/* 8018FBA8  38 A0 00 00 */	li r5, 0
/* 8018FBAC  54 C6 06 3E */	clrlwi r6, r6, 0x18
/* 8018FBB0  38 E0 00 00 */	li r7, 0
/* 8018FBB4  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018FBB8  FC 40 08 90 */	fmr f2, f1
/* 8018FBBC  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 8018FBC0  FC 80 18 90 */	fmr f4, f3
/* 8018FBC4  39 00 00 00 */	li r8, 0
/* 8018FBC8  48 11 BD BD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8018FBCC  7F E3 FB 78 */	mr r3, r31
/* 8018FBD0  4B FF 9B BD */	bl yesnoSelectAnmSet__14dFile_select_cFv
/* 8018FBD4  88 1F 02 71 */	lbz r0, 0x271(r31)
/* 8018FBD8  98 1F 02 72 */	stb r0, 0x272(r31)
/* 8018FBDC  38 00 00 19 */	li r0, 0x19
/* 8018FBE0  98 1F 02 71 */	stb r0, 0x271(r31)
/* 8018FBE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018FBE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018FBEC  7C 08 03 A6 */	mtlr r0
/* 8018FBF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8018FBF4  4E 80 00 20 */	blr 
