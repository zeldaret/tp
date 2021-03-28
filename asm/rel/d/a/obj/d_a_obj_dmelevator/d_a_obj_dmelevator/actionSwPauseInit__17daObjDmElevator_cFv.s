lbl_80BDE83C:
/* 80BDE83C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BDE840  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BDE844  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80BDE848  80 04 05 8C */	lwz r0, 0x58c(r4)
/* 80BDE84C  60 00 02 00 */	ori r0, r0, 0x200
/* 80BDE850  90 04 05 8C */	stw r0, 0x58c(r4)
/* 80BDE854  38 00 00 0A */	li r0, 0xa
/* 80BDE858  98 03 06 2A */	stb r0, 0x62a(r3)
/* 80BDE85C  38 00 00 02 */	li r0, 2
/* 80BDE860  98 03 06 29 */	stb r0, 0x629(r3)
/* 80BDE864  4E 80 00 20 */	blr 
