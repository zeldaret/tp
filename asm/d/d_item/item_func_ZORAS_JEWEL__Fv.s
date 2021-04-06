lbl_8009863C:
/* 8009863C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098640  7C 08 02 A6 */	mflr r0
/* 80098644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098648  48 00 1A 81 */	bl item_getcheck_func_FISHING_ROD_1__Fv
/* 8009864C  2C 03 00 00 */	cmpwi r3, 0
/* 80098650  41 82 00 18 */	beq lbl_80098668
/* 80098654  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098658  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009865C  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098660  4B F9 B6 5D */	bl setRodTypeLevelUp__17dSv_player_item_cFv
/* 80098664  48 00 00 1C */	b lbl_80098680
lbl_80098668:
/* 80098668  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009866C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098670  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098674  38 80 00 14 */	li r4, 0x14
/* 80098678  38 A0 00 3D */	li r5, 0x3d
/* 8009867C  4B F9 A9 3D */	bl setItem__17dSv_player_item_cFiUc
lbl_80098680:
/* 80098680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098684  7C 08 03 A6 */	mtlr r0
/* 80098688  38 21 00 10 */	addi r1, r1, 0x10
/* 8009868C  4E 80 00 20 */	blr 
