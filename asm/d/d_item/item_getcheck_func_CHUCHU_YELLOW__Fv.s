lbl_8009AA50:
/* 8009AA50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AA54  7C 08 02 A6 */	mflr r0
/* 8009AA58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AA5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009AA60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009AA64  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009AA68  38 80 00 7B */	li r4, 0x7b
/* 8009AA6C  4B F9 8C 75 */	bl checkBottle__17dSv_player_item_cFUc
/* 8009AA70  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8009AA74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AA78  7C 08 03 A6 */	mtlr r0
/* 8009AA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AA80  4E 80 00 20 */	blr 
