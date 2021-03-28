lbl_8003FE70:
/* 8003FE70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003FE74  7C 08 02 A6 */	mflr r0
/* 8003FE78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003FE7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8003FE80  48 32 23 59 */	bl _savegpr_28
/* 8003FE84  7C 7C 1B 78 */	mr r28, r3
/* 8003FE88  7C 9D 23 78 */	mr r29, r4
/* 8003FE8C  7C BF 2B 78 */	mr r31, r5
/* 8003FE90  3B C0 00 00 */	li r30, 0
/* 8003FE94  81 83 00 00 */	lwz r12, 0(r3)
/* 8003FE98  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8003FE9C  7D 89 03 A6 */	mtctr r12
/* 8003FEA0  4E 80 04 21 */	bctrl 
/* 8003FEA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003FEA8  40 82 00 0C */	bne lbl_8003FEB4
/* 8003FEAC  7C 1D F8 00 */	cmpw r29, r31
/* 8003FEB0  40 82 00 08 */	bne lbl_8003FEB8
lbl_8003FEB4:
/* 8003FEB4  3B C0 00 01 */	li r30, 1
lbl_8003FEB8:
/* 8003FEB8  7F 83 E3 78 */	mr r3, r28
/* 8003FEBC  81 9C 00 00 */	lwz r12, 0(r28)
/* 8003FEC0  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 8003FEC4  7D 89 03 A6 */	mtctr r12
/* 8003FEC8  4E 80 04 21 */	bctrl 
/* 8003FECC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003FED0  41 82 00 28 */	beq lbl_8003FEF8
/* 8003FED4  3B E0 00 00 */	li r31, 0
/* 8003FED8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8003FEDC  40 82 00 14 */	bne lbl_8003FEF0
/* 8003FEE0  7F A3 EB 78 */	mr r3, r29
/* 8003FEE4  4B FF EE 2D */	bl isVisitedRoom__10dMapInfo_nFi
/* 8003FEE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003FEEC  41 82 00 08 */	beq lbl_8003FEF4
lbl_8003FEF0:
/* 8003FEF0  3B E0 00 01 */	li r31, 1
lbl_8003FEF4:
/* 8003FEF4  7F FE FB 78 */	mr r30, r31
lbl_8003FEF8:
/* 8003FEF8  7F C3 F3 78 */	mr r3, r30
/* 8003FEFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8003FF00  48 32 23 25 */	bl _restgpr_28
/* 8003FF04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003FF08  7C 08 03 A6 */	mtlr r0
/* 8003FF0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003FF10  4E 80 00 20 */	blr 
