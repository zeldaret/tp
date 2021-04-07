lbl_80CC6A98:
/* 80CC6A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC6A9C  7C 08 02 A6 */	mflr r0
/* 80CC6AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC6AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC6AA8  7C 7F 1B 78 */	mr r31, r3
/* 80CC6AAC  38 60 00 00 */	li r3, 0
/* 80CC6AB0  4B 36 5E CD */	bl getLayerNo__14dComIfG_play_cFi
/* 80CC6AB4  2C 03 00 03 */	cmpwi r3, 3
/* 80CC6AB8  41 82 00 0C */	beq lbl_80CC6AC4
/* 80CC6ABC  2C 03 00 0A */	cmpwi r3, 0xa
/* 80CC6AC0  40 82 00 14 */	bne lbl_80CC6AD4
lbl_80CC6AC4:
/* 80CC6AC4  28 1F 00 00 */	cmplwi r31, 0
/* 80CC6AC8  41 82 00 0C */	beq lbl_80CC6AD4
/* 80CC6ACC  7F E3 FB 78 */	mr r3, r31
/* 80CC6AD0  48 00 1D D9 */	bl changeScene__11daSCannon_cFv
lbl_80CC6AD4:
/* 80CC6AD4  38 60 00 01 */	li r3, 1
/* 80CC6AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC6ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC6AE0  7C 08 03 A6 */	mtlr r0
/* 80CC6AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC6AE8  4E 80 00 20 */	blr 
