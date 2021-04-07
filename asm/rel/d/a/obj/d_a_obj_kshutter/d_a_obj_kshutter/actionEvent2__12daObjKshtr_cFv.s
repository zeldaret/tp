lbl_80C49A08:
/* 80C49A08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C49A0C  7C 08 02 A6 */	mflr r0
/* 80C49A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C49A14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C49A18  93 C1 00 08 */	stw r30, 8(r1)
/* 80C49A1C  7C 7E 1B 78 */	mr r30, r3
/* 80C49A20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C49A24  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C49A28  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80C49A2C  A8 9E 05 F0 */	lha r4, 0x5f0(r30)
/* 80C49A30  4B 3F E0 49 */	bl endCheck__16dEvent_manager_cFs
/* 80C49A34  2C 03 00 00 */	cmpwi r3, 0
/* 80C49A38  41 82 00 18 */	beq lbl_80C49A50
/* 80C49A3C  38 00 00 02 */	li r0, 2
/* 80C49A40  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80C49A44  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80C49A48  4B 3F 8A 21 */	bl reset__14dEvt_control_cFv
/* 80C49A4C  48 00 00 0C */	b lbl_80C49A58
lbl_80C49A50:
/* 80C49A50  7F C3 F3 78 */	mr r3, r30
/* 80C49A54  4B FF F7 05 */	bl demoProc__12daObjKshtr_cFv
lbl_80C49A58:
/* 80C49A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C49A5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C49A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C49A64  7C 08 03 A6 */	mtlr r0
/* 80C49A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80C49A6C  4E 80 00 20 */	blr 
