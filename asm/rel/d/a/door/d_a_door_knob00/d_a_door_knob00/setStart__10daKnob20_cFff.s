lbl_8045F8A4:
/* 8045F8A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045F8A8  7C 08 02 A6 */	mflr r0
/* 8045F8AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045F8B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045F8B4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045F8B8  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 8045F8BC  C0 A3 04 D0 */	lfs f5, 0x4d0(r3)
/* 8045F8C0  D0 A1 00 08 */	stfs f5, 8(r1)
/* 8045F8C4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8045F8C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8045F8CC  C0 83 04 D8 */	lfs f4, 0x4d8(r3)
/* 8045F8D0  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8045F8D4  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 8045F8D8  38 03 7F FF */	addi r0, r3, 0x7fff
/* 8045F8DC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8045F8E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8045F8E4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8045F8E8  7C C3 04 2E */	lfsx f6, r3, r0
/* 8045F8EC  EC 62 01 B2 */	fmuls f3, f2, f6
/* 8045F8F0  7C 63 02 14 */	add r3, r3, r0
/* 8045F8F4  C0 E3 00 04 */	lfs f7, 4(r3)
/* 8045F8F8  EC 01 01 F2 */	fmuls f0, f1, f7
/* 8045F8FC  EC 03 00 28 */	fsubs f0, f3, f0
/* 8045F900  EC 05 00 2A */	fadds f0, f5, f0
/* 8045F904  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045F908  EC 42 01 F2 */	fmuls f2, f2, f7
/* 8045F90C  EC 01 01 B2 */	fmuls f0, f1, f6
/* 8045F910  EC 02 00 2A */	fadds f0, f2, f0
/* 8045F914  EC 04 00 2A */	fadds f0, f4, f0
/* 8045F918  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8045F91C  7C A3 2B 78 */	mr r3, r5
/* 8045F920  38 81 00 08 */	addi r4, r1, 8
/* 8045F924  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 8045F928  38 C0 00 00 */	li r6, 0
/* 8045F92C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8045F930  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8045F934  7D 89 03 A6 */	mtctr r12
/* 8045F938  4E 80 04 21 */	bctrl 
/* 8045F93C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045F940  7C 08 03 A6 */	mtlr r0
/* 8045F944  38 21 00 20 */	addi r1, r1, 0x20
/* 8045F948  4E 80 00 20 */	blr 
