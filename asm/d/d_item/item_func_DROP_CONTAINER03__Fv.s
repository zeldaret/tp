lbl_800993CC:
/* 800993CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800993D0  7C 08 02 A6 */	mflr r0
/* 800993D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800993D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800993DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800993E0  38 63 01 14 */	addi r3, r3, 0x114
/* 800993E4  38 80 00 02 */	li r4, 2
/* 800993E8  4B F9 AF 81 */	bl onLightDropGetFlag__16dSv_light_drop_cFUc
/* 800993EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800993F0  7C 08 03 A6 */	mtlr r0
/* 800993F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800993F8  4E 80 00 20 */	blr 
