lbl_8007DF28:
/* 8007DF28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007DF2C  7C 08 02 A6 */	mflr r0
/* 8007DF30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007DF34  81 83 00 04 */	lwz r12, 4(r3)
/* 8007DF38  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8007DF3C  7D 89 03 A6 */	mtctr r12
/* 8007DF40  4E 80 04 21 */	bctrl 
/* 8007DF44  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8007DF48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007DF4C  7C 08 03 A6 */	mtlr r0
/* 8007DF50  38 21 00 10 */	addi r1, r1, 0x10
/* 8007DF54  4E 80 00 20 */	blr 
