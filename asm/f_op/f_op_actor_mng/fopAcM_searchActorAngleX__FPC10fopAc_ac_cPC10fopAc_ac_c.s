lbl_8001A738:
/* 8001A738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001A73C  7C 08 02 A6 */	mflr r0
/* 8001A740  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001A744  C0 24 04 D0 */	lfs f1, 0x4d0(r4)
/* 8001A748  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8001A74C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8001A750  C0 24 04 D8 */	lfs f1, 0x4d8(r4)
/* 8001A754  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8001A758  EC 01 00 28 */	fsubs f0, f1, f0
/* 8001A75C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8001A760  EC 00 00 32 */	fmuls f0, f0, f0
/* 8001A764  EC 41 00 2A */	fadds f2, f1, f0
/* 8001A768  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001A76C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8001A770  40 81 00 0C */	ble lbl_8001A77C
/* 8001A774  FC 00 10 34 */	frsqrte f0, f2
/* 8001A778  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8001A77C:
/* 8001A77C  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 8001A780  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8001A784  EC 21 00 28 */	fsubs f1, f1, f0
/* 8001A788  48 24 CE ED */	bl cM_atan2s__Fff
/* 8001A78C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A790  7C 08 03 A6 */	mtlr r0
/* 8001A794  38 21 00 10 */	addi r1, r1, 0x10
/* 8001A798  4E 80 00 20 */	blr 
