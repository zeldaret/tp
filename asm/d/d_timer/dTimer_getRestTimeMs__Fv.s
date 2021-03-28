lbl_80261244:
/* 80261244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80261248  7C 08 02 A6 */	mflr r0
/* 8026124C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80261250  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80261254  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80261258  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8026125C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80261260  7F E3 FB 78 */	mr r3, r31
/* 80261264  4B DC B9 79 */	bl getTimerPtr__14dComIfG_play_cFv
/* 80261268  28 03 00 00 */	cmplwi r3, 0
/* 8026126C  41 82 00 14 */	beq lbl_80261280
/* 80261270  7F E3 FB 78 */	mr r3, r31
/* 80261274  4B DC B9 69 */	bl getTimerPtr__14dComIfG_play_cFv
/* 80261278  4B FF C8 25 */	bl getRestTimeMs__8dTimer_cFv
/* 8026127C  48 00 00 08 */	b lbl_80261284
lbl_80261280:
/* 80261280  38 60 00 00 */	li r3, 0
lbl_80261284:
/* 80261284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80261288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026128C  7C 08 03 A6 */	mtlr r0
/* 80261290  38 21 00 10 */	addi r1, r1, 0x10
/* 80261294  4E 80 00 20 */	blr 
