lbl_80C3934C:
/* 80C3934C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C39350  7C 08 02 A6 */	mflr r0
/* 80C39354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C39358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3935C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C39360  7C 7E 1B 78 */	mr r30, r3
/* 80C39364  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C39368  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3936C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80C39370  3C 80 80 C4 */	lis r4, d_a_obj_kantera__stringBase0@ha /* 0x80C396CC@ha */
/* 80C39374  38 84 96 CC */	addi r4, r4, d_a_obj_kantera__stringBase0@l /* 0x80C396CC@l */
/* 80C39378  4B 40 E7 65 */	bl endCheckOld__16dEvent_manager_cFPCc
/* 80C3937C  2C 03 00 00 */	cmpwi r3, 0
/* 80C39380  41 82 00 14 */	beq lbl_80C39394
/* 80C39384  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80C39388  4B 40 90 E1 */	bl reset__14dEvt_control_cFv
/* 80C3938C  7F C3 F3 78 */	mr r3, r30
/* 80C39390  4B 3E 08 ED */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80C39394:
/* 80C39394  38 60 00 01 */	li r3, 1
/* 80C39398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3939C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C393A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C393A4  7C 08 03 A6 */	mtlr r0
/* 80C393A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C393AC  4E 80 00 20 */	blr 
