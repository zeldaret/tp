lbl_801451B4:
/* 801451B4  3C 80 80 3B */	lis r4, item_info__10dItem_data@ha /* 0x803AED78@ha */
/* 801451B8  38 84 ED 78 */	addi r4, r4, item_info__10dItem_data@l /* 0x803AED78@l */
/* 801451BC  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 801451C0  54 00 10 3A */	slwi r0, r0, 2
/* 801451C4  7C 64 02 14 */	add r3, r4, r0
/* 801451C8  88 63 00 01 */	lbz r3, 1(r3)
/* 801451CC  4E 80 00 20 */	blr 
