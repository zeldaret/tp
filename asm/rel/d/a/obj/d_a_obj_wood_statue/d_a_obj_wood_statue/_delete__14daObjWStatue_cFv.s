lbl_80D3B480:
/* 80D3B480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B484  7C 08 02 A6 */	mflr r0
/* 80D3B488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B48C  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 80D3B490  54 00 20 36 */	slwi r0, r0, 4
/* 80D3B494  3C 80 80 3B */	lis r4, field_item_res__10dItem_data@ha /* 0x803ADD88@ha */
/* 80D3B498  38 84 DD 88 */	addi r4, r4, field_item_res__10dItem_data@l /* 0x803ADD88@l */
/* 80D3B49C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3B4A0  4B 40 92 85 */	bl DeleteBase__12daItemBase_cFPCc
/* 80D3B4A4  38 60 00 01 */	li r3, 1
/* 80D3B4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3B4AC  7C 08 03 A6 */	mtlr r0
/* 80D3B4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3B4B4  4E 80 00 20 */	blr 
