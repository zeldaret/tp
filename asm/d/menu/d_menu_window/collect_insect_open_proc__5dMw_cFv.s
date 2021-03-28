lbl_801FBB1C:
/* 801FBB1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBB20  7C 08 02 A6 */	mflr r0
/* 801FBB24  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBB28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FBB2C  7C 7F 1B 78 */	mr r31, r3
/* 801FBB30  80 63 01 34 */	lwz r3, 0x134(r3)
/* 801FBB34  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801FBB38  28 00 00 01 */	cmplwi r0, 1
/* 801FBB3C  40 82 00 30 */	bne lbl_801FBB6C
/* 801FBB40  4B FD CE 0D */	bl _open__14dMenu_Insect_cFv
/* 801FBB44  88 1F 01 52 */	lbz r0, 0x152(r31)
/* 801FBB48  28 00 00 00 */	cmplwi r0, 0
/* 801FBB4C  40 82 00 20 */	bne lbl_801FBB6C
/* 801FBB50  80 7F 01 34 */	lwz r3, 0x134(r31)
/* 801FBB54  4B FD CD 99 */	bl isSync__14dMenu_Insect_cFv
/* 801FBB58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FBB5C  41 82 00 10 */	beq lbl_801FBB6C
/* 801FBB60  48 00 13 19 */	bl dMw_fade_in__5dMw_cFv
/* 801FBB64  38 00 00 01 */	li r0, 1
/* 801FBB68  98 1F 01 52 */	stb r0, 0x152(r31)
lbl_801FBB6C:
/* 801FBB6C  80 7F 01 34 */	lwz r3, 0x134(r31)
/* 801FBB70  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801FBB74  28 00 00 02 */	cmplwi r0, 2
/* 801FBB78  40 82 00 20 */	bne lbl_801FBB98
/* 801FBB7C  88 1F 01 52 */	lbz r0, 0x152(r31)
/* 801FBB80  28 00 00 01 */	cmplwi r0, 1
/* 801FBB84  40 82 00 14 */	bne lbl_801FBB98
/* 801FBB88  38 00 00 1D */	li r0, 0x1d
/* 801FBB8C  98 1F 01 46 */	stb r0, 0x146(r31)
/* 801FBB90  38 00 00 00 */	li r0, 0
/* 801FBB94  98 1F 01 52 */	stb r0, 0x152(r31)
lbl_801FBB98:
/* 801FBB98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FBB9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FBBA0  7C 08 03 A6 */	mtlr r0
/* 801FBBA4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FBBA8  4E 80 00 20 */	blr 
