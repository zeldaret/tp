lbl_8025C038:
/* 8025C038  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025C03C  7C 08 02 A6 */	mflr r0
/* 8025C040  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025C044  39 61 00 20 */	addi r11, r1, 0x20
/* 8025C048  48 10 61 95 */	bl _savegpr_29
/* 8025C04C  7C 7D 1B 78 */	mr r29, r3
/* 8025C050  3B C0 00 00 */	li r30, 0
/* 8025C054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025C058  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025C05C  3B E3 00 28 */	addi r31, r3, 0x28
lbl_8025C060:
/* 8025C060  7F E3 FB 78 */	mr r3, r31
/* 8025C064  7F C4 F3 78 */	mr r4, r30
/* 8025C068  4B DD 6B 49 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8025C06C  7C 9D F2 14 */	add r4, r29, r30
/* 8025C070  98 64 00 05 */	stb r3, 5(r4)
/* 8025C074  88 04 00 05 */	lbz r0, 5(r4)
/* 8025C078  98 04 00 0B */	stb r0, 0xb(r4)
/* 8025C07C  3B DE 00 01 */	addi r30, r30, 1
/* 8025C080  2C 1E 00 06 */	cmpwi r30, 6
/* 8025C084  41 80 FF DC */	blt lbl_8025C060
/* 8025C088  39 61 00 20 */	addi r11, r1, 0x20
/* 8025C08C  48 10 61 9D */	bl _restgpr_29
/* 8025C090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025C094  7C 08 03 A6 */	mtlr r0
/* 8025C098  38 21 00 20 */	addi r1, r1, 0x20
/* 8025C09C  4E 80 00 20 */	blr 
