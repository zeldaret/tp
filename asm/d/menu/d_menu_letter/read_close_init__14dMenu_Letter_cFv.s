lbl_801DEE20:
/* 801DEE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DEE24  7C 08 02 A6 */	mflr r0
/* 801DEE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DEE2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DEE30  7C 7F 1B 78 */	mr r31, r3
/* 801DEE34  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801DEE38  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801DEE3C  A8 04 07 5E */	lha r0, 0x75e(r4)
/* 801DEE40  B0 03 03 6A */	sth r0, 0x36a(r3)
/* 801DEE44  38 80 00 00 */	li r4, 0
/* 801DEE48  48 00 26 D1 */	bl setAButtonString__14dMenu_Letter_cFUs
/* 801DEE4C  7F E3 FB 78 */	mr r3, r31
/* 801DEE50  38 80 00 00 */	li r4, 0
/* 801DEE54  48 00 27 75 */	bl setBButtonString__14dMenu_Letter_cFUs
/* 801DEE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DEE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DEE60  7C 08 03 A6 */	mtlr r0
/* 801DEE64  38 21 00 10 */	addi r1, r1, 0x10
/* 801DEE68  4E 80 00 20 */	blr 
