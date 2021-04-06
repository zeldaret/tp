lbl_8009AD68:
/* 8009AD68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AD6C  7C 08 02 A6 */	mflr r0
/* 8009AD70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AD74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009AD78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009AD7C  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009AD80  38 80 00 9F */	li r4, 0x9f
/* 8009AD84  4B F9 89 5D */	bl checkBottle__17dSv_player_item_cFUc
/* 8009AD88  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009AD8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AD90  7C 08 03 A6 */	mtlr r0
/* 8009AD94  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AD98  4E 80 00 20 */	blr 
