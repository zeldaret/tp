lbl_8009AA1C:
/* 8009AA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AA20  7C 08 02 A6 */	mflr r0
/* 8009AA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AA28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009AA2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009AA30  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009AA34  38 80 00 7A */	li r4, 0x7a
/* 8009AA38  4B F9 8C A9 */	bl checkBottle__17dSv_player_item_cFUc
/* 8009AA3C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009AA40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AA44  7C 08 03 A6 */	mtlr r0
/* 8009AA48  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AA4C  4E 80 00 20 */	blr 
