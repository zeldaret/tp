lbl_801E3F6C:
/* 801E3F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E3F70  7C 08 02 A6 */	mflr r0
/* 801E3F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E3F78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E3F7C  7C 7F 1B 78 */	mr r31, r3
/* 801E3F80  80 63 00 44 */	lwz r3, 0x44(r3)
/* 801E3F84  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E3F88  4B FB 13 19 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801E3F8C  7F E3 FB 78 */	mr r3, r31
/* 801E3F90  38 80 00 00 */	li r4, 0
/* 801E3F94  48 00 33 81 */	bl setCursorPos__14dMenu_Option_cFUc
/* 801E3F98  7F E3 FB 78 */	mr r3, r31
/* 801E3F9C  38 80 04 0C */	li r4, 0x40c
/* 801E3FA0  48 00 3E F9 */	bl setAButtonString__14dMenu_Option_cFUs
/* 801E3FA4  7F E3 FB 78 */	mr r3, r31
/* 801E3FA8  38 80 03 F9 */	li r4, 0x3f9
/* 801E3FAC  48 00 3F F1 */	bl setBButtonString__14dMenu_Option_cFUs
/* 801E3FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E3FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E3FB8  7C 08 03 A6 */	mtlr r0
/* 801E3FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 801E3FC0  4E 80 00 20 */	blr 
