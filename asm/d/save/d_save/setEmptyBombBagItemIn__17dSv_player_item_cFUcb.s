lbl_80033A20:
/* 80033A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033A24  7C 08 02 A6 */	mflr r0
/* 80033A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033A2C  7C 80 23 78 */	mr r0, r4
/* 80033A30  7C A6 2B 78 */	mr r6, r5
/* 80033A34  38 80 00 50 */	li r4, 0x50
/* 80033A38  7C 05 03 78 */	mr r5, r0
/* 80033A3C  4B FF FD ED */	bl setBombBagItemIn__17dSv_player_item_cFUcUcb
/* 80033A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033A44  7C 08 03 A6 */	mtlr r0
/* 80033A48  38 21 00 10 */	addi r1, r1, 0x10
/* 80033A4C  4E 80 00 20 */	blr 
