lbl_801E48AC:
/* 801E48AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E48B0  7C 08 02 A6 */	mflr r0
/* 801E48B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E48B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E48BC  7C 7F 1B 78 */	mr r31, r3
/* 801E48C0  38 80 04 0C */	li r4, 0x40c
/* 801E48C4  48 00 35 D5 */	bl setAButtonString__14dMenu_Option_cFUs
/* 801E48C8  7F E3 FB 78 */	mr r3, r31
/* 801E48CC  38 80 03 F9 */	li r4, 0x3f9
/* 801E48D0  48 00 36 CD */	bl setBButtonString__14dMenu_Option_cFUs
/* 801E48D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E48D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E48DC  7C 08 03 A6 */	mtlr r0
/* 801E48E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801E48E4  4E 80 00 20 */	blr 
