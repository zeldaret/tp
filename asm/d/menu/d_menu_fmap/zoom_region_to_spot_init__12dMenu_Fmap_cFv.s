lbl_801C92A4:
/* 801C92A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C92A8  7C 08 02 A6 */	mflr r0
/* 801C92AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C92B0  38 00 00 00 */	li r0, 0
/* 801C92B4  B0 03 02 14 */	sth r0, 0x214(r3)
/* 801C92B8  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801C92BC  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 801C92C0  38 00 00 BC */	li r0, 0xbc
/* 801C92C4  90 01 00 08 */	stw r0, 8(r1)
/* 801C92C8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C92CC  38 81 00 08 */	addi r4, r1, 8
/* 801C92D0  38 A0 00 00 */	li r5, 0
/* 801C92D4  38 C0 00 00 */	li r6, 0
/* 801C92D8  38 E0 00 00 */	li r7, 0
/* 801C92DC  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C92E0  FC 40 08 90 */	fmr f2, f1
/* 801C92E4  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C92E8  FC 80 18 90 */	fmr f4, f3
/* 801C92EC  39 00 00 00 */	li r8, 0
/* 801C92F0  48 0E 26 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C92F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C92F8  7C 08 03 A6 */	mtlr r0
/* 801C92FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C9300  4E 80 00 20 */	blr 
