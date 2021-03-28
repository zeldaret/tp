lbl_80261340:
/* 80261340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80261344  7C 08 02 A6 */	mflr r0
/* 80261348  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026134C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80261350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80261354  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80261358  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8026135C  7F E3 FB 78 */	mr r3, r31
/* 80261360  4B DC B8 7D */	bl getTimerPtr__14dComIfG_play_cFv
/* 80261364  28 03 00 00 */	cmplwi r3, 0
/* 80261368  41 82 00 14 */	beq lbl_8026137C
/* 8026136C  7F E3 FB 78 */	mr r3, r31
/* 80261370  4B DC B8 6D */	bl getTimerPtr__14dComIfG_play_cFv
/* 80261374  88 63 01 6E */	lbz r3, 0x16e(r3)
/* 80261378  48 00 00 08 */	b lbl_80261380
lbl_8026137C:
/* 8026137C  38 60 00 00 */	li r3, 0
lbl_80261380:
/* 80261380  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80261384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80261388  7C 08 03 A6 */	mtlr r0
/* 8026138C  38 21 00 10 */	addi r1, r1, 0x10
/* 80261390  4E 80 00 20 */	blr 
