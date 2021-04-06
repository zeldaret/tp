lbl_80CFDD6C:
/* 80CFDD6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFDD70  7C 08 02 A6 */	mflr r0
/* 80CFDD74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFDD78  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 80CFDD7C  54 00 20 36 */	slwi r0, r0, 4
/* 80CFDD80  3C 80 80 3B */	lis r4, field_item_res__10dItem_data@ha /* 0x803ADD88@ha */
/* 80CFDD84  38 84 DD 88 */	addi r4, r4, field_item_res__10dItem_data@l /* 0x803ADD88@l */
/* 80CFDD88  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CFDD8C  4B 44 69 99 */	bl DeleteBase__12daItemBase_cFPCc
/* 80CFDD90  38 60 00 01 */	li r3, 1
/* 80CFDD94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFDD98  7C 08 03 A6 */	mtlr r0
/* 80CFDD9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFDDA0  4E 80 00 20 */	blr 
