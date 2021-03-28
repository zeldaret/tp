lbl_80675EE4:
/* 80675EE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80675EE8  7C 08 02 A6 */	mflr r0
/* 80675EEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80675EF0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80675EF4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80675EF8  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 80675EFC  C0 A3 04 D0 */	lfs f5, 0x4d0(r3)
/* 80675F00  D0 A1 00 08 */	stfs f5, 8(r1)
/* 80675F04  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80675F08  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80675F0C  C0 83 04 D8 */	lfs f4, 0x4d8(r3)
/* 80675F10  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80675F14  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80675F18  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80675F1C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80675F20  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80675F24  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80675F28  7C C3 04 2E */	lfsx f6, r3, r0
/* 80675F2C  EC 62 01 B2 */	fmuls f3, f2, f6
/* 80675F30  7C 63 02 14 */	add r3, r3, r0
/* 80675F34  C0 E3 00 04 */	lfs f7, 4(r3)
/* 80675F38  EC 01 01 F2 */	fmuls f0, f1, f7
/* 80675F3C  EC 03 00 28 */	fsubs f0, f3, f0
/* 80675F40  EC 05 00 2A */	fadds f0, f5, f0
/* 80675F44  D0 01 00 08 */	stfs f0, 8(r1)
/* 80675F48  EC 42 01 F2 */	fmuls f2, f2, f7
/* 80675F4C  EC 01 01 B2 */	fmuls f0, f1, f6
/* 80675F50  EC 02 00 2A */	fadds f0, f2, f0
/* 80675F54  EC 04 00 2A */	fadds f0, f4, f0
/* 80675F58  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80675F5C  7C A3 2B 78 */	mr r3, r5
/* 80675F60  38 81 00 08 */	addi r4, r1, 8
/* 80675F64  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 80675F68  38 C0 00 00 */	li r6, 0
/* 80675F6C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80675F70  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80675F74  7D 89 03 A6 */	mtctr r12
/* 80675F78  4E 80 04 21 */	bctrl 
/* 80675F7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80675F80  7C 08 03 A6 */	mtlr r0
/* 80675F84  38 21 00 20 */	addi r1, r1, 0x20
/* 80675F88  4E 80 00 20 */	blr 
