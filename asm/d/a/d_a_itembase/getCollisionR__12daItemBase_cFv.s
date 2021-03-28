lbl_801451D0:
/* 801451D0  3C 80 80 3B */	lis r4, item_info__10dItem_data@ha
/* 801451D4  38 84 ED 78 */	addi r4, r4, item_info__10dItem_data@l
/* 801451D8  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 801451DC  54 00 10 3A */	slwi r0, r0, 2
/* 801451E0  7C 64 02 14 */	add r3, r4, r0
/* 801451E4  88 63 00 02 */	lbz r3, 2(r3)
/* 801451E8  4E 80 00 20 */	blr 
