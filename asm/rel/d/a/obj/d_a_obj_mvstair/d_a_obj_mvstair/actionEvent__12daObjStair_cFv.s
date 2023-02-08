lbl_80C9D95C:
/* 80C9D95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D960  7C 08 02 A6 */	mflr r0
/* 80C9D964  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9D96C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9D970  7C 7E 1B 78 */	mr r30, r3
/* 80C9D974  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9D978  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9D97C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80C9D980  A8 9E 06 40 */	lha r4, 0x640(r30)
/* 80C9D984  4B 3A A0 F5 */	bl endCheck__16dEvent_manager_cFs
/* 80C9D988  2C 03 00 00 */	cmpwi r3, 0
/* 80C9D98C  41 82 00 14 */	beq lbl_80C9D9A0
/* 80C9D990  38 00 00 00 */	li r0, 0
/* 80C9D994  98 1E 06 3D */	stb r0, 0x63d(r30)
/* 80C9D998  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80C9D99C  4B 3A 4A CD */	bl reset__14dEvt_control_cFv
lbl_80C9D9A0:
/* 80C9D9A0  38 60 00 01 */	li r3, 1
/* 80C9D9A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9D9A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9D9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D9B0  7C 08 03 A6 */	mtlr r0
/* 80C9D9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D9B8  4E 80 00 20 */	blr 
