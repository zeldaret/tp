lbl_806FEE70:
/* 806FEE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FEE74  7C 08 02 A6 */	mflr r0
/* 806FEE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FEE7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FEE80  7C 7F 1B 79 */	or. r31, r3, r3
/* 806FEE84  41 82 00 1C */	beq lbl_806FEEA0
/* 806FEE88  3C A0 80 70 */	lis r5, __vt__8cM3dGSph@ha /* 0x806FF820@ha */
/* 806FEE8C  38 05 F8 20 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x806FF820@l */
/* 806FEE90  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806FEE94  7C 80 07 35 */	extsh. r0, r4
/* 806FEE98  40 81 00 08 */	ble lbl_806FEEA0
/* 806FEE9C  4B BC FE A1 */	bl __dl__FPv
lbl_806FEEA0:
/* 806FEEA0  7F E3 FB 78 */	mr r3, r31
/* 806FEEA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FEEA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FEEAC  7C 08 03 A6 */	mtlr r0
/* 806FEEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 806FEEB4  4E 80 00 20 */	blr 
