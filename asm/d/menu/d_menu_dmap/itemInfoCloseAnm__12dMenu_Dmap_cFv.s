lbl_801BF278:
/* 801BF278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BF27C  7C 08 02 A6 */	mflr r0
/* 801BF280  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BF284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BF288  93 C1 00 08 */	stw r30, 8(r1)
/* 801BF28C  7C 7E 1B 78 */	mr r30, r3
/* 801BF290  3B E0 00 00 */	li r31, 0
/* 801BF294  80 63 00 08 */	lwz r3, 8(r3)
/* 801BF298  80 63 0D 18 */	lwz r3, 0xd18(r3)
/* 801BF29C  48 01 C1 D5 */	bl move__19dMenu_ItemExplain_cFv
/* 801BF2A0  80 7E 00 08 */	lwz r3, 8(r30)
/* 801BF2A4  80 83 0D 18 */	lwz r4, 0xd18(r3)
/* 801BF2A8  88 04 00 E0 */	lbz r0, 0xe0(r4)
/* 801BF2AC  28 00 00 00 */	cmplwi r0, 0
/* 801BF2B0  40 82 00 08 */	bne lbl_801BF2B8
/* 801BF2B4  3B E0 00 01 */	li r31, 1
lbl_801BF2B8:
/* 801BF2B8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801BF2BC  28 00 00 01 */	cmplwi r0, 1
/* 801BF2C0  40 82 00 5C */	bne lbl_801BF31C
/* 801BF2C4  4B FF 9E A1 */	bl deleteExplain__14dMenu_DmapBg_cFv
/* 801BF2C8  38 80 00 00 */	li r4, 0
/* 801BF2CC  80 7E 00 08 */	lwz r3, 8(r30)
/* 801BF2D0  98 83 0D D0 */	stb r4, 0xdd0(r3)
/* 801BF2D4  98 9E 01 85 */	stb r4, 0x185(r30)
/* 801BF2D8  38 00 00 01 */	li r0, 1
/* 801BF2DC  98 1E 01 83 */	stb r0, 0x183(r30)
/* 801BF2E0  98 9E 01 7C */	stb r4, 0x17c(r30)
/* 801BF2E4  80 7E 00 08 */	lwz r3, 8(r30)
/* 801BF2E8  38 80 03 F9 */	li r4, 0x3f9
/* 801BF2EC  4B FF 9B D1 */	bl setBButtonString__14dMenu_DmapBg_cFUl
/* 801BF2F0  88 1E 01 7F */	lbz r0, 0x17f(r30)
/* 801BF2F4  28 00 00 00 */	cmplwi r0, 0
/* 801BF2F8  41 82 00 18 */	beq lbl_801BF310
/* 801BF2FC  38 00 03 7B */	li r0, 0x37b
/* 801BF300  B0 1E 01 66 */	sth r0, 0x166(r30)
/* 801BF304  38 00 05 69 */	li r0, 0x569
/* 801BF308  B0 1E 01 68 */	sth r0, 0x168(r30)
/* 801BF30C  48 00 00 10 */	b lbl_801BF31C
lbl_801BF310:
/* 801BF310  38 00 00 00 */	li r0, 0
/* 801BF314  B0 1E 01 66 */	sth r0, 0x166(r30)
/* 801BF318  B0 1E 01 68 */	sth r0, 0x168(r30)
lbl_801BF31C:
/* 801BF31C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BF320  83 C1 00 08 */	lwz r30, 8(r1)
/* 801BF324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BF328  7C 08 03 A6 */	mtlr r0
/* 801BF32C  38 21 00 10 */	addi r1, r1, 0x10
/* 801BF330  4E 80 00 20 */	blr 
