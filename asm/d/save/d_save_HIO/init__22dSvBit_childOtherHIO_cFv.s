lbl_8025C178:
/* 8025C178  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025C17C  7C 08 02 A6 */	mflr r0
/* 8025C180  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025C184  39 61 00 20 */	addi r11, r1, 0x20
/* 8025C188  48 10 60 55 */	bl _savegpr_29
/* 8025C18C  7C 7D 1B 78 */	mr r29, r3
/* 8025C190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025C194  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025C198  3B E4 01 14 */	addi r31, r4, 0x114
/* 8025C19C  7F E3 FB 78 */	mr r3, r31
/* 8025C1A0  88 84 4E 0C */	lbz r4, 0x4e0c(r4)
/* 8025C1A4  4B DD 81 9D */	bl getLightDropNum__16dSv_light_drop_cCFUc
/* 8025C1A8  98 7D 00 05 */	stb r3, 5(r29)
/* 8025C1AC  88 1D 00 05 */	lbz r0, 5(r29)
/* 8025C1B0  98 1D 00 06 */	stb r0, 6(r29)
/* 8025C1B4  3B C0 00 00 */	li r30, 0
lbl_8025C1B8:
/* 8025C1B8  7F E3 FB 78 */	mr r3, r31
/* 8025C1BC  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 8025C1C0  4B DD 81 DD */	bl isLightDropGetFlag__16dSv_light_drop_cCFUc
/* 8025C1C4  7C 9D F2 14 */	add r4, r29, r30
/* 8025C1C8  98 64 00 07 */	stb r3, 7(r4)
/* 8025C1CC  88 04 00 07 */	lbz r0, 7(r4)
/* 8025C1D0  98 04 00 0B */	stb r0, 0xb(r4)
/* 8025C1D4  3B DE 00 01 */	addi r30, r30, 1
/* 8025C1D8  2C 1E 00 04 */	cmpwi r30, 4
/* 8025C1DC  41 80 FF DC */	blt lbl_8025C1B8
/* 8025C1E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8025C1E4  48 10 60 45 */	bl _restgpr_29
/* 8025C1E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025C1EC  7C 08 03 A6 */	mtlr r0
/* 8025C1F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8025C1F4  4E 80 00 20 */	blr 
