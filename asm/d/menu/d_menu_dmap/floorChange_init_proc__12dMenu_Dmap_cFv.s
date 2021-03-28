lbl_801BFCAC:
/* 801BFCAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BFCB0  7C 08 02 A6 */	mflr r0
/* 801BFCB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BFCB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BFCBC  7C 7F 1B 78 */	mr r31, r3
/* 801BFCC0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801BFCC4  48 09 59 45 */	bl hide__13CPaneMgrAlphaFv
/* 801BFCC8  7F E3 FB 78 */	mr r3, r31
/* 801BFCCC  4B FF D5 09 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BFCD0  7C 60 07 74 */	extsb r0, r3
/* 801BFCD4  54 00 10 3A */	slwi r0, r0, 2
/* 801BFCD8  7C 7F 02 14 */	add r3, r31, r0
/* 801BFCDC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BFCE0  38 80 00 00 */	li r4, 0
/* 801BFCE4  B0 83 00 64 */	sth r4, 0x64(r3)
/* 801BFCE8  88 7F 01 71 */	lbz r3, 0x171(r31)
/* 801BFCEC  88 1F 01 6E */	lbz r0, 0x16e(r31)
/* 801BFCF0  7C 03 00 50 */	subf r0, r3, r0
/* 801BFCF4  7C 00 07 74 */	extsb r0, r0
/* 801BFCF8  54 00 10 3A */	slwi r0, r0, 2
/* 801BFCFC  7C 7F 02 14 */	add r3, r31, r0
/* 801BFD00  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BFD04  B0 83 00 64 */	sth r4, 0x64(r3)
/* 801BFD08  7F E3 FB 78 */	mr r3, r31
/* 801BFD0C  4B FF D4 C9 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BFD10  7C 60 07 74 */	extsb r0, r3
/* 801BFD14  54 00 10 3A */	slwi r0, r0, 2
/* 801BFD18  7C 7F 02 14 */	add r3, r31, r0
/* 801BFD1C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BFD20  38 80 00 00 */	li r4, 0
/* 801BFD24  B0 83 00 16 */	sth r4, 0x16(r3)
/* 801BFD28  88 7F 01 71 */	lbz r3, 0x171(r31)
/* 801BFD2C  88 1F 01 6E */	lbz r0, 0x16e(r31)
/* 801BFD30  7C 03 00 50 */	subf r0, r3, r0
/* 801BFD34  7C 00 07 74 */	extsb r0, r0
/* 801BFD38  54 00 10 3A */	slwi r0, r0, 2
/* 801BFD3C  7C 7F 02 14 */	add r3, r31, r0
/* 801BFD40  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BFD44  B0 83 00 16 */	sth r4, 0x16(r3)
/* 801BFD48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BFD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BFD50  7C 08 03 A6 */	mtlr r0
/* 801BFD54  38 21 00 10 */	addi r1, r1, 0x10
/* 801BFD58  4E 80 00 20 */	blr 
