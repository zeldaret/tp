lbl_804978E4:
/* 804978E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804978E8  7C 08 02 A6 */	mflr r0
/* 804978EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804978F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804978F4  93 C1 00 08 */	stw r30, 8(r1)
/* 804978F8  7C 7E 1B 78 */	mr r30, r3
/* 804978FC  A8 83 00 FC */	lha r4, 0xfc(r3)
/* 80497900  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80497904  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80497908  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8049790C  4B BB 01 6D */	bl endCheck__16dEvent_manager_cFs
/* 80497910  2C 03 00 00 */	cmpwi r3, 0
/* 80497914  41 82 00 18 */	beq lbl_8049792C
/* 80497918  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8049791C  4B BA AB 4D */	bl reset__14dEvt_control_cFv
/* 80497920  7F C3 F3 78 */	mr r3, r30
/* 80497924  48 00 00 E9 */	bl init_actionOpenWait__9daTbox2_cFv
/* 80497928  48 00 00 0C */	b lbl_80497934
lbl_8049792C:
/* 8049792C  7F C3 F3 78 */	mr r3, r30
/* 80497930  4B FF F9 1D */	bl demoProc__9daTbox2_cFv
lbl_80497934:
/* 80497934  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80497938  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049793C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80497940  7C 08 03 A6 */	mtlr r0
/* 80497944  38 21 00 10 */	addi r1, r1, 0x10
/* 80497948  4E 80 00 20 */	blr 
