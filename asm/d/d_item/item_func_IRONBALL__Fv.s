lbl_80098780:
/* 80098780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098784  7C 08 02 A6 */	mflr r0
/* 80098788  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009878C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098790  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098794  38 63 00 9C */	addi r3, r3, 0x9c
/* 80098798  38 80 00 06 */	li r4, 6
/* 8009879C  38 A0 00 42 */	li r5, 0x42
/* 800987A0  4B F9 A8 19 */	bl setItem__17dSv_player_item_cFiUc
/* 800987A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800987A8  7C 08 03 A6 */	mtlr r0
/* 800987AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800987B0  4E 80 00 20 */	blr 
