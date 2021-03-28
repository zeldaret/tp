lbl_801FBD08:
/* 801FBD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBD0C  7C 08 02 A6 */	mflr r0
/* 801FBD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBD14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FBD18  7C 7F 1B 78 */	mr r31, r3
/* 801FBD1C  80 63 01 34 */	lwz r3, 0x134(r3)
/* 801FBD20  28 03 00 00 */	cmplwi r3, 0
/* 801FBD24  41 82 00 2C */	beq lbl_801FBD50
/* 801FBD28  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801FBD2C  28 00 00 02 */	cmplwi r0, 2
/* 801FBD30  40 82 00 08 */	bne lbl_801FBD38
/* 801FBD34  4B FD C9 95 */	bl _move__14dMenu_Insect_cFv
lbl_801FBD38:
/* 801FBD38  80 7F 01 34 */	lwz r3, 0x134(r31)
/* 801FBD3C  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801FBD40  28 00 00 03 */	cmplwi r0, 3
/* 801FBD44  40 82 00 0C */	bne lbl_801FBD50
/* 801FBD48  38 00 00 22 */	li r0, 0x22
/* 801FBD4C  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FBD50:
/* 801FBD50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FBD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FBD58  7C 08 03 A6 */	mtlr r0
/* 801FBD5C  38 21 00 10 */	addi r1, r1, 0x10
/* 801FBD60  4E 80 00 20 */	blr 
