lbl_80BD2338:
/* 80BD2338  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BD233C  7C 08 02 A6 */	mflr r0
/* 80BD2340  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BD2344  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BD2348  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BD234C  7C 7F 1B 78 */	mr r31, r3
/* 80BD2350  3C 80 80 BD */	lis r4, ccCylSrc@ha
/* 80BD2354  3B C4 30 C0 */	addi r30, r4, ccCylSrc@l
/* 80BD2358  A8 A3 06 4A */	lha r5, 0x64a(r3)
/* 80BD235C  2C 05 00 10 */	cmpwi r5, 0x10
/* 80BD2360  40 81 00 E0 */	ble lbl_80BD2440
/* 80BD2364  38 7F 06 46 */	addi r3, r31, 0x646
/* 80BD2368  A8 9F 05 A8 */	lha r4, 0x5a8(r31)
/* 80BD236C  4B 69 E8 24 */	b cLib_chaseAngleS__FPsss
/* 80BD2370  A8 7F 06 46 */	lha r3, 0x646(r31)
/* 80BD2374  A8 1F 05 A8 */	lha r0, 0x5a8(r31)
/* 80BD2378  7C 03 00 00 */	cmpw r3, r0
/* 80BD237C  40 82 00 C8 */	bne lbl_80BD2444
/* 80BD2380  88 1F 05 A4 */	lbz r0, 0x5a4(r31)
/* 80BD2384  28 00 00 00 */	cmplwi r0, 0
/* 80BD2388  40 82 00 4C */	bne lbl_80BD23D4
/* 80BD238C  38 00 00 01 */	li r0, 1
/* 80BD2390  98 1F 05 A4 */	stb r0, 0x5a4(r31)
/* 80BD2394  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C4@ha */
/* 80BD2398  38 03 02 C4 */	addi r0, r3, 0x02C4 /* 0x000802C4@l */
/* 80BD239C  90 01 00 08 */	stw r0, 8(r1)
/* 80BD23A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD23A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD23A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD23AC  38 81 00 08 */	addi r4, r1, 8
/* 80BD23B0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BD23B4  38 C0 00 00 */	li r6, 0
/* 80BD23B8  38 E0 00 00 */	li r7, 0
/* 80BD23BC  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80BD23C0  FC 40 08 90 */	fmr f2, f1
/* 80BD23C4  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80BD23C8  FC 80 18 90 */	fmr f4, f3
/* 80BD23CC  39 00 00 00 */	li r8, 0
/* 80BD23D0  4B 6D 95 B4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BD23D4:
/* 80BD23D4  A8 1F 06 4A */	lha r0, 0x64a(r31)
/* 80BD23D8  C8 5E 00 50 */	lfd f2, 0x50(r30)
/* 80BD23DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BD23E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD23E4  3C 60 43 30 */	lis r3, 0x4330
/* 80BD23E8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80BD23EC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BD23F0  EC 20 10 28 */	fsubs f1, f0, f2
/* 80BD23F4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80BD23F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BD23FC  FC 00 00 1E */	fctiwz f0, f0
/* 80BD2400  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BD2404  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80BD2408  B0 1F 06 4A */	sth r0, 0x64a(r31)
/* 80BD240C  C8 3E 00 D0 */	lfd f1, 0xd0(r30)
/* 80BD2410  A8 1F 05 A8 */	lha r0, 0x5a8(r31)
/* 80BD2414  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BD2418  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD241C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80BD2420  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BD2424  FC 00 10 28 */	fsub f0, f0, f2
/* 80BD2428  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD242C  FC 00 00 1E */	fctiwz f0, f0
/* 80BD2430  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BD2434  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BD2438  B0 1F 05 A8 */	sth r0, 0x5a8(r31)
/* 80BD243C  48 00 00 08 */	b lbl_80BD2444
lbl_80BD2440:
/* 80BD2440  4B FF EC D1 */	bl CloseAction__14daObjCRVGATE_cFv
lbl_80BD2444:
/* 80BD2444  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BD2448  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BD244C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BD2450  7C 08 03 A6 */	mtlr r0
/* 80BD2454  38 21 00 40 */	addi r1, r1, 0x40
/* 80BD2458  4E 80 00 20 */	blr 
