lbl_80099198:
/* 80099198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009919C  7C 08 02 A6 */	mflr r0
/* 800991A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800991A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800991A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800991AC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800991B0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 800991B4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 800991B8  A0 84 02 36 */	lhz r4, 0x236(r4)
/* 800991BC  4B F9 B7 D1 */	bl onEventBit__11dSv_event_cFUs
/* 800991C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800991C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800991C8  38 63 00 9C */	addi r3, r3, 0x9c
/* 800991CC  38 80 00 15 */	li r4, 0x15
/* 800991D0  38 A0 00 82 */	li r5, 0x82
/* 800991D4  4B F9 9D E5 */	bl setItem__17dSv_player_item_cFiUc
/* 800991D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800991DC  7C 08 03 A6 */	mtlr r0
/* 800991E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800991E4  4E 80 00 20 */	blr 
