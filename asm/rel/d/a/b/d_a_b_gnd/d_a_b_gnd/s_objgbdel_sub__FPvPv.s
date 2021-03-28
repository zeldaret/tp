lbl_805FA430:
/* 805FA430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FA434  7C 08 02 A6 */	mflr r0
/* 805FA438  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FA43C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FA440  7C 7F 1B 78 */	mr r31, r3
/* 805FA444  4B A1 E8 9C */	b fopAc_IsActor__FPv
/* 805FA448  2C 03 00 00 */	cmpwi r3, 0
/* 805FA44C  41 82 00 18 */	beq lbl_805FA464
/* 805FA450  A8 1F 00 08 */	lha r0, 8(r31)
/* 805FA454  2C 00 00 2D */	cmpwi r0, 0x2d
/* 805FA458  40 82 00 0C */	bne lbl_805FA464
/* 805FA45C  7F E3 FB 78 */	mr r3, r31
/* 805FA460  4B A1 F8 1C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_805FA464:
/* 805FA464  38 60 00 00 */	li r3, 0
/* 805FA468  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FA46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FA470  7C 08 03 A6 */	mtlr r0
/* 805FA474  38 21 00 10 */	addi r1, r1, 0x10
/* 805FA478  4E 80 00 20 */	blr 
