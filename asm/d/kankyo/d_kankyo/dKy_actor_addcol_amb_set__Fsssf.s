lbl_801A7AC8:
/* 801A7AC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A7ACC  7C 60 07 34 */	extsh r0, r3
/* 801A7AD0  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 801A7AD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7AD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A7ADC  3C C0 43 30 */	lis r6, 0x4330
/* 801A7AE0  90 C1 00 08 */	stw r6, 8(r1)
/* 801A7AE4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A7AE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7AEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7AF0  FC 00 00 1E */	fctiwz f0, f0
/* 801A7AF4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801A7AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7AFC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A7B00  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A7B04  B0 03 11 60 */	sth r0, 0x1160(r3)
/* 801A7B08  7C 80 07 34 */	extsh r0, r4
/* 801A7B0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7B10  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A7B14  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801A7B18  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801A7B1C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7B20  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7B24  FC 00 00 1E */	fctiwz f0, f0
/* 801A7B28  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A7B2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A7B30  B0 03 11 62 */	sth r0, 0x1162(r3)
/* 801A7B34  7C A0 07 34 */	extsh r0, r5
/* 801A7B38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7B3C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A7B40  90 C1 00 28 */	stw r6, 0x28(r1)
/* 801A7B44  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A7B48  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7B4C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7B50  FC 00 00 1E */	fctiwz f0, f0
/* 801A7B54  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A7B58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A7B5C  B0 03 11 64 */	sth r0, 0x1164(r3)
/* 801A7B60  38 21 00 40 */	addi r1, r1, 0x40
/* 801A7B64  4E 80 00 20 */	blr 
