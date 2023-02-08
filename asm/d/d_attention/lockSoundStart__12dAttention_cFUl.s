lbl_80072D80:
/* 80072D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80072D84  7C 08 02 A6 */	mflr r0
/* 80072D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80072D8C  80 03 03 34 */	lwz r0, 0x334(r3)
/* 80072D90  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80072D94  40 82 00 34 */	bne lbl_80072DC8
/* 80072D98  90 81 00 08 */	stw r4, 8(r1)
/* 80072D9C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80072DA0  38 81 00 08 */	addi r4, r1, 8
/* 80072DA4  38 A0 00 00 */	li r5, 0
/* 80072DA8  38 C0 00 00 */	li r6, 0
/* 80072DAC  38 E0 00 00 */	li r7, 0
/* 80072DB0  C0 22 8C 58 */	lfs f1, lit_4073(r2)
/* 80072DB4  FC 40 08 90 */	fmr f2, f1
/* 80072DB8  C0 62 8C 90 */	lfs f3, lit_4562(r2)
/* 80072DBC  FC 80 18 90 */	fmr f4, f3
/* 80072DC0  39 00 00 00 */	li r8, 0
/* 80072DC4  48 23 8B C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80072DC8:
/* 80072DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80072DCC  7C 08 03 A6 */	mtlr r0
/* 80072DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80072DD4  4E 80 00 20 */	blr 
