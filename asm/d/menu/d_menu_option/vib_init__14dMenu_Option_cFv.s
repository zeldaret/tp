lbl_801E41A0:
/* 801E41A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E41A4  7C 08 02 A6 */	mflr r0
/* 801E41A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E41AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E41B0  7C 7F 1B 78 */	mr r31, r3
/* 801E41B4  80 63 00 44 */	lwz r3, 0x44(r3)
/* 801E41B8  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E41BC  4B FB 10 E5 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801E41C0  7F E3 FB 78 */	mr r3, r31
/* 801E41C4  38 80 00 01 */	li r4, 1
/* 801E41C8  48 00 31 4D */	bl setCursorPos__14dMenu_Option_cFUc
/* 801E41CC  7F E3 FB 78 */	mr r3, r31
/* 801E41D0  38 80 04 0C */	li r4, 0x40c
/* 801E41D4  48 00 3C C5 */	bl setAButtonString__14dMenu_Option_cFUs
/* 801E41D8  7F E3 FB 78 */	mr r3, r31
/* 801E41DC  38 80 03 F9 */	li r4, 0x3f9
/* 801E41E0  48 00 3D BD */	bl setBButtonString__14dMenu_Option_cFUs
/* 801E41E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E41E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E41EC  7C 08 03 A6 */	mtlr r0
/* 801E41F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801E41F4  4E 80 00 20 */	blr 
