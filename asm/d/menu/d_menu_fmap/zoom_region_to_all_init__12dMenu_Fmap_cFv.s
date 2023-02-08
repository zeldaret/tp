lbl_801C83E0:
/* 801C83E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C83E4  7C 08 02 A6 */	mflr r0
/* 801C83E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C83EC  38 00 00 0A */	li r0, 0xa
/* 801C83F0  B0 03 02 14 */	sth r0, 0x214(r3)
/* 801C83F4  38 00 00 BD */	li r0, 0xbd
/* 801C83F8  90 01 00 08 */	stw r0, 8(r1)
/* 801C83FC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C8400  38 81 00 08 */	addi r4, r1, 8
/* 801C8404  38 A0 00 00 */	li r5, 0
/* 801C8408  38 C0 00 00 */	li r6, 0
/* 801C840C  38 E0 00 00 */	li r7, 0
/* 801C8410  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C8414  FC 40 08 90 */	fmr f2, f1
/* 801C8418  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C841C  FC 80 18 90 */	fmr f4, f3
/* 801C8420  39 00 00 00 */	li r8, 0
/* 801C8424  48 0E 35 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C8428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C842C  7C 08 03 A6 */	mtlr r0
/* 801C8430  38 21 00 10 */	addi r1, r1, 0x10
/* 801C8434  4E 80 00 20 */	blr 
