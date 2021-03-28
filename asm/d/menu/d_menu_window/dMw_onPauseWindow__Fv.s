lbl_801FA08C:
/* 801FA08C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FA090  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FA094  80 63 00 24 */	lwz r3, 0x24(r3)
/* 801FA098  28 03 00 00 */	cmplwi r3, 0
/* 801FA09C  4D 82 00 20 */	beqlr 
/* 801FA0A0  38 00 00 01 */	li r0, 1
/* 801FA0A4  98 03 01 54 */	stb r0, 0x154(r3)
/* 801FA0A8  4E 80 00 20 */	blr 
