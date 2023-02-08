lbl_806B1B60:
/* 806B1B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B1B64  7C 08 02 A6 */	mflr r0
/* 806B1B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B1B6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B1B70  7C 7F 1B 78 */	mr r31, r3
/* 806B1B74  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 806B1B78  2C 00 00 01 */	cmpwi r0, 1
/* 806B1B7C  41 82 00 44 */	beq lbl_806B1BC0
/* 806B1B80  40 80 00 58 */	bge lbl_806B1BD8
/* 806B1B84  2C 00 00 00 */	cmpwi r0, 0
/* 806B1B88  40 80 00 08 */	bge lbl_806B1B90
/* 806B1B8C  48 00 00 4C */	b lbl_806B1BD8
lbl_806B1B90:
/* 806B1B90  38 80 00 17 */	li r4, 0x17
/* 806B1B94  38 A0 00 02 */	li r5, 2
/* 806B1B98  3C C0 80 6B */	lis r6, lit_3797@ha /* 0x806B5CE8@ha */
/* 806B1B9C  C0 26 5C E8 */	lfs f1, lit_3797@l(r6)  /* 0x806B5CE8@l */
/* 806B1BA0  3C C0 80 6B */	lis r6, lit_3868@ha /* 0x806B5CFC@ha */
/* 806B1BA4  C0 46 5C FC */	lfs f2, lit_3868@l(r6)  /* 0x806B5CFC@l */
/* 806B1BA8  4B FF CA A5 */	bl setBck__8daE_DT_cFiUcff
/* 806B1BAC  38 00 00 1E */	li r0, 0x1e
/* 806B1BB0  90 1F 07 58 */	stw r0, 0x758(r31)
/* 806B1BB4  38 00 00 01 */	li r0, 1
/* 806B1BB8  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B1BBC  48 00 00 1C */	b lbl_806B1BD8
lbl_806B1BC0:
/* 806B1BC0  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 806B1BC4  2C 00 00 00 */	cmpwi r0, 0
/* 806B1BC8  40 82 00 10 */	bne lbl_806B1BD8
/* 806B1BCC  38 80 00 00 */	li r4, 0
/* 806B1BD0  38 A0 00 00 */	li r5, 0
/* 806B1BD4  4B FF CB 79 */	bl setActionMode__8daE_DT_cFii
lbl_806B1BD8:
/* 806B1BD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B1BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B1BE0  7C 08 03 A6 */	mtlr r0
/* 806B1BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 806B1BE8  4E 80 00 20 */	blr 
