lbl_8020D650:
/* 8020D650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020D654  7C 08 02 A6 */	mflr r0
/* 8020D658  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020D65C  4B FF FE 41 */	bl isEnableDispMap__11dMeterMap_cFv
/* 8020D660  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020D664  41 82 00 18 */	beq lbl_8020D67C
/* 8020D668  4B FF FE C1 */	bl getMapDispSizeTypeNo__11dMeterMap_cFv
/* 8020D66C  2C 03 00 00 */	cmpwi r3, 0
/* 8020D670  41 82 00 0C */	beq lbl_8020D67C
/* 8020D674  38 60 00 01 */	li r3, 1
/* 8020D678  48 00 00 08 */	b lbl_8020D680
lbl_8020D67C:
/* 8020D67C  38 60 00 00 */	li r3, 0
lbl_8020D680:
/* 8020D680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020D684  7C 08 03 A6 */	mtlr r0
/* 8020D688  38 21 00 10 */	addi r1, r1, 0x10
/* 8020D68C  4E 80 00 20 */	blr 
