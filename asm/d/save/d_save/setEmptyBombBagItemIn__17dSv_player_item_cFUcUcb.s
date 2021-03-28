lbl_80033A50:
/* 80033A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033A54  7C 08 02 A6 */	mflr r0
/* 80033A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033A5C  7C 88 23 78 */	mr r8, r4
/* 80033A60  7C A0 2B 78 */	mr r0, r5
/* 80033A64  7C C7 33 78 */	mr r7, r6
/* 80033A68  38 80 00 50 */	li r4, 0x50
/* 80033A6C  7D 05 43 78 */	mr r5, r8
/* 80033A70  7C 06 03 78 */	mr r6, r0
/* 80033A74  4B FF FE 9D */	bl setBombBagItemIn__17dSv_player_item_cFUcUcUcb
/* 80033A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033A7C  7C 08 03 A6 */	mtlr r0
/* 80033A80  38 21 00 10 */	addi r1, r1, 0x10
/* 80033A84  4E 80 00 20 */	blr 
