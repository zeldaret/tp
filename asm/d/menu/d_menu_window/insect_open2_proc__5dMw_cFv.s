lbl_801FBC78:
/* 801FBC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBC7C  7C 08 02 A6 */	mflr r0
/* 801FBC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBC84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FBC88  7C 7F 1B 78 */	mr r31, r3
/* 801FBC8C  80 63 01 34 */	lwz r3, 0x134(r3)
/* 801FBC90  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801FBC94  28 00 00 01 */	cmplwi r0, 1
/* 801FBC98  40 82 00 30 */	bne lbl_801FBCC8
/* 801FBC9C  4B FD CC B1 */	bl _open__14dMenu_Insect_cFv
/* 801FBCA0  88 1F 01 52 */	lbz r0, 0x152(r31)
/* 801FBCA4  28 00 00 00 */	cmplwi r0, 0
/* 801FBCA8  40 82 00 20 */	bne lbl_801FBCC8
/* 801FBCAC  80 7F 01 34 */	lwz r3, 0x134(r31)
/* 801FBCB0  4B FD CC 3D */	bl isSync__14dMenu_Insect_cFv
/* 801FBCB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FBCB8  41 82 00 10 */	beq lbl_801FBCC8
/* 801FBCBC  48 00 11 BD */	bl dMw_fade_in__5dMw_cFv
/* 801FBCC0  38 00 00 01 */	li r0, 1
/* 801FBCC4  98 1F 01 52 */	stb r0, 0x152(r31)
lbl_801FBCC8:
/* 801FBCC8  80 7F 01 34 */	lwz r3, 0x134(r31)
/* 801FBCCC  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801FBCD0  28 00 00 02 */	cmplwi r0, 2
/* 801FBCD4  40 82 00 20 */	bne lbl_801FBCF4
/* 801FBCD8  88 1F 01 52 */	lbz r0, 0x152(r31)
/* 801FBCDC  28 00 00 01 */	cmplwi r0, 1
/* 801FBCE0  40 82 00 14 */	bne lbl_801FBCF4
/* 801FBCE4  38 00 00 21 */	li r0, 0x21
/* 801FBCE8  98 1F 01 46 */	stb r0, 0x146(r31)
/* 801FBCEC  38 00 00 00 */	li r0, 0
/* 801FBCF0  98 1F 01 52 */	stb r0, 0x152(r31)
lbl_801FBCF4:
/* 801FBCF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FBCF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FBCFC  7C 08 03 A6 */	mtlr r0
/* 801FBD00  38 21 00 10 */	addi r1, r1, 0x10
/* 801FBD04  4E 80 00 20 */	blr 
