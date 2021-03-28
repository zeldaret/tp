lbl_80BD245C:
/* 80BD245C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD2460  7C 08 02 A6 */	mflr r0
/* 80BD2464  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD2468  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BD246C  7C 7F 1B 78 */	mr r31, r3
/* 80BD2470  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C3@ha */
/* 80BD2474  38 03 02 C3 */	addi r0, r3, 0x02C3 /* 0x000802C3@l */
/* 80BD2478  90 01 00 08 */	stw r0, 8(r1)
/* 80BD247C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD2480  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD2484  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD2488  38 81 00 08 */	addi r4, r1, 8
/* 80BD248C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BD2490  38 C0 00 00 */	li r6, 0
/* 80BD2494  38 E0 00 00 */	li r7, 0
/* 80BD2498  3D 00 80 BD */	lis r8, lit_3937@ha
/* 80BD249C  C0 28 31 3C */	lfs f1, lit_3937@l(r8)
/* 80BD24A0  FC 40 08 90 */	fmr f2, f1
/* 80BD24A4  3D 00 80 BD */	lis r8, lit_3938@ha
/* 80BD24A8  C0 68 31 40 */	lfs f3, lit_3938@l(r8)
/* 80BD24AC  FC 80 18 90 */	fmr f4, f3
/* 80BD24B0  39 00 00 00 */	li r8, 0
/* 80BD24B4  4B 6D 94 D0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD24B8  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80BD24BC  28 00 00 01 */	cmplwi r0, 1
/* 80BD24C0  40 82 00 0C */	bne lbl_80BD24CC
/* 80BD24C4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80BD24C8  4B FF FF 95 */	bl SetB_Close__14daObjCRVGATE_cFv
lbl_80BD24CC:
/* 80BD24CC  38 00 00 04 */	li r0, 4
/* 80BD24D0  98 1F 05 AF */	stb r0, 0x5af(r31)
/* 80BD24D4  38 00 0C 18 */	li r0, 0xc18
/* 80BD24D8  B0 1F 06 4A */	sth r0, 0x64a(r31)
/* 80BD24DC  A8 7F 06 4A */	lha r3, 0x64a(r31)
/* 80BD24E0  4B 79 2B F0 */	b abs
/* 80BD24E4  2C 03 05 00 */	cmpwi r3, 0x500
/* 80BD24E8  40 80 00 0C */	bge lbl_80BD24F4
/* 80BD24EC  38 00 05 00 */	li r0, 0x500
/* 80BD24F0  B0 1F 06 4A */	sth r0, 0x64a(r31)
lbl_80BD24F4:
/* 80BD24F4  A8 1F 06 46 */	lha r0, 0x646(r31)
/* 80BD24F8  2C 00 00 00 */	cmpwi r0, 0
/* 80BD24FC  40 81 00 10 */	ble lbl_80BD250C
/* 80BD2500  38 00 F5 D0 */	li r0, -2608
/* 80BD2504  B0 1F 05 A8 */	sth r0, 0x5a8(r31)
/* 80BD2508  48 00 00 0C */	b lbl_80BD2514
lbl_80BD250C:
/* 80BD250C  38 00 0A 30 */	li r0, 0xa30
/* 80BD2510  B0 1F 05 A8 */	sth r0, 0x5a8(r31)
lbl_80BD2514:
/* 80BD2514  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BD2518  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD251C  7C 08 03 A6 */	mtlr r0
/* 80BD2520  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD2524  4E 80 00 20 */	blr 
