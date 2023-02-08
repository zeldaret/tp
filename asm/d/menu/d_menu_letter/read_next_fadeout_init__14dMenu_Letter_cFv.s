lbl_801DEA48:
/* 801DEA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DEA4C  7C 08 02 A6 */	mflr r0
/* 801DEA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DEA54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DEA58  7C 7F 1B 78 */	mr r31, r3
/* 801DEA5C  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801DEA60  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801DEA64  A8 04 07 5E */	lha r0, 0x75e(r4)
/* 801DEA68  B0 03 03 6A */	sth r0, 0x36a(r3)
/* 801DEA6C  38 80 00 00 */	li r4, 0
/* 801DEA70  48 00 2A A9 */	bl setAButtonString__14dMenu_Letter_cFUs
/* 801DEA74  7F E3 FB 78 */	mr r3, r31
/* 801DEA78  38 80 00 00 */	li r4, 0
/* 801DEA7C  48 00 2B 4D */	bl setBButtonString__14dMenu_Letter_cFUs
/* 801DEA80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DEA84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DEA88  7C 08 03 A6 */	mtlr r0
/* 801DEA8C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DEA90  4E 80 00 20 */	blr 
