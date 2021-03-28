lbl_80CCBD4C:
/* 80CCBD4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCBD50  7C 08 02 A6 */	mflr r0
/* 80CCBD54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCBD58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCBD5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCBD60  7C 7E 1B 78 */	mr r30, r3
/* 80CCBD64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCBD68  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CCBD6C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80CCBD70  A8 9E 05 EC */	lha r4, 0x5ec(r30)
/* 80CCBD74  4B 37 BD 04 */	b endCheck__16dEvent_manager_cFs
/* 80CCBD78  2C 03 00 00 */	cmpwi r3, 0
/* 80CCBD7C  41 82 00 18 */	beq lbl_80CCBD94
/* 80CCBD80  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80CCBD84  4B 37 66 E4 */	b reset__14dEvt_control_cFv
/* 80CCBD88  38 00 00 03 */	li r0, 3
/* 80CCBD8C  98 1E 05 F0 */	stb r0, 0x5f0(r30)
/* 80CCBD90  48 00 00 24 */	b lbl_80CCBDB4
lbl_80CCBD94:
/* 80CCBD94  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80CCBD98  7F C4 F3 78 */	mr r4, r30
/* 80CCBD9C  3C A0 80 CD */	lis r5, eventCallBack__FPvi@ha
/* 80CCBDA0  38 A5 B3 18 */	addi r5, r5, eventCallBack__FPvi@l
/* 80CCBDA4  38 C0 00 00 */	li r6, 0
/* 80CCBDA8  4B 37 6B 6C */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80CCBDAC  7F C3 F3 78 */	mr r3, r30
/* 80CCBDB0  48 00 00 21 */	bl demoExe__17daObjSCannonTen_cFv
lbl_80CCBDB4:
/* 80CCBDB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCBDB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCBDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCBDC0  7C 08 03 A6 */	mtlr r0
/* 80CCBDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCBDC8  4E 80 00 20 */	blr 
