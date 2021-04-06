lbl_8025C0D4:
/* 8025C0D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025C0D8  7C 08 02 A6 */	mflr r0
/* 8025C0DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025C0E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8025C0E4  48 10 60 F9 */	bl _savegpr_29
/* 8025C0E8  7C 7D 1B 78 */	mr r29, r3
/* 8025C0EC  3B C0 00 00 */	li r30, 0
/* 8025C0F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025C0F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025C0F8  3B E3 00 28 */	addi r31, r3, 0x28
lbl_8025C0FC:
/* 8025C0FC  7F E3 FB 78 */	mr r3, r31
/* 8025C100  7F C4 F3 78 */	mr r4, r30
/* 8025C104  4B DD 6A E9 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 8025C108  7C 9D F2 14 */	add r4, r29, r30
/* 8025C10C  98 64 00 05 */	stb r3, 5(r4)
/* 8025C110  88 04 00 05 */	lbz r0, 5(r4)
/* 8025C114  98 04 00 09 */	stb r0, 9(r4)
/* 8025C118  3B DE 00 01 */	addi r30, r30, 1
/* 8025C11C  2C 1E 00 04 */	cmpwi r30, 4
/* 8025C120  41 80 FF DC */	blt lbl_8025C0FC
/* 8025C124  39 61 00 20 */	addi r11, r1, 0x20
/* 8025C128  48 10 61 01 */	bl _restgpr_29
/* 8025C12C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025C130  7C 08 03 A6 */	mtlr r0
/* 8025C134  38 21 00 20 */	addi r1, r1, 0x20
/* 8025C138  4E 80 00 20 */	blr 
