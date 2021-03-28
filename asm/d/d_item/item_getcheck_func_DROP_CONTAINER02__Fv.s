lbl_8009ADFC:
/* 8009ADFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AE00  7C 08 02 A6 */	mflr r0
/* 8009AE04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AE08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009AE0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009AE10  38 63 01 14 */	addi r3, r3, 0x114
/* 8009AE14  38 80 00 01 */	li r4, 1
/* 8009AE18  4B F9 95 85 */	bl isLightDropGetFlag__16dSv_light_drop_cCFUc
/* 8009AE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AE20  7C 08 03 A6 */	mtlr r0
/* 8009AE24  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AE28  4E 80 00 20 */	blr 
