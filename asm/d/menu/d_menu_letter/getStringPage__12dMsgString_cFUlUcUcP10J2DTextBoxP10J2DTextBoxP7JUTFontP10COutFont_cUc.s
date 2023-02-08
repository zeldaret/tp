lbl_801E1D10:
/* 801E1D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E1D14  7C 08 02 A6 */	mflr r0
/* 801E1D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E1D1C  89 61 00 1B */	lbz r11, 0x1b(r1)
/* 801E1D20  28 0A 00 00 */	cmplwi r10, 0
/* 801E1D24  40 82 00 20 */	bne lbl_801E1D44
/* 801E1D28  80 03 00 24 */	lwz r0, 0x24(r3)
/* 801E1D2C  28 00 00 00 */	cmplwi r0, 0
/* 801E1D30  41 82 00 14 */	beq lbl_801E1D44
/* 801E1D34  91 61 00 08 */	stw r11, 8(r1)
/* 801E1D38  7C 0A 03 78 */	mr r10, r0
/* 801E1D3C  48 06 7B 9D */	bl getStringPageLocal__16dMsgStringBase_cFUlUcUcP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc
/* 801E1D40  48 00 00 0C */	b lbl_801E1D4C
lbl_801E1D44:
/* 801E1D44  91 61 00 08 */	stw r11, 8(r1)
/* 801E1D48  48 06 7B 91 */	bl getStringPageLocal__16dMsgStringBase_cFUlUcUcP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc
lbl_801E1D4C:
/* 801E1D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E1D50  7C 08 03 A6 */	mtlr r0
/* 801E1D54  38 21 00 10 */	addi r1, r1, 0x10
/* 801E1D58  4E 80 00 20 */	blr 
