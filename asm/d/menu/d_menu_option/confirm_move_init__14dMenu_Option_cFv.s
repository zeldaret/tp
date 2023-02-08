lbl_801E4CE4:
/* 801E4CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E4CE8  7C 08 02 A6 */	mflr r0
/* 801E4CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E4CF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E4CF4  7C 7F 1B 78 */	mr r31, r3
/* 801E4CF8  38 80 04 0C */	li r4, 0x40c
/* 801E4CFC  48 00 31 9D */	bl setAButtonString__14dMenu_Option_cFUs
/* 801E4D00  7F E3 FB 78 */	mr r3, r31
/* 801E4D04  38 80 03 F9 */	li r4, 0x3f9
/* 801E4D08  48 00 32 95 */	bl setBButtonString__14dMenu_Option_cFUs
/* 801E4D0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E4D10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E4D14  7C 08 03 A6 */	mtlr r0
/* 801E4D18  38 21 00 10 */	addi r1, r1, 0x10
/* 801E4D1C  4E 80 00 20 */	blr 
