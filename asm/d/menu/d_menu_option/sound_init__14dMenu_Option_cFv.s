lbl_801E4488:
/* 801E4488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E448C  7C 08 02 A6 */	mflr r0
/* 801E4490  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E4494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E4498  7C 7F 1B 78 */	mr r31, r3
/* 801E449C  80 63 00 44 */	lwz r3, 0x44(r3)
/* 801E44A0  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E44A4  4B FB 0D FD */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801E44A8  7F E3 FB 78 */	mr r3, r31
/* 801E44AC  38 80 00 02 */	li r4, 2
/* 801E44B0  48 00 2E 65 */	bl setCursorPos__14dMenu_Option_cFUc
/* 801E44B4  7F E3 FB 78 */	mr r3, r31
/* 801E44B8  38 80 04 0C */	li r4, 0x40c
/* 801E44BC  48 00 39 DD */	bl setAButtonString__14dMenu_Option_cFUs
/* 801E44C0  7F E3 FB 78 */	mr r3, r31
/* 801E44C4  38 80 03 F9 */	li r4, 0x3f9
/* 801E44C8  48 00 3A D5 */	bl setBButtonString__14dMenu_Option_cFUs
/* 801E44CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E44D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E44D4  7C 08 03 A6 */	mtlr r0
/* 801E44D8  38 21 00 10 */	addi r1, r1, 0x10
/* 801E44DC  4E 80 00 20 */	blr 
