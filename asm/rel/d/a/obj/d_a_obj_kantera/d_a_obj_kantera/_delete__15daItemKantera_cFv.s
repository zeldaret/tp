lbl_80C39530:
/* 80C39530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C39534  7C 08 02 A6 */	mflr r0
/* 80C39538  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3953C  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 80C39540  54 00 20 36 */	slwi r0, r0, 4
/* 80C39544  3C 80 80 3B */	lis r4, field_item_res__10dItem_data@ha /* 0x803ADD88@ha */
/* 80C39548  38 84 DD 88 */	addi r4, r4, field_item_res__10dItem_data@l /* 0x803ADD88@l */
/* 80C3954C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C39550  4B 50 B1 D5 */	bl DeleteBase__12daItemBase_cFPCc
/* 80C39554  38 60 00 01 */	li r3, 1
/* 80C39558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3955C  7C 08 03 A6 */	mtlr r0
/* 80C39560  38 21 00 10 */	addi r1, r1, 0x10
/* 80C39564  4E 80 00 20 */	blr 
