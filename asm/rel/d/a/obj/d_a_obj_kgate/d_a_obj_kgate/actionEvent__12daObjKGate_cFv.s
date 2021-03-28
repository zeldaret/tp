lbl_8058A294:
/* 8058A294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A298  7C 08 02 A6 */	mflr r0
/* 8058A29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A2A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058A2A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8058A2A8  7C 7E 1B 78 */	mr r30, r3
/* 8058A2AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058A2B0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8058A2B4  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8058A2B8  A8 9E 0B A6 */	lha r4, 0xba6(r30)
/* 8058A2BC  4B AB D7 BC */	b endCheck__16dEvent_manager_cFs
/* 8058A2C0  2C 03 00 00 */	cmpwi r3, 0
/* 8058A2C4  41 82 00 18 */	beq lbl_8058A2DC
/* 8058A2C8  38 00 00 02 */	li r0, 2
/* 8058A2CC  98 1E 0B A4 */	stb r0, 0xba4(r30)
/* 8058A2D0  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8058A2D4  4B AB 81 94 */	b reset__14dEvt_control_cFv
/* 8058A2D8  48 00 00 0C */	b lbl_8058A2E4
lbl_8058A2DC:
/* 8058A2DC  7F C3 F3 78 */	mr r3, r30
/* 8058A2E0  48 00 00 C5 */	bl demoProc__12daObjKGate_cFv
lbl_8058A2E4:
/* 8058A2E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058A2E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058A2EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A2F0  7C 08 03 A6 */	mtlr r0
/* 8058A2F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A2F8  4E 80 00 20 */	blr 
