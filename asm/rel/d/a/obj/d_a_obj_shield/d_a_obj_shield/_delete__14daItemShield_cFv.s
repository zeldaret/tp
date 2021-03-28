lbl_80CD8140:
/* 80CD8140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD8144  7C 08 02 A6 */	mflr r0
/* 80CD8148  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD814C  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 80CD8150  54 00 20 36 */	slwi r0, r0, 4
/* 80CD8154  3C 80 80 3B */	lis r4, field_item_res__10dItem_data@ha
/* 80CD8158  38 84 DD 88 */	addi r4, r4, field_item_res__10dItem_data@l
/* 80CD815C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CD8160  4B 46 C5 C4 */	b DeleteBase__12daItemBase_cFPCc
/* 80CD8164  38 60 00 01 */	li r3, 1
/* 80CD8168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD816C  7C 08 03 A6 */	mtlr r0
/* 80CD8170  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD8174  4E 80 00 20 */	blr 
