lbl_800387A8:
/* 800387A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800387AC  7C 08 02 A6 */	mflr r0
/* 800387B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800387B4  7C 64 1B 78 */	mr r4, r3
/* 800387B8  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 800387BC  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 800387C0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800387C4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800387C8  3C A5 00 02 */	addis r5, r5, 2
/* 800387CC  38 C0 00 80 */	li r6, 0x80
/* 800387D0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 800387D4  48 00 3B A9 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 800387D8  90 6D 88 C4 */	stw r3, m_branchData__7dDemo_c(r13)
/* 800387DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800387E0  7C 08 03 A6 */	mtlr r0
/* 800387E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800387E8  4E 80 00 20 */	blr 
