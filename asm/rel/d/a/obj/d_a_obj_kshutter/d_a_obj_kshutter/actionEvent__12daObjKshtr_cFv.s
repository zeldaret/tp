lbl_80C49880:
/* 80C49880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C49884  7C 08 02 A6 */	mflr r0
/* 80C49888  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4988C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C49890  93 C1 00 08 */	stw r30, 8(r1)
/* 80C49894  7C 7E 1B 78 */	mr r30, r3
/* 80C49898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4989C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80C498A0  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80C498A4  88 1E 05 EF */	lbz r0, 0x5ef(r30)
/* 80C498A8  54 00 08 3C */	slwi r0, r0, 1
/* 80C498AC  7C 9E 02 14 */	add r4, r30, r0
/* 80C498B0  A8 84 05 F0 */	lha r4, 0x5f0(r4)
/* 80C498B4  4B 3F E1 C4 */	b endCheck__16dEvent_manager_cFs
/* 80C498B8  2C 03 00 00 */	cmpwi r3, 0
/* 80C498BC  41 82 00 18 */	beq lbl_80C498D4
/* 80C498C0  38 00 00 02 */	li r0, 2
/* 80C498C4  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80C498C8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80C498CC  4B 3F 8B 9C */	b reset__14dEvt_control_cFv
/* 80C498D0  48 00 00 2C */	b lbl_80C498FC
lbl_80C498D4:
/* 80C498D4  88 1E 05 EA */	lbz r0, 0x5ea(r30)
/* 80C498D8  28 00 00 03 */	cmplwi r0, 3
/* 80C498DC  40 82 00 18 */	bne lbl_80C498F4
/* 80C498E0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80C498E4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80C498E8  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 80C498EC  60 00 00 02 */	ori r0, r0, 2
/* 80C498F0  B0 03 00 B0 */	sth r0, 0xb0(r3)
lbl_80C498F4:
/* 80C498F4  7F C3 F3 78 */	mr r3, r30
/* 80C498F8  4B FF EE E9 */	bl demoProc2__12daObjKshtr_cFv
lbl_80C498FC:
/* 80C498FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C49900  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C49904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C49908  7C 08 03 A6 */	mtlr r0
/* 80C4990C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C49910  4E 80 00 20 */	blr 
