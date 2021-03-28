lbl_800DC548:
/* 800DC548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DC54C  7C 08 02 A6 */	mflr r0
/* 800DC550  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DC554  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DC558  3B E0 00 00 */	li r31, 0
/* 800DC55C  28 03 00 00 */	cmplwi r3, 0
/* 800DC560  41 82 00 2C */	beq lbl_800DC58C
/* 800DC564  88 03 04 96 */	lbz r0, 0x496(r3)
/* 800DC568  28 00 00 02 */	cmplwi r0, 2
/* 800DC56C  41 82 00 1C */	beq lbl_800DC588
/* 800DC570  A8 03 00 08 */	lha r0, 8(r3)
/* 800DC574  2C 00 01 E2 */	cmpwi r0, 0x1e2
/* 800DC578  41 82 00 10 */	beq lbl_800DC588
/* 800DC57C  48 00 00 29 */	bl checkSpecialNpc__9daAlink_cFP10fopAc_ac_c
/* 800DC580  2C 03 00 00 */	cmpwi r3, 0
/* 800DC584  41 82 00 08 */	beq lbl_800DC58C
lbl_800DC588:
/* 800DC588  3B E0 00 01 */	li r31, 1
lbl_800DC58C:
/* 800DC58C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800DC590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DC594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DC598  7C 08 03 A6 */	mtlr r0
/* 800DC59C  38 21 00 10 */	addi r1, r1, 0x10
/* 800DC5A0  4E 80 00 20 */	blr 
