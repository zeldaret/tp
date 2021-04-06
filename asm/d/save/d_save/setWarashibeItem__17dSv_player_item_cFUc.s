lbl_80033C2C:
/* 80033C2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033C30  7C 08 02 A6 */	mflr r0
/* 80033C34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80033C38  39 61 00 20 */	addi r11, r1, 0x20
/* 80033C3C  48 32 E5 A1 */	bl _savegpr_29
/* 80033C40  7C 9D 23 78 */	mr r29, r4
/* 80033C44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80033C48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80033C4C  38 63 00 9C */	addi r3, r3, 0x9c
/* 80033C50  38 80 00 15 */	li r4, 0x15
/* 80033C54  7F A5 EB 78 */	mr r5, r29
/* 80033C58  4B FF F3 61 */	bl setItem__17dSv_player_item_cFiUc
/* 80033C5C  38 00 00 15 */	li r0, 0x15
/* 80033C60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80033C64  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80033C68  98 1F 5E 7D */	stb r0, 0x5e7d(r31)
/* 80033C6C  9B BF 5E 7E */	stb r29, 0x5e7e(r31)
/* 80033C70  3B A0 00 00 */	li r29, 0
lbl_80033C74:
/* 80033C74  7F E3 FB 78 */	mr r3, r31
/* 80033C78  57 BE 06 3E */	clrlwi r30, r29, 0x18
/* 80033C7C  7F C4 F3 78 */	mr r4, r30
/* 80033C80  4B FF ED DD */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 80033C84  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80033C88  28 00 00 15 */	cmplwi r0, 0x15
/* 80033C8C  40 82 00 0C */	bne lbl_80033C98
/* 80033C90  7F C3 F3 78 */	mr r3, r30
/* 80033C94  4B FF A1 61 */	bl dComIfGp_setSelectItem__Fi
lbl_80033C98:
/* 80033C98  3B BD 00 01 */	addi r29, r29, 1
/* 80033C9C  2C 1D 00 04 */	cmpwi r29, 4
/* 80033CA0  41 80 FF D4 */	blt lbl_80033C74
/* 80033CA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80033CA8  48 32 E5 81 */	bl _restgpr_29
/* 80033CAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033CB0  7C 08 03 A6 */	mtlr r0
/* 80033CB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80033CB8  4E 80 00 20 */	blr 
