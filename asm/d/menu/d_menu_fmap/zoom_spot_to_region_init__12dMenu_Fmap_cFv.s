lbl_801C93CC:
/* 801C93CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C93D0  7C 08 02 A6 */	mflr r0
/* 801C93D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C93D8  38 00 00 0A */	li r0, 0xa
/* 801C93DC  B0 03 02 14 */	sth r0, 0x214(r3)
/* 801C93E0  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C93E4  D0 23 01 EC */	stfs f1, 0x1ec(r3)
/* 801C93E8  38 00 00 BD */	li r0, 0xbd
/* 801C93EC  90 01 00 08 */	stw r0, 8(r1)
/* 801C93F0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C93F4  38 81 00 08 */	addi r4, r1, 8
/* 801C93F8  38 A0 00 00 */	li r5, 0
/* 801C93FC  38 C0 00 00 */	li r6, 0
/* 801C9400  38 E0 00 00 */	li r7, 0
/* 801C9404  FC 40 08 90 */	fmr f2, f1
/* 801C9408  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C940C  FC 80 18 90 */	fmr f4, f3
/* 801C9410  39 00 00 00 */	li r8, 0
/* 801C9414  48 0E 25 71 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C9418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C941C  7C 08 03 A6 */	mtlr r0
/* 801C9420  38 21 00 10 */	addi r1, r1, 0x10
/* 801C9424  4E 80 00 20 */	blr 
