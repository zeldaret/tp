lbl_80CD7F88:
/* 80CD7F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD7F8C  7C 08 02 A6 */	mflr r0
/* 80CD7F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD7F94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD7F98  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD7F9C  7C 7E 1B 78 */	mr r30, r3
/* 80CD7FA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD7FA4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CD7FA8  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80CD7FAC  A8 9E 09 4E */	lha r4, 0x94e(r30)
/* 80CD7FB0  4B 36 FA C8 */	b endCheck__16dEvent_manager_cFs
/* 80CD7FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80CD7FB8  41 82 00 14 */	beq lbl_80CD7FCC
/* 80CD7FBC  38 00 00 03 */	li r0, 3
/* 80CD7FC0  98 1E 09 4B */	stb r0, 0x94b(r30)
/* 80CD7FC4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80CD7FC8  4B 36 A4 A0 */	b reset__14dEvt_control_cFv
lbl_80CD7FCC:
/* 80CD7FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD7FD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD7FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD7FD8  7C 08 03 A6 */	mtlr r0
/* 80CD7FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD7FE0  4E 80 00 20 */	blr 
