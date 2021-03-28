lbl_801FB240:
/* 801FB240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB244  7C 08 02 A6 */	mflr r0
/* 801FB248  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB24C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB250  7C 7F 1B 78 */	mr r31, r3
/* 801FB254  88 03 01 53 */	lbz r0, 0x153(r3)
/* 801FB258  28 00 00 00 */	cmplwi r0, 0
/* 801FB25C  40 82 00 10 */	bne lbl_801FB26C
/* 801FB260  38 00 00 01 */	li r0, 1
/* 801FB264  98 1F 01 53 */	stb r0, 0x153(r31)
/* 801FB268  48 02 37 6D */	bl dMeter2Info_set2DVibrationM__Fv
lbl_801FB26C:
/* 801FB26C  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 801FB270  4B FC FB 55 */	bl isOpen__12dMenu_Fmap_cFv
/* 801FB274  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB278  41 82 00 0C */	beq lbl_801FB284
/* 801FB27C  38 00 00 08 */	li r0, 8
/* 801FB280  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB284:
/* 801FB284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB28C  7C 08 03 A6 */	mtlr r0
/* 801FB290  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB294  4E 80 00 20 */	blr 
