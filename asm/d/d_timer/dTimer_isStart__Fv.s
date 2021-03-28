lbl_802611F0:
/* 802611F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802611F4  7C 08 02 A6 */	mflr r0
/* 802611F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802611FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80261200  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80261204  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80261208  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8026120C  7F E3 FB 78 */	mr r3, r31
/* 80261210  4B DC B9 CD */	bl getTimerPtr__14dComIfG_play_cFv
/* 80261214  28 03 00 00 */	cmplwi r3, 0
/* 80261218  41 82 00 14 */	beq lbl_8026122C
/* 8026121C  7F E3 FB 78 */	mr r3, r31
/* 80261220  4B DC B9 BD */	bl getTimerPtr__14dComIfG_play_cFv
/* 80261224  4B FF C8 ED */	bl isStart__8dTimer_cFv
/* 80261228  48 00 00 08 */	b lbl_80261230
lbl_8026122C:
/* 8026122C  38 60 00 00 */	li r3, 0
lbl_80261230:
/* 80261230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80261234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80261238  7C 08 03 A6 */	mtlr r0
/* 8026123C  38 21 00 10 */	addi r1, r1, 0x10
/* 80261240  4E 80 00 20 */	blr 
