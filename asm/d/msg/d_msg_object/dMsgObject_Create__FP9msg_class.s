lbl_80237F80:
/* 80237F80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80237F84  7C 08 02 A6 */	mflr r0
/* 80237F88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80237F8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80237F90  48 12 A2 4D */	bl _savegpr_29
/* 80237F94  7C 7E 1B 78 */	mr r30, r3
/* 80237F98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80237F9C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80237FA0  93 DF 5D BC */	stw r30, 0x5dbc(r31)
/* 80237FA4  80 7F 5E C8 */	lwz r3, 0x5ec8(r31)
/* 80237FA8  4B DD 72 25 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80237FAC  7C 7D 1B 78 */	mr r29, r3
/* 80237FB0  80 7F 5E C8 */	lwz r3, 0x5ec8(r31)
/* 80237FB4  48 09 67 D1 */	bl getTotalFreeSize__7JKRHeapFv
/* 80237FB8  7F C3 F3 78 */	mr r3, r30
/* 80237FBC  4B DE 79 F9 */	bl fopMsgM_setStageLayer__FPv
/* 80237FC0  38 00 00 00 */	li r0, 0
/* 80237FC4  B0 1E 00 F8 */	sth r0, 0xf8(r30)
/* 80237FC8  7F C3 F3 78 */	mr r3, r30
/* 80237FCC  7F C4 F3 78 */	mr r4, r30
/* 80237FD0  4B FF B2 B5 */	bl _create__12dMsgObject_cFP9msg_class
/* 80237FD4  7C 7E 1B 78 */	mr r30, r3
/* 80237FD8  38 00 FF FF */	li r0, -1
/* 80237FDC  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80237FE0  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80237FE4  98 03 00 04 */	stb r0, 4(r3)
/* 80237FE8  7F A3 EB 78 */	mr r3, r29
/* 80237FEC  4B DD 71 E1 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80237FF0  7F C3 F3 78 */	mr r3, r30
/* 80237FF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80237FF8  48 12 A2 31 */	bl _restgpr_29
/* 80237FFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80238000  7C 08 03 A6 */	mtlr r0
/* 80238004  38 21 00 20 */	addi r1, r1, 0x20
/* 80238008  4E 80 00 20 */	blr 
