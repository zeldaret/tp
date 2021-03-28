lbl_801A7F20:
/* 801A7F20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A7F24  7C 60 07 34 */	extsh r0, r3
/* 801A7F28  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 801A7F2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7F30  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A7F34  3C C0 43 30 */	lis r6, 0x4330
/* 801A7F38  90 C1 00 08 */	stw r6, 8(r1)
/* 801A7F3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A7F40  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7F44  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7F48  FC 00 00 1E */	fctiwz f0, f0
/* 801A7F4C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801A7F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7F54  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A7F58  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A7F5C  B0 03 11 B8 */	sth r0, 0x11b8(r3)
/* 801A7F60  7C 80 07 34 */	extsh r0, r4
/* 801A7F64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7F68  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A7F6C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801A7F70  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801A7F74  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7F78  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7F7C  FC 00 00 1E */	fctiwz f0, f0
/* 801A7F80  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A7F84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A7F88  B0 03 11 BA */	sth r0, 0x11ba(r3)
/* 801A7F8C  7C A0 07 34 */	extsh r0, r5
/* 801A7F90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7F94  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A7F98  90 C1 00 28 */	stw r6, 0x28(r1)
/* 801A7F9C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A7FA0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7FA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7FA8  FC 00 00 1E */	fctiwz f0, f0
/* 801A7FAC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A7FB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A7FB4  B0 03 11 BC */	sth r0, 0x11bc(r3)
/* 801A7FB8  38 21 00 40 */	addi r1, r1, 0x40
/* 801A7FBC  4E 80 00 20 */	blr 
