lbl_801C556C:
/* 801C556C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C5570  7C 08 02 A6 */	mflr r0
/* 801C5574  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C557C  7C 7F 1B 78 */	mr r31, r3
/* 801C5580  38 80 00 00 */	li r4, 0
/* 801C5584  48 00 09 35 */	bl setAButtonString__15dMenu_Fishing_cFUs
/* 801C5588  7F E3 FB 78 */	mr r3, r31
/* 801C558C  38 80 03 F9 */	li r4, 0x3f9
/* 801C5590  48 00 09 D9 */	bl setBButtonString__15dMenu_Fishing_cFUs
/* 801C5594  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C5598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C559C  7C 08 03 A6 */	mtlr r0
/* 801C55A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801C55A4  4E 80 00 20 */	blr 
