lbl_8024D788:
/* 8024D788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024D78C  7C 08 02 A6 */	mflr r0
/* 8024D790  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024D794  38 84 00 04 */	addi r4, r4, 4
/* 8024D798  4B FF D9 99 */	bl getParam__10dMsgFlow_cFPUc
/* 8024D79C  7C 60 1B 78 */	mr r0, r3
/* 8024D7A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D7A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D7A8  38 63 00 9C */	addi r3, r3, 0x9c
/* 8024D7AC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8024D7B0  4B DE 64 7D */	bl setWarashibeItem__17dSv_player_item_cFUc
/* 8024D7B4  38 60 00 01 */	li r3, 1
/* 8024D7B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024D7BC  7C 08 03 A6 */	mtlr r0
/* 8024D7C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8024D7C4  4E 80 00 20 */	blr 
