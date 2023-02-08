lbl_80152C1C:
/* 80152C1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80152C20  7C 08 02 A6 */	mflr r0
/* 80152C24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80152C28  FC 00 08 90 */	fmr f0, f1
/* 80152C2C  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80152C30  FC 20 10 90 */	fmr f1, f2
/* 80152C34  FC 40 00 90 */	fmr f2, f0
/* 80152C38  C8 82 99 E0 */	lfd f4, lit_4142(r2)
/* 80152C3C  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80152C40  90 01 00 0C */	stw r0, 0xc(r1)
/* 80152C44  3C C0 43 30 */	lis r6, 0x4330
/* 80152C48  90 C1 00 08 */	stw r6, 8(r1)
/* 80152C4C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80152C50  EC 60 20 28 */	fsubs f3, f0, f4
/* 80152C54  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 80152C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80152C5C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80152C60  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80152C64  EC 80 20 28 */	fsubs f4, f0, f4
/* 80152C68  4B EB E2 09 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80152C6C  38 60 00 01 */	li r3, 1
/* 80152C70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80152C74  7C 08 03 A6 */	mtlr r0
/* 80152C78  38 21 00 20 */	addi r1, r1, 0x20
/* 80152C7C  4E 80 00 20 */	blr 
