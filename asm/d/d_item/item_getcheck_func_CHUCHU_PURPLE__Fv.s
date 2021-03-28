lbl_8009AA84:
/* 8009AA84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AA88  7C 08 02 A6 */	mflr r0
/* 8009AA8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AA90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009AA94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009AA98  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009AA9C  38 80 00 7C */	li r4, 0x7c
/* 8009AAA0  4B F9 8C 41 */	bl checkBottle__17dSv_player_item_cFUc
/* 8009AAA4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009AAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AAAC  7C 08 03 A6 */	mtlr r0
/* 8009AAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AAB4  4E 80 00 20 */	blr 
