lbl_800984C8:
/* 800984C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800984CC  7C 08 02 A6 */	mflr r0
/* 800984D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800984D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800984D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800984DC  38 63 01 00 */	addi r3, r3, 0x100
/* 800984E0  38 80 00 02 */	li r4, 2
/* 800984E4  38 A0 00 00 */	li r5, 0
/* 800984E8  4B F9 BD 01 */	bl setCollect__20dSv_player_collect_cFiUc
/* 800984EC  38 60 00 2A */	li r3, 0x2a
/* 800984F0  4B F9 6A A5 */	bl dComIfGs_setSelectEquipShield__FUc
/* 800984F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800984F8  7C 08 03 A6 */	mtlr r0
/* 800984FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80098500  4E 80 00 20 */	blr 
