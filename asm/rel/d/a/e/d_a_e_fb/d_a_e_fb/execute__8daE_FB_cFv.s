lbl_806B8518:
/* 806B8518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B851C  7C 08 02 A6 */	mflr r0
/* 806B8520  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B8524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B8528  7C 7F 1B 78 */	mr r31, r3
/* 806B852C  80 63 06 9C */	lwz r3, 0x69c(r3)
/* 806B8530  2C 03 00 00 */	cmpwi r3, 0
/* 806B8534  41 82 00 0C */	beq lbl_806B8540
/* 806B8538  38 03 FF FF */	addi r0, r3, -1
/* 806B853C  90 1F 06 9C */	stw r0, 0x69c(r31)
lbl_806B8540:
/* 806B8540  A0 7F 06 8C */	lhz r3, 0x68c(r31)
/* 806B8544  28 03 00 00 */	cmplwi r3, 0
/* 806B8548  41 82 00 0C */	beq lbl_806B8554
/* 806B854C  38 03 FF FF */	addi r0, r3, -1
/* 806B8550  B0 1F 06 8C */	sth r0, 0x68c(r31)
lbl_806B8554:
/* 806B8554  7F E3 FB 78 */	mr r3, r31
/* 806B8558  4B FF F8 85 */	bl action__8daE_FB_cFv
/* 806B855C  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 806B8560  28 00 00 0A */	cmplwi r0, 0xa
/* 806B8564  41 82 00 24 */	beq lbl_806B8588
/* 806B8568  28 00 00 0B */	cmplwi r0, 0xb
/* 806B856C  41 82 00 1C */	beq lbl_806B8588
/* 806B8570  7F E3 FB 78 */	mr r3, r31
/* 806B8574  4B FF FB 31 */	bl mtx_set__8daE_FB_cFv
/* 806B8578  7F E3 FB 78 */	mr r3, r31
/* 806B857C  4B FF FB A1 */	bl cc_set__8daE_FB_cFv
/* 806B8580  7F E3 FB 78 */	mr r3, r31
/* 806B8584  4B FF FD 31 */	bl normal_eff_set__8daE_FB_cFv
lbl_806B8588:
/* 806B8588  38 60 00 01 */	li r3, 1
/* 806B858C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B8590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B8594  7C 08 03 A6 */	mtlr r0
/* 806B8598  38 21 00 10 */	addi r1, r1, 0x10
/* 806B859C  4E 80 00 20 */	blr 
