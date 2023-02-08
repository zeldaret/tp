lbl_801E51CC:
/* 801E51CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E51D0  7C 08 02 A6 */	mflr r0
/* 801E51D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E51D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E51DC  7C 7F 1B 78 */	mr r31, r3
/* 801E51E0  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801E51E4  80 03 00 04 */	lwz r0, 4(r3)
/* 801E51E8  2C 00 00 00 */	cmpwi r0, 0
/* 801E51EC  40 82 00 44 */	bne lbl_801E5230
/* 801E51F0  48 01 7C 89 */	bl dMw_fade_in__5dMw_cFv
/* 801E51F4  C0 02 A9 2C */	lfs f0, lit_4068(r2)
/* 801E51F8  D0 1F 03 30 */	stfs f0, 0x330(r31)
/* 801E51FC  38 00 00 01 */	li r0, 1
/* 801E5200  98 1F 03 F3 */	stb r0, 0x3f3(r31)
/* 801E5204  7F E3 FB 78 */	mr r3, r31
/* 801E5208  38 80 00 00 */	li r4, 0
/* 801E520C  48 00 2C 8D */	bl setAButtonString__14dMenu_Option_cFUs
/* 801E5210  7F E3 FB 78 */	mr r3, r31
/* 801E5214  38 80 03 F9 */	li r4, 0x3f9
/* 801E5218  48 00 2D 85 */	bl setBButtonString__14dMenu_Option_cFUs
/* 801E521C  7F E3 FB 78 */	mr r3, r31
/* 801E5220  48 00 24 CD */	bl getSelectType__14dMenu_Option_cFv
/* 801E5224  7C 64 1B 78 */	mr r4, r3
/* 801E5228  7F E3 FB 78 */	mr r3, r31
/* 801E522C  48 00 20 E9 */	bl setCursorPos__14dMenu_Option_cFUc
lbl_801E5230:
/* 801E5230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E5234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E5238  7C 08 03 A6 */	mtlr r0
/* 801E523C  38 21 00 10 */	addi r1, r1, 0x10
/* 801E5240  4E 80 00 20 */	blr 
