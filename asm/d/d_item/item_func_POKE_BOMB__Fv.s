lbl_80098E38:
/* 80098E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098E3C  7C 08 02 A6 */	mflr r0
/* 80098E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80098E48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098E4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098E50  3B E3 00 9C */	addi r31, r3, 0x9c
/* 80098E54  7F E3 FB 78 */	mr r3, r31
/* 80098E58  4B F9 AC 31 */	bl setEmptyBombBag__17dSv_player_item_cFv
/* 80098E5C  7F E3 FB 78 */	mr r3, r31
/* 80098E60  38 80 00 72 */	li r4, 0x72
/* 80098E64  38 A0 00 01 */	li r5, 1
/* 80098E68  4B F9 AB B9 */	bl setEmptyBombBagItemIn__17dSv_player_item_cFUcb
/* 80098E6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80098E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098E74  7C 08 03 A6 */	mtlr r0
/* 80098E78  38 21 00 10 */	addi r1, r1, 0x10
/* 80098E7C  4E 80 00 20 */	blr 
