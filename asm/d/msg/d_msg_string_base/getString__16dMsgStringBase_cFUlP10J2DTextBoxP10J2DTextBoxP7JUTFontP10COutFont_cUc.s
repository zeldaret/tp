lbl_80249BB0:
/* 80249BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249BB4  7C 08 02 A6 */	mflr r0
/* 80249BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80249BBC  4B FF FB AD */	bl getStringLocal__16dMsgStringBase_cFUlP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc
/* 80249BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80249BC4  7C 08 03 A6 */	mtlr r0
/* 80249BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80249BCC  4E 80 00 20 */	blr 
