lbl_80CBCD94:
/* 80CBCD94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBCD98  7C 08 02 A6 */	mflr r0
/* 80CBCD9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBCDA0  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80CBCDA4  2C 00 00 02 */	cmpwi r0, 2
/* 80CBCDA8  41 82 00 2C */	beq lbl_80CBCDD4
/* 80CBCDAC  40 80 00 2C */	bge lbl_80CBCDD8
/* 80CBCDB0  2C 00 00 00 */	cmpwi r0, 0
/* 80CBCDB4  41 82 00 10 */	beq lbl_80CBCDC4
/* 80CBCDB8  40 80 00 14 */	bge lbl_80CBCDCC
/* 80CBCDBC  48 00 00 1C */	b lbl_80CBCDD8
/* 80CBCDC0  48 00 00 18 */	b lbl_80CBCDD8
lbl_80CBCDC4:
/* 80CBCDC4  4B FF FA 35 */	bl BreakWaitAction__16daObjRIVERROCK_cFv
/* 80CBCDC8  48 00 00 10 */	b lbl_80CBCDD8
lbl_80CBCDCC:
/* 80CBCDCC  4B FF FE 71 */	bl BreakMoveAction__16daObjRIVERROCK_cFv
/* 80CBCDD0  48 00 00 08 */	b lbl_80CBCDD8
lbl_80CBCDD4:
/* 80CBCDD4  4B FF FE ED */	bl BrokenAction__16daObjRIVERROCK_cFv
lbl_80CBCDD8:
/* 80CBCDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBCDDC  7C 08 03 A6 */	mtlr r0
/* 80CBCDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBCDE4  4E 80 00 20 */	blr 
