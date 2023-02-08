lbl_80676E40:
/* 80676E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80676E44  7C 08 02 A6 */	mflr r0
/* 80676E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80676E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80676E50  93 C1 00 08 */	stw r30, 8(r1)
/* 80676E54  7C 7E 1B 78 */	mr r30, r3
/* 80676E58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676E5C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676E60  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80676E64  A8 9E 05 D2 */	lha r4, 0x5d2(r30)
/* 80676E68  4B 9D 0C 11 */	bl endCheck__16dEvent_manager_cFs
/* 80676E6C  2C 03 00 00 */	cmpwi r3, 0
/* 80676E70  41 82 00 20 */	beq lbl_80676E90
/* 80676E74  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80676E78  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80676E7C  38 00 00 03 */	li r0, 3
/* 80676E80  98 1E 05 CC */	stb r0, 0x5cc(r30)
/* 80676E84  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80676E88  4B 9C B5 E1 */	bl reset__14dEvt_control_cFv
/* 80676E8C  48 00 00 0C */	b lbl_80676E98
lbl_80676E90:
/* 80676E90  7F C3 F3 78 */	mr r3, r30
/* 80676E94  4B FF D0 2D */	bl demoProc__12daMBdoorL1_cFv
lbl_80676E98:
/* 80676E98  38 60 00 01 */	li r3, 1
/* 80676E9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80676EA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80676EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80676EA8  7C 08 03 A6 */	mtlr r0
/* 80676EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80676EB0  4E 80 00 20 */	blr 
