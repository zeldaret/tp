lbl_800336BC:
/* 800336BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800336C0  7C 08 02 A6 */	mflr r0
/* 800336C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800336C8  38 A0 00 60 */	li r5, 0x60
/* 800336CC  4B FF FE CD */	bl setEquipBottleItemIn__17dSv_player_item_cFUcUc
/* 800336D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800336D4  7C 08 03 A6 */	mtlr r0
/* 800336D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800336DC  4E 80 00 20 */	blr 
