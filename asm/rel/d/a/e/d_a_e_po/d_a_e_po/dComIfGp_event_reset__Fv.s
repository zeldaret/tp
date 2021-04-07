lbl_8075731C:
/* 8075731C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80757320  7C 08 02 A6 */	mflr r0
/* 80757324  90 01 00 14 */	stw r0, 0x14(r1)
/* 80757328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075732C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80757330  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80757334  4B 8E B1 35 */	bl reset__14dEvt_control_cFv
/* 80757338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8075733C  7C 08 03 A6 */	mtlr r0
/* 80757340  38 21 00 10 */	addi r1, r1, 0x10
/* 80757344  4E 80 00 20 */	blr 
