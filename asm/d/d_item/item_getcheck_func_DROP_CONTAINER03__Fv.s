lbl_8009AE2C:
/* 8009AE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AE30  7C 08 02 A6 */	mflr r0
/* 8009AE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AE38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009AE3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009AE40  38 63 01 14 */	addi r3, r3, 0x114
/* 8009AE44  38 80 00 02 */	li r4, 2
/* 8009AE48  4B F9 95 55 */	bl isLightDropGetFlag__16dSv_light_drop_cCFUc
/* 8009AE4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AE50  7C 08 03 A6 */	mtlr r0
/* 8009AE54  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AE58  4E 80 00 20 */	blr 
