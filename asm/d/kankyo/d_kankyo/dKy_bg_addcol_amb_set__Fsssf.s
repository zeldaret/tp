lbl_801A7B68:
/* 801A7B68  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A7B6C  7C 60 07 34 */	extsh r0, r3
/* 801A7B70  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 801A7B74  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7B78  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A7B7C  3C C0 43 30 */	lis r6, 0x4330
/* 801A7B80  90 C1 00 08 */	stw r6, 8(r1)
/* 801A7B84  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A7B88  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7B8C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7B90  FC 00 00 1E */	fctiwz f0, f0
/* 801A7B94  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801A7B98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7B9C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A7BA0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A7BA4  B0 03 11 70 */	sth r0, 0x1170(r3)
/* 801A7BA8  7C 80 07 34 */	extsh r0, r4
/* 801A7BAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7BB0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A7BB4  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801A7BB8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801A7BBC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7BC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7BC4  FC 00 00 1E */	fctiwz f0, f0
/* 801A7BC8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A7BCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A7BD0  B0 03 11 72 */	sth r0, 0x1172(r3)
/* 801A7BD4  7C A0 07 34 */	extsh r0, r5
/* 801A7BD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7BDC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A7BE0  90 C1 00 28 */	stw r6, 0x28(r1)
/* 801A7BE4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A7BE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7BEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7BF0  FC 00 00 1E */	fctiwz f0, f0
/* 801A7BF4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A7BF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A7BFC  B0 03 11 74 */	sth r0, 0x1174(r3)
/* 801A7C00  38 21 00 40 */	addi r1, r1, 0x40
/* 801A7C04  4E 80 00 20 */	blr 
