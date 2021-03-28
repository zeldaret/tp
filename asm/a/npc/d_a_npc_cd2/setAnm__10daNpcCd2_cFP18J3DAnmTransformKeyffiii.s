lbl_80158F00:
/* 80158F00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80158F04  7C 08 02 A6 */	mflr r0
/* 80158F08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80158F0C  FC 00 08 90 */	fmr f0, f1
/* 80158F10  80 63 05 8C */	lwz r3, 0x58c(r3)
/* 80158F14  80 03 00 08 */	lwz r0, 8(r3)
/* 80158F18  7C 04 00 40 */	cmplw r4, r0
/* 80158F1C  41 82 00 40 */	beq lbl_80158F5C
/* 80158F20  FC 20 10 90 */	fmr f1, f2
/* 80158F24  FC 40 00 90 */	fmr f2, f0
/* 80158F28  C8 82 9A F0 */	lfd f4, lit_4588(r2)
/* 80158F2C  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80158F30  90 01 00 0C */	stw r0, 0xc(r1)
/* 80158F34  3C C0 43 30 */	lis r6, 0x4330
/* 80158F38  90 C1 00 08 */	stw r6, 8(r1)
/* 80158F3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80158F40  EC 60 20 28 */	fsubs f3, f0, f4
/* 80158F44  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 80158F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80158F4C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80158F50  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80158F54  EC 80 20 28 */	fsubs f4, f0, f4
/* 80158F58  4B EB 7F 19 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80158F5C:
/* 80158F5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80158F60  7C 08 03 A6 */	mtlr r0
/* 80158F64  38 21 00 20 */	addi r1, r1, 0x20
/* 80158F68  4E 80 00 20 */	blr 
