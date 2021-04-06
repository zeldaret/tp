lbl_8009A718:
/* 8009A718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A71C  7C 08 02 A6 */	mflr r0
/* 8009A720  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A724  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009A728  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009A72C  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A730  38 80 00 6A */	li r4, 0x6a
/* 8009A734  4B F9 8F AD */	bl checkBottle__17dSv_player_item_cFUc
/* 8009A738  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009A73C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A740  7C 08 03 A6 */	mtlr r0
/* 8009A744  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A748  4E 80 00 20 */	blr 
