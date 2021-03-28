lbl_801FA0CC:
/* 801FA0CC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FA0D0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FA0D4  80 63 00 24 */	lwz r3, 0x24(r3)
/* 801FA0D8  28 03 00 00 */	cmplwi r3, 0
/* 801FA0DC  4D 82 00 20 */	beqlr 
/* 801FA0E0  88 03 01 47 */	lbz r0, 0x147(r3)
/* 801FA0E4  60 00 00 01 */	ori r0, r0, 1
/* 801FA0E8  98 03 01 47 */	stb r0, 0x147(r3)
/* 801FA0EC  4E 80 00 20 */	blr 
