lbl_801C02F0:
/* 801C02F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C02F4  7C 08 02 A6 */	mflr r0
/* 801C02F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C02FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0300  93 C1 00 08 */	stw r30, 8(r1)
/* 801C0304  7C 7E 1B 78 */	mr r30, r3
/* 801C0308  80 63 00 04 */	lwz r3, 4(r3)
/* 801C030C  88 03 00 F5 */	lbz r0, 0xf5(r3)
/* 801C0310  7C 00 00 34 */	cntlzw r0, r0
/* 801C0314  54 1F D9 7E */	srwi r31, r0, 5
/* 801C0318  80 7E 00 08 */	lwz r3, 8(r30)
/* 801C031C  4B FF 86 39 */	bl iconScaleAnm__14dMenu_DmapBg_cFv
/* 801C0320  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801C0324  28 00 00 01 */	cmplwi r0, 1
/* 801C0328  40 82 00 40 */	bne lbl_801C0368
/* 801C032C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C0330  28 00 00 01 */	cmplwi r0, 1
/* 801C0334  40 82 00 34 */	bne lbl_801C0368
/* 801C0338  38 00 00 00 */	li r0, 0
/* 801C033C  98 1E 01 7F */	stb r0, 0x17f(r30)
/* 801C0340  80 7E 00 08 */	lwz r3, 8(r30)
/* 801C0344  38 80 05 27 */	li r4, 0x527
/* 801C0348  4B FF 8A 9D */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801C034C  80 7E 00 08 */	lwz r3, 8(r30)
/* 801C0350  38 80 03 F9 */	li r4, 0x3f9
/* 801C0354  4B FF 8B 69 */	bl setBButtonString__14dMenu_DmapBg_cFUl
/* 801C0358  38 00 00 00 */	li r0, 0
/* 801C035C  B0 1E 01 66 */	sth r0, 0x166(r30)
/* 801C0360  B0 1E 01 68 */	sth r0, 0x168(r30)
/* 801C0364  98 1E 01 7E */	stb r0, 0x17e(r30)
lbl_801C0368:
/* 801C0368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C036C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C0370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0374  7C 08 03 A6 */	mtlr r0
/* 801C0378  38 21 00 10 */	addi r1, r1, 0x10
/* 801C037C  4E 80 00 20 */	blr 
