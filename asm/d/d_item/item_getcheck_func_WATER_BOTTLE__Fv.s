lbl_8009A67C:
/* 8009A67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A680  7C 08 02 A6 */	mflr r0
/* 8009A684  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A688  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009A68C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009A690  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A694  38 80 00 67 */	li r4, 0x67
/* 8009A698  4B F9 90 49 */	bl checkBottle__17dSv_player_item_cFUc
/* 8009A69C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009A6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A6A4  7C 08 03 A6 */	mtlr r0
/* 8009A6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A6AC  4E 80 00 20 */	blr 
