lbl_801FB73C:
/* 801FB73C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB740  7C 08 02 A6 */	mflr r0
/* 801FB744  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB74C  7C 7F 1B 78 */	mr r31, r3
/* 801FB750  80 63 01 24 */	lwz r3, 0x124(r3)
/* 801FB754  88 03 03 EC */	lbz r0, 0x3ec(r3)
/* 801FB758  28 00 00 01 */	cmplwi r0, 1
/* 801FB75C  40 82 00 14 */	bne lbl_801FB770
/* 801FB760  4B FE 84 39 */	bl _open__14dMenu_Option_cFv
/* 801FB764  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB768  41 82 00 08 */	beq lbl_801FB770
/* 801FB76C  48 00 17 0D */	bl dMw_fade_in__5dMw_cFv
lbl_801FB770:
/* 801FB770  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 801FB774  88 03 03 EC */	lbz r0, 0x3ec(r3)
/* 801FB778  28 00 00 02 */	cmplwi r0, 2
/* 801FB77C  40 82 00 1C */	bne lbl_801FB798
/* 801FB780  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801FB784  80 03 00 04 */	lwz r0, 4(r3)
/* 801FB788  2C 00 00 01 */	cmpwi r0, 1
/* 801FB78C  40 82 00 0C */	bne lbl_801FB798
/* 801FB790  38 00 00 11 */	li r0, 0x11
/* 801FB794  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB798:
/* 801FB798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB7A0  7C 08 03 A6 */	mtlr r0
/* 801FB7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB7A8  4E 80 00 20 */	blr 
