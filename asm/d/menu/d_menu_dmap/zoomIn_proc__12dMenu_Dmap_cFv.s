lbl_801C01A0:
/* 801C01A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C01A4  7C 08 02 A6 */	mflr r0
/* 801C01A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C01AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C01B0  93 C1 00 08 */	stw r30, 8(r1)
/* 801C01B4  7C 7E 1B 78 */	mr r30, r3
/* 801C01B8  80 63 00 04 */	lwz r3, 4(r3)
/* 801C01BC  88 03 00 F5 */	lbz r0, 0xf5(r3)
/* 801C01C0  20 00 00 02 */	subfic r0, r0, 2
/* 801C01C4  7C 00 00 34 */	cntlzw r0, r0
/* 801C01C8  54 1F D9 7E */	srwi r31, r0, 5
/* 801C01CC  80 7E 00 08 */	lwz r3, 8(r30)
/* 801C01D0  4B FF 87 85 */	bl iconScaleAnm__14dMenu_DmapBg_cFv
/* 801C01D4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801C01D8  28 00 00 01 */	cmplwi r0, 1
/* 801C01DC  40 82 00 48 */	bne lbl_801C0224
/* 801C01E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C01E4  28 00 00 01 */	cmplwi r0, 1
/* 801C01E8  40 82 00 3C */	bne lbl_801C0224
/* 801C01EC  38 00 00 01 */	li r0, 1
/* 801C01F0  98 1E 01 7F */	stb r0, 0x17f(r30)
/* 801C01F4  80 7E 00 08 */	lwz r3, 8(r30)
/* 801C01F8  38 80 00 00 */	li r4, 0
/* 801C01FC  4B FF 8B E9 */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801C0200  80 7E 00 08 */	lwz r3, 8(r30)
/* 801C0204  38 80 05 22 */	li r4, 0x522
/* 801C0208  4B FF 8C B5 */	bl setBButtonString__14dMenu_DmapBg_cFUl
/* 801C020C  38 00 03 7B */	li r0, 0x37b
/* 801C0210  B0 1E 01 66 */	sth r0, 0x166(r30)
/* 801C0214  38 00 05 69 */	li r0, 0x569
/* 801C0218  B0 1E 01 68 */	sth r0, 0x168(r30)
/* 801C021C  38 00 00 00 */	li r0, 0
/* 801C0220  98 1E 01 7E */	stb r0, 0x17e(r30)
lbl_801C0224:
/* 801C0224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0228  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C022C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0230  7C 08 03 A6 */	mtlr r0
/* 801C0234  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0238  4E 80 00 20 */	blr 
