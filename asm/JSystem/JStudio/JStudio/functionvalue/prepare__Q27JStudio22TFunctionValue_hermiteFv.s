lbl_80283428:
/* 80283428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028342C  7C 08 02 A6 */	mflr r0
/* 80283430  90 01 00 14 */	stw r0, 0x14(r1)
/* 80283434  38 63 00 08 */	addi r3, r3, 8
/* 80283438  4B FF E5 15 */	bl range_prepare__Q27JStudio29TFunctionValueAttribute_rangeFv
/* 8028343C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80283440  7C 08 03 A6 */	mtlr r0
/* 80283444  38 21 00 10 */	addi r1, r1, 0x10
/* 80283448  4E 80 00 20 */	blr 
