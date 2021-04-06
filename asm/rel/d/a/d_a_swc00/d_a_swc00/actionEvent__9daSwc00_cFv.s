lbl_805A1A94:
/* 805A1A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1A98  7C 08 02 A6 */	mflr r0
/* 805A1A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1AA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A1AA4  93 C1 00 08 */	stw r30, 8(r1)
/* 805A1AA8  7C 7E 1B 78 */	mr r30, r3
/* 805A1AAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A1AB0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A1AB4  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 805A1AB8  A8 9E 05 80 */	lha r4, 0x580(r30)
/* 805A1ABC  4B AA 5F BD */	bl endCheck__16dEvent_manager_cFs
/* 805A1AC0  2C 03 00 00 */	cmpwi r3, 0
/* 805A1AC4  41 82 00 14 */	beq lbl_805A1AD8
/* 805A1AC8  38 00 00 03 */	li r0, 3
/* 805A1ACC  98 1E 05 82 */	stb r0, 0x582(r30)
/* 805A1AD0  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 805A1AD4  4B AA 09 95 */	bl reset__14dEvt_control_cFv
lbl_805A1AD8:
/* 805A1AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A1ADC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A1AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1AE4  7C 08 03 A6 */	mtlr r0
/* 805A1AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1AEC  4E 80 00 20 */	blr 
