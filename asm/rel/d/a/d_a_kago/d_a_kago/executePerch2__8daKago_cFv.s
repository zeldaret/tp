lbl_808513E4:
/* 808513E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808513E8  7C 08 02 A6 */	mflr r0
/* 808513EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 808513F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808513F4  7C 7F 1B 78 */	mr r31, r3
/* 808513F8  80 03 07 4C */	lwz r0, 0x74c(r3)
/* 808513FC  2C 00 00 00 */	cmpwi r0, 0
/* 80851400  40 82 00 08 */	bne lbl_80851408
/* 80851404  4B FF E7 4D */	bl initFirstDemo__8daKago_cFv
lbl_80851408:
/* 80851408  7F E3 FB 78 */	mr r3, r31
/* 8085140C  4B FF EF 79 */	bl executeFirstDemo__8daKago_cFv
/* 80851410  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80851414  41 82 00 0C */	beq lbl_80851420
/* 80851418  38 00 00 00 */	li r0, 0
/* 8085141C  90 1F 07 4C */	stw r0, 0x74c(r31)
lbl_80851420:
/* 80851420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80851424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80851428  7C 08 03 A6 */	mtlr r0
/* 8085142C  38 21 00 10 */	addi r1, r1, 0x10
/* 80851430  4E 80 00 20 */	blr 
