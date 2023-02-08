lbl_80BDF000:
/* 80BDF000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDF004  7C 08 02 A6 */	mflr r0
/* 80BDF008  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDF00C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDF010  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDF014  7C 7E 1B 78 */	mr r30, r3
/* 80BDF018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDF01C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDF020  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80BDF024  A8 9E 05 E6 */	lha r4, 0x5e6(r30)
/* 80BDF028  4B 46 8A 51 */	bl endCheck__16dEvent_manager_cFs
/* 80BDF02C  2C 03 00 00 */	cmpwi r3, 0
/* 80BDF030  41 82 00 18 */	beq lbl_80BDF048
/* 80BDF034  38 00 00 00 */	li r0, 0
/* 80BDF038  98 1E 05 E2 */	stb r0, 0x5e2(r30)
/* 80BDF03C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80BDF040  4B 46 34 29 */	bl reset__14dEvt_control_cFv
/* 80BDF044  48 00 00 0C */	b lbl_80BDF050
lbl_80BDF048:
/* 80BDF048  7F C3 F3 78 */	mr r3, r30
/* 80BDF04C  48 00 01 21 */	bl demoProc__17daObjDmElevator_cFv
lbl_80BDF050:
/* 80BDF050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDF054  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDF058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDF05C  7C 08 03 A6 */	mtlr r0
/* 80BDF060  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDF064  4E 80 00 20 */	blr 
