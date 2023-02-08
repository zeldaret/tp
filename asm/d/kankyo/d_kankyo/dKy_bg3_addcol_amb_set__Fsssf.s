lbl_801A7D48:
/* 801A7D48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A7D4C  7C 60 07 34 */	extsh r0, r3
/* 801A7D50  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 801A7D54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7D58  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A7D5C  3C C0 43 30 */	lis r6, 0x4330
/* 801A7D60  90 C1 00 08 */	stw r6, 8(r1)
/* 801A7D64  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A7D68  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7D6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7D70  FC 00 00 1E */	fctiwz f0, f0
/* 801A7D74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801A7D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7D7C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A7D80  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A7D84  B0 03 11 A0 */	sth r0, 0x11a0(r3)
/* 801A7D88  7C 80 07 34 */	extsh r0, r4
/* 801A7D8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7D90  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A7D94  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801A7D98  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801A7D9C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7DA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7DA4  FC 00 00 1E */	fctiwz f0, f0
/* 801A7DA8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A7DAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A7DB0  B0 03 11 A2 */	sth r0, 0x11a2(r3)
/* 801A7DB4  7C A0 07 34 */	extsh r0, r5
/* 801A7DB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7DBC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A7DC0  90 C1 00 28 */	stw r6, 0x28(r1)
/* 801A7DC4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A7DC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7DCC  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7DD0  FC 00 00 1E */	fctiwz f0, f0
/* 801A7DD4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A7DD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A7DDC  B0 03 11 A4 */	sth r0, 0x11a4(r3)
/* 801A7DE0  38 21 00 40 */	addi r1, r1, 0x40
/* 801A7DE4  4E 80 00 20 */	blr 
