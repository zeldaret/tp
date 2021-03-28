lbl_801FB81C:
/* 801FB81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB820  7C 08 02 A6 */	mflr r0
/* 801FB824  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB82C  7C 7F 1B 78 */	mr r31, r3
/* 801FB830  80 63 01 28 */	lwz r3, 0x128(r3)
/* 801FB834  88 03 03 6C */	lbz r0, 0x36c(r3)
/* 801FB838  28 00 00 01 */	cmplwi r0, 1
/* 801FB83C  40 82 00 30 */	bne lbl_801FB86C
/* 801FB840  4B FE 22 35 */	bl _open__14dMenu_Letter_cFv
/* 801FB844  88 1F 01 52 */	lbz r0, 0x152(r31)
/* 801FB848  28 00 00 00 */	cmplwi r0, 0
/* 801FB84C  40 82 00 20 */	bne lbl_801FB86C
/* 801FB850  80 7F 01 28 */	lwz r3, 0x128(r31)
/* 801FB854  4B FE 20 E1 */	bl isSync__14dMenu_Letter_cFv
/* 801FB858  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB85C  41 82 00 10 */	beq lbl_801FB86C
/* 801FB860  48 00 16 19 */	bl dMw_fade_in__5dMw_cFv
/* 801FB864  38 00 00 01 */	li r0, 1
/* 801FB868  98 1F 01 52 */	stb r0, 0x152(r31)
lbl_801FB86C:
/* 801FB86C  80 7F 01 28 */	lwz r3, 0x128(r31)
/* 801FB870  88 03 03 6C */	lbz r0, 0x36c(r3)
/* 801FB874  28 00 00 02 */	cmplwi r0, 2
/* 801FB878  40 82 00 20 */	bne lbl_801FB898
/* 801FB87C  88 1F 01 52 */	lbz r0, 0x152(r31)
/* 801FB880  28 00 00 01 */	cmplwi r0, 1
/* 801FB884  40 82 00 14 */	bne lbl_801FB898
/* 801FB888  38 00 00 14 */	li r0, 0x14
/* 801FB88C  98 1F 01 46 */	stb r0, 0x146(r31)
/* 801FB890  38 00 00 00 */	li r0, 0
/* 801FB894  98 1F 01 52 */	stb r0, 0x152(r31)
lbl_801FB898:
/* 801FB898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB89C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB8A0  7C 08 03 A6 */	mtlr r0
/* 801FB8A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB8A8  4E 80 00 20 */	blr 
