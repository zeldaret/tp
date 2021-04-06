lbl_8014519C:
/* 8014519C  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 801451A0  54 00 10 3A */	slwi r0, r0, 2
/* 801451A4  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha /* 0x803AED78@ha */
/* 801451A8  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l /* 0x803AED78@l */
/* 801451AC  7C 63 00 AE */	lbzx r3, r3, r0
/* 801451B0  4E 80 00 20 */	blr 
