lbl_802612EC:
/* 802612EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802612F0  7C 08 02 A6 */	mflr r0
/* 802612F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802612F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802612FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80261300  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80261304  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80261308  7F E3 FB 78 */	mr r3, r31
/* 8026130C  4B DC B8 D1 */	bl getTimerPtr__14dComIfG_play_cFv
/* 80261310  28 03 00 00 */	cmplwi r3, 0
/* 80261314  41 82 00 18 */	beq lbl_8026132C
/* 80261318  7F E3 FB 78 */	mr r3, r31
/* 8026131C  4B DC B8 C1 */	bl getTimerPtr__14dComIfG_play_cFv
/* 80261320  38 00 00 00 */	li r0, 0
/* 80261324  80 63 00 FC */	lwz r3, 0xfc(r3)
/* 80261328  98 03 03 E1 */	stb r0, 0x3e1(r3)
lbl_8026132C:
/* 8026132C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80261330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80261334  7C 08 03 A6 */	mtlr r0
/* 80261338  38 21 00 10 */	addi r1, r1, 0x10
/* 8026133C  4E 80 00 20 */	blr 
