lbl_8024CF9C:
/* 8024CF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024CFA0  7C 08 02 A6 */	mflr r0
/* 8024CFA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024CFA8  A8 05 00 08 */	lha r0, 8(r5)
/* 8024CFAC  2C 00 02 32 */	cmpwi r0, 0x232
/* 8024CFB0  40 82 00 08 */	bne lbl_8024CFB8
/* 8024CFB4  80 A5 08 28 */	lwz r5, 0x828(r5)
lbl_8024CFB8:
/* 8024CFB8  28 05 00 00 */	cmplwi r5, 0
/* 8024CFBC  41 82 00 34 */	beq lbl_8024CFF0
/* 8024CFC0  A8 05 00 08 */	lha r0, 8(r5)
/* 8024CFC4  2C 00 01 21 */	cmpwi r0, 0x121
/* 8024CFC8  41 82 00 14 */	beq lbl_8024CFDC
/* 8024CFCC  2C 00 01 20 */	cmpwi r0, 0x120
/* 8024CFD0  41 82 00 0C */	beq lbl_8024CFDC
/* 8024CFD4  2C 00 01 22 */	cmpwi r0, 0x122
/* 8024CFD8  40 82 00 18 */	bne lbl_8024CFF0
lbl_8024CFDC:
/* 8024CFDC  7C A3 2B 78 */	mr r3, r5
/* 8024CFE0  81 85 05 68 */	lwz r12, 0x568(r5)
/* 8024CFE4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8024CFE8  7D 89 03 A6 */	mtctr r12
/* 8024CFEC  4E 80 04 21 */	bctrl 
lbl_8024CFF0:
/* 8024CFF0  38 60 00 01 */	li r3, 1
/* 8024CFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024CFF8  7C 08 03 A6 */	mtlr r0
/* 8024CFFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8024D000  4E 80 00 20 */	blr 
