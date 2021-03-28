lbl_801A7FC0:
/* 801A7FC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A7FC4  7C 60 07 34 */	extsh r0, r3
/* 801A7FC8  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 801A7FCC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7FD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A7FD4  3C C0 43 30 */	lis r6, 0x4330
/* 801A7FD8  90 C1 00 08 */	stw r6, 8(r1)
/* 801A7FDC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A7FE0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7FE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7FE8  FC 00 00 1E */	fctiwz f0, f0
/* 801A7FEC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801A7FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7FF4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A7FF8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A7FFC  B0 03 11 C0 */	sth r0, 0x11c0(r3)
/* 801A8000  7C 80 07 34 */	extsh r0, r4
/* 801A8004  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A8008  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A800C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801A8010  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801A8014  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A8018  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A801C  FC 00 00 1E */	fctiwz f0, f0
/* 801A8020  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A8024  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A8028  B0 03 11 C2 */	sth r0, 0x11c2(r3)
/* 801A802C  7C A0 07 34 */	extsh r0, r5
/* 801A8030  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A8034  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A8038  90 C1 00 28 */	stw r6, 0x28(r1)
/* 801A803C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A8040  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A8044  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A8048  FC 00 00 1E */	fctiwz f0, f0
/* 801A804C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A8050  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A8054  B0 03 11 C4 */	sth r0, 0x11c4(r3)
/* 801A8058  38 21 00 40 */	addi r1, r1, 0x40
/* 801A805C  4E 80 00 20 */	blr 
