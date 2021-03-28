lbl_80190254:
/* 80190254  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80190258  7C 08 02 A6 */	mflr r0
/* 8019025C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80190260  39 61 00 20 */	addi r11, r1, 0x20
/* 80190264  48 1D 1F 79 */	bl _savegpr_29
/* 80190268  7C 7D 1B 78 */	mr r29, r3
/* 8019026C  3B C0 00 00 */	li r30, 0
/* 80190270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80190274  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
lbl_80190278:
/* 80190278  7F E3 FB 78 */	mr r3, r31
/* 8019027C  38 9D 03 B8 */	addi r4, r29, 0x3b8
/* 80190280  7F C5 F3 78 */	mr r5, r30
/* 80190284  4B EA 59 4D */	bl initdata_to_card__10dSv_info_cFPci
/* 80190288  38 7D 03 B8 */	addi r3, r29, 0x3b8
/* 8019028C  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 80190290  4B E8 7A A9 */	bl mDoMemCdRWm_SetCheckSumGameData__FPUcUc
/* 80190294  3B DE 00 01 */	addi r30, r30, 1
/* 80190298  2C 1E 00 03 */	cmpwi r30, 3
/* 8019029C  41 80 FF DC */	blt lbl_80190278
/* 801902A0  39 61 00 20 */	addi r11, r1, 0x20
/* 801902A4  48 1D 1F 85 */	bl _restgpr_29
/* 801902A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801902AC  7C 08 03 A6 */	mtlr r0
/* 801902B0  38 21 00 20 */	addi r1, r1, 0x20
/* 801902B4  4E 80 00 20 */	blr 
