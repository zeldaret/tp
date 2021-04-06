lbl_80261298:
/* 80261298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026129C  7C 08 02 A6 */	mflr r0
/* 802612A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802612A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802612A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802612AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802612B0  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 802612B4  7F E3 FB 78 */	mr r3, r31
/* 802612B8  4B DC B9 25 */	bl getTimerPtr__14dComIfG_play_cFv
/* 802612BC  28 03 00 00 */	cmplwi r3, 0
/* 802612C0  41 82 00 18 */	beq lbl_802612D8
/* 802612C4  7F E3 FB 78 */	mr r3, r31
/* 802612C8  4B DC B9 15 */	bl getTimerPtr__14dComIfG_play_cFv
/* 802612CC  38 00 00 01 */	li r0, 1
/* 802612D0  80 63 00 FC */	lwz r3, 0xfc(r3)
/* 802612D4  98 03 03 E1 */	stb r0, 0x3e1(r3)
lbl_802612D8:
/* 802612D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802612DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802612E0  7C 08 03 A6 */	mtlr r0
/* 802612E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802612E8  4E 80 00 20 */	blr 
