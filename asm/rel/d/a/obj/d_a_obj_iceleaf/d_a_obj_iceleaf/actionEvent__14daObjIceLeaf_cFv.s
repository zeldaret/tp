lbl_80C25A68:
/* 80C25A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C25A6C  7C 08 02 A6 */	mflr r0
/* 80C25A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C25A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C25A78  93 C1 00 08 */	stw r30, 8(r1)
/* 80C25A7C  7C 7E 1B 78 */	mr r30, r3
/* 80C25A80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C25A84  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80C25A88  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80C25A8C  A8 9E 09 2C */	lha r4, 0x92c(r30)
/* 80C25A90  4B 42 1F E8 */	b endCheck__16dEvent_manager_cFs
/* 80C25A94  2C 03 00 00 */	cmpwi r3, 0
/* 80C25A98  41 82 00 14 */	beq lbl_80C25AAC
/* 80C25A9C  38 00 00 03 */	li r0, 3
/* 80C25AA0  98 1E 09 29 */	stb r0, 0x929(r30)
/* 80C25AA4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80C25AA8  4B 41 C9 C0 */	b reset__14dEvt_control_cFv
lbl_80C25AAC:
/* 80C25AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C25AB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C25AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C25AB8  7C 08 03 A6 */	mtlr r0
/* 80C25ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C25AC0  4E 80 00 20 */	blr 
