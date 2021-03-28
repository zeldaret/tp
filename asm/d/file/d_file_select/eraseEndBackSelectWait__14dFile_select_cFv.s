lbl_8018A3B0:
/* 8018A3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018A3B4  7C 08 02 A6 */	mflr r0
/* 8018A3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018A3BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018A3C0  7C 7F 1B 78 */	mr r31, r3
/* 8018A3C4  A8 83 03 AC */	lha r4, 0x3ac(r3)
/* 8018A3C8  7C 80 07 35 */	extsh. r0, r4
/* 8018A3CC  41 82 00 10 */	beq lbl_8018A3DC
/* 8018A3D0  38 04 FF FF */	addi r0, r4, -1
/* 8018A3D4  B0 1F 03 AC */	sth r0, 0x3ac(r31)
/* 8018A3D8  48 00 00 58 */	b lbl_8018A430
lbl_8018A3DC:
/* 8018A3DC  7C 80 07 35 */	extsh. r0, r4
/* 8018A3E0  40 82 00 50 */	bne lbl_8018A430
/* 8018A3E4  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018A3E8  54 00 10 3A */	slwi r0, r0, 2
/* 8018A3EC  3C 80 80 3C */	lis r4, SelOpenEndFrameTbl@ha
/* 8018A3F0  38 84 A8 78 */	addi r4, r4, SelOpenEndFrameTbl@l
/* 8018A3F4  7C 84 00 2E */	lwzx r4, r4, r0
/* 8018A3F8  3C A0 80 3C */	lis r5, SelOpenStartFrameTbl@ha
/* 8018A3FC  38 A5 A8 6C */	addi r5, r5, SelOpenStartFrameTbl@l
/* 8018A400  7C A5 00 2E */	lwzx r5, r5, r0
/* 8018A404  4B FF B5 91 */	bl selectDataMoveAnmInitSet__14dFile_select_cFii
/* 8018A408  7F E3 FB 78 */	mr r3, r31
/* 8018A40C  38 80 00 43 */	li r4, 0x43
/* 8018A410  38 A0 00 01 */	li r5, 1
/* 8018A414  38 C0 00 00 */	li r6, 0
/* 8018A418  48 00 2C CD */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 8018A41C  7F E3 FB 78 */	mr r3, r31
/* 8018A420  38 80 00 01 */	li r4, 1
/* 8018A424  48 00 30 D5 */	bl ketteiTxtDispAnmInit__14dFile_select_cFUc
/* 8018A428  38 00 00 29 */	li r0, 0x29
/* 8018A42C  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_8018A430:
/* 8018A430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018A434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018A438  7C 08 03 A6 */	mtlr r0
/* 8018A43C  38 21 00 10 */	addi r1, r1, 0x10
/* 8018A440  4E 80 00 20 */	blr 
