lbl_80038D84:
/* 80038D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80038D88  7C 08 02 A6 */	mflr r0
/* 80038D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80038D90  4B FF FD 01 */	bl getView__Fv
/* 80038D94  28 03 00 00 */	cmplwi r3, 0
/* 80038D98  40 82 00 0C */	bne lbl_80038DA4
/* 80038D9C  C0 22 83 B0 */	lfs f1, lit_4040(r2)
/* 80038DA0  48 00 00 2C */	b lbl_80038DCC
lbl_80038DA4:
/* 80038DA4  C0 42 83 D8 */	lfs f2, lit_4710(r2)
/* 80038DA8  A8 03 00 FC */	lha r0, 0xfc(r3)
/* 80038DAC  C8 22 83 B8 */	lfd f1, lit_4127(r2)
/* 80038DB0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80038DB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80038DB8  3C 00 43 30 */	lis r0, 0x4330
/* 80038DBC  90 01 00 08 */	stw r0, 8(r1)
/* 80038DC0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80038DC4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80038DC8  EC 22 00 32 */	fmuls f1, f2, f0
lbl_80038DCC:
/* 80038DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80038DD0  7C 08 03 A6 */	mtlr r0
/* 80038DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80038DD8  4E 80 00 20 */	blr 
