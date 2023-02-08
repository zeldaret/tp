lbl_80156E20:
/* 80156E20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80156E24  7C 08 02 A6 */	mflr r0
/* 80156E28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80156E2C  FC 00 08 90 */	fmr f0, f1
/* 80156E30  80 63 05 8C */	lwz r3, 0x58c(r3)
/* 80156E34  80 03 00 08 */	lwz r0, 8(r3)
/* 80156E38  7C 04 00 40 */	cmplw r4, r0
/* 80156E3C  41 82 00 40 */	beq lbl_80156E7C
/* 80156E40  FC 20 10 90 */	fmr f1, f2
/* 80156E44  FC 40 00 90 */	fmr f2, f0
/* 80156E48  C8 82 9A C8 */	lfd f4, lit_4375(r2)
/* 80156E4C  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80156E50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80156E54  3C C0 43 30 */	lis r6, 0x4330
/* 80156E58  90 C1 00 08 */	stw r6, 8(r1)
/* 80156E5C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80156E60  EC 60 20 28 */	fsubs f3, f0, f4
/* 80156E64  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 80156E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156E6C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80156E70  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80156E74  EC 80 20 28 */	fsubs f4, f0, f4
/* 80156E78  4B EB 9F F9 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80156E7C:
/* 80156E7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80156E80  7C 08 03 A6 */	mtlr r0
/* 80156E84  38 21 00 20 */	addi r1, r1, 0x20
/* 80156E88  4E 80 00 20 */	blr 
