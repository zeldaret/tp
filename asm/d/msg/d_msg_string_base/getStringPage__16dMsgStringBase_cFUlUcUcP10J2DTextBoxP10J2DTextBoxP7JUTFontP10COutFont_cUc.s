lbl_80249BD0:
/* 80249BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249BD4  7C 08 02 A6 */	mflr r0
/* 80249BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80249BDC  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 80249BE0  90 01 00 08 */	stw r0, 8(r1)
/* 80249BE4  4B FF FC F5 */	bl getStringPageLocal__16dMsgStringBase_cFUlUcUcP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc
/* 80249BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80249BEC  7C 08 03 A6 */	mtlr r0
/* 80249BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80249BF4  4E 80 00 20 */	blr 
