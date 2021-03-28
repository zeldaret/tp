lbl_80D5F66C:
/* 80D5F66C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D5F670  7C 08 02 A6 */	mflr r0
/* 80D5F674  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D5F678  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5F67C  4B 60 2B 60 */	b _savegpr_29
/* 80D5F680  7C 7D 1B 78 */	mr r29, r3
/* 80D5F684  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5F688  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D5F68C  83 DF 5D AC */	lwz r30, 0x5dac(r31)
/* 80D5F690  A8 7D 05 76 */	lha r3, 0x576(r29)
/* 80D5F694  38 03 00 01 */	addi r0, r3, 1
/* 80D5F698  B0 1D 05 76 */	sth r0, 0x576(r29)
/* 80D5F69C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80D5F6A0  A8 9D 05 74 */	lha r4, 0x574(r29)
/* 80D5F6A4  4B 2E 83 D4 */	b endCheck__16dEvent_manager_cFs
/* 80D5F6A8  2C 03 00 00 */	cmpwi r3, 0
/* 80D5F6AC  41 82 00 18 */	beq lbl_80D5F6C4
/* 80D5F6B0  38 00 00 03 */	li r0, 3
/* 80D5F6B4  98 1D 05 71 */	stb r0, 0x571(r29)
/* 80D5F6B8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D5F6BC  4B 2E 2D AC */	b reset__14dEvt_control_cFv
/* 80D5F6C0  48 00 00 34 */	b lbl_80D5F6F4
lbl_80D5F6C4:
/* 80D5F6C4  7F A3 EB 78 */	mr r3, r29
/* 80D5F6C8  48 00 00 49 */	bl demoProc__16daTagRiverBack_cFv
/* 80D5F6CC  A8 1D 05 76 */	lha r0, 0x576(r29)
/* 80D5F6D0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80D5F6D4  40 82 00 20 */	bne lbl_80D5F6F4
/* 80D5F6D8  7F C3 F3 78 */	mr r3, r30
/* 80D5F6DC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010041@ha */
/* 80D5F6E0  38 84 00 41 */	addi r4, r4, 0x0041 /* 0x00010041@l */
/* 80D5F6E4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D5F6E8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80D5F6EC  7D 89 03 A6 */	mtctr r12
/* 80D5F6F0  4E 80 04 21 */	bctrl 
lbl_80D5F6F4:
/* 80D5F6F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5F6F8  4B 60 2B 30 */	b _restgpr_29
/* 80D5F6FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D5F700  7C 08 03 A6 */	mtlr r0
/* 80D5F704  38 21 00 20 */	addi r1, r1, 0x20
/* 80D5F708  4E 80 00 20 */	blr 
