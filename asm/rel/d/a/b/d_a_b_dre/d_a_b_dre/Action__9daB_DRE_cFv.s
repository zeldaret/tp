lbl_805C9318:
/* 805C9318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C931C  7C 08 02 A6 */	mflr r0
/* 805C9320  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C9324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C9328  7C 7F 1B 78 */	mr r31, r3
/* 805C932C  88 03 05 B7 */	lbz r0, 0x5b7(r3)
/* 805C9330  2C 00 00 01 */	cmpwi r0, 1
/* 805C9334  41 82 00 24 */	beq lbl_805C9358
/* 805C9338  40 80 00 2C */	bge lbl_805C9364
/* 805C933C  2C 00 00 00 */	cmpwi r0, 0
/* 805C9340  40 80 00 08 */	bge lbl_805C9348
/* 805C9344  48 00 00 20 */	b lbl_805C9364
lbl_805C9348:
/* 805C9348  4B FF FB 95 */	bl CamAction__9daB_DRE_cFv
/* 805C934C  7F E3 FB 78 */	mr r3, r31
/* 805C9350  48 00 00 29 */	bl DrAction__9daB_DRE_cFv
/* 805C9354  48 00 00 10 */	b lbl_805C9364
lbl_805C9358:
/* 805C9358  4B FF F2 91 */	bl CamAction2__9daB_DRE_cFv
/* 805C935C  7F E3 FB 78 */	mr r3, r31
/* 805C9360  4B FF F8 99 */	bl DrAction2__9daB_DRE_cFv
lbl_805C9364:
/* 805C9364  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C9368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C936C  7C 08 03 A6 */	mtlr r0
/* 805C9370  38 21 00 10 */	addi r1, r1, 0x10
/* 805C9374  4E 80 00 20 */	blr 
