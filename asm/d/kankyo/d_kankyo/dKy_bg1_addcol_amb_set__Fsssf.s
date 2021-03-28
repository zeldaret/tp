lbl_801A7C08:
/* 801A7C08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A7C0C  7C 60 07 34 */	extsh r0, r3
/* 801A7C10  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 801A7C14  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7C18  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A7C1C  3C C0 43 30 */	lis r6, 0x4330
/* 801A7C20  90 C1 00 08 */	stw r6, 8(r1)
/* 801A7C24  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A7C28  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7C2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7C30  FC 00 00 1E */	fctiwz f0, f0
/* 801A7C34  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801A7C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7C3C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A7C40  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A7C44  B0 03 11 80 */	sth r0, 0x1180(r3)
/* 801A7C48  7C 80 07 34 */	extsh r0, r4
/* 801A7C4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7C50  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A7C54  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801A7C58  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801A7C5C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7C60  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7C64  FC 00 00 1E */	fctiwz f0, f0
/* 801A7C68  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A7C6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A7C70  B0 03 11 82 */	sth r0, 0x1182(r3)
/* 801A7C74  7C A0 07 34 */	extsh r0, r5
/* 801A7C78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7C7C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A7C80  90 C1 00 28 */	stw r6, 0x28(r1)
/* 801A7C84  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A7C88  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7C8C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7C90  FC 00 00 1E */	fctiwz f0, f0
/* 801A7C94  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A7C98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A7C9C  B0 03 11 84 */	sth r0, 0x1184(r3)
/* 801A7CA0  38 21 00 40 */	addi r1, r1, 0x40
/* 801A7CA4  4E 80 00 20 */	blr 
