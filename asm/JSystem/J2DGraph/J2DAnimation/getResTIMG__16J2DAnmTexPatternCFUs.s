lbl_8030BF9C:
/* 8030BF9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030BFA0  7C 08 02 A6 */	mflr r0
/* 8030BFA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030BFA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8030BFAC  7C 7F 1B 78 */	mr r31, r3
/* 8030BFB0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8030BFB4  28 00 00 00 */	cmplwi r0, 0
/* 8030BFB8  40 82 00 0C */	bne lbl_8030BFC4
/* 8030BFBC  38 60 00 00 */	li r3, 0
/* 8030BFC0  48 00 00 1C */	b lbl_8030BFDC
lbl_8030BFC4:
/* 8030BFC4  38 A1 00 08 */	addi r5, r1, 8
/* 8030BFC8  4B FF FF 21 */	bl getTexNo__16J2DAnmTexPatternCFUsPUs
/* 8030BFCC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8030BFD0  A0 01 00 08 */	lhz r0, 8(r1)
/* 8030BFD4  54 00 18 38 */	slwi r0, r0, 3
/* 8030BFD8  7C 63 00 2E */	lwzx r3, r3, r0
lbl_8030BFDC:
/* 8030BFDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8030BFE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030BFE4  7C 08 03 A6 */	mtlr r0
/* 8030BFE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8030BFEC  4E 80 00 20 */	blr 
