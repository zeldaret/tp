lbl_809B3AB0:
/* 809B3AB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B3AB4  7C 08 02 A6 */	mflr r0
/* 809B3AB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B3ABC  39 61 00 20 */	addi r11, r1, 0x20
/* 809B3AC0  4B 9A E7 1C */	b _savegpr_29
/* 809B3AC4  3B A0 00 00 */	li r29, 0
/* 809B3AC8  3B E0 00 00 */	li r31, 0
/* 809B3ACC  3C 60 80 9C */	lis r3, sTempBit@ha
/* 809B3AD0  3B C3 94 1C */	addi r30, r3, sTempBit@l
lbl_809B3AD4:
/* 809B3AD4  7C 7E F8 2E */	lwzx r3, r30, r31
/* 809B3AD8  4B 79 90 94 */	b daNpcT_chkTmpBit__FUl
/* 809B3ADC  2C 03 00 00 */	cmpwi r3, 0
/* 809B3AE0  41 82 00 14 */	beq lbl_809B3AF4
/* 809B3AE4  7C 7E F8 2E */	lwzx r3, r30, r31
/* 809B3AE8  4B 79 90 44 */	b daNpcT_offTmpBit__FUl
/* 809B3AEC  7F A3 EB 78 */	mr r3, r29
/* 809B3AF0  48 00 00 18 */	b lbl_809B3B08
lbl_809B3AF4:
/* 809B3AF4  3B BD 00 01 */	addi r29, r29, 1
/* 809B3AF8  28 1D 00 04 */	cmplwi r29, 4
/* 809B3AFC  3B FF 00 04 */	addi r31, r31, 4
/* 809B3B00  41 80 FF D4 */	blt lbl_809B3AD4
/* 809B3B04  38 60 FF FF */	li r3, -1
lbl_809B3B08:
/* 809B3B08  39 61 00 20 */	addi r11, r1, 0x20
/* 809B3B0C  4B 9A E7 1C */	b _restgpr_29
/* 809B3B10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B3B14  7C 08 03 A6 */	mtlr r0
/* 809B3B18  38 21 00 20 */	addi r1, r1, 0x20
/* 809B3B1C  4E 80 00 20 */	blr 
