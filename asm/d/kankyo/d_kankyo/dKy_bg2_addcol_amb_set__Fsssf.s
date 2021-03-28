lbl_801A7CA8:
/* 801A7CA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A7CAC  7C 60 07 34 */	extsh r0, r3
/* 801A7CB0  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 801A7CB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7CB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A7CBC  3C C0 43 30 */	lis r6, 0x4330
/* 801A7CC0  90 C1 00 08 */	stw r6, 8(r1)
/* 801A7CC4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A7CC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7CCC  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7CD0  FC 00 00 1E */	fctiwz f0, f0
/* 801A7CD4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801A7CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7CDC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A7CE0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A7CE4  B0 03 11 90 */	sth r0, 0x1190(r3)
/* 801A7CE8  7C 80 07 34 */	extsh r0, r4
/* 801A7CEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7CF0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A7CF4  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801A7CF8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801A7CFC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7D00  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7D04  FC 00 00 1E */	fctiwz f0, f0
/* 801A7D08  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A7D0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A7D10  B0 03 11 92 */	sth r0, 0x1192(r3)
/* 801A7D14  7C A0 07 34 */	extsh r0, r5
/* 801A7D18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7D1C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A7D20  90 C1 00 28 */	stw r6, 0x28(r1)
/* 801A7D24  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A7D28  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7D2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7D30  FC 00 00 1E */	fctiwz f0, f0
/* 801A7D34  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A7D38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A7D3C  B0 03 11 94 */	sth r0, 0x1194(r3)
/* 801A7D40  38 21 00 40 */	addi r1, r1, 0x40
/* 801A7D44  4E 80 00 20 */	blr 
