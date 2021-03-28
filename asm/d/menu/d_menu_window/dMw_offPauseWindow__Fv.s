lbl_801FA0AC:
/* 801FA0AC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FA0B0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FA0B4  80 63 00 24 */	lwz r3, 0x24(r3)
/* 801FA0B8  28 03 00 00 */	cmplwi r3, 0
/* 801FA0BC  4D 82 00 20 */	beqlr 
/* 801FA0C0  38 00 00 00 */	li r0, 0
/* 801FA0C4  98 03 01 54 */	stb r0, 0x154(r3)
/* 801FA0C8  4E 80 00 20 */	blr 
