lbl_80046888:
/* 80046888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004688C  7C 08 02 A6 */	mflr r0
/* 80046890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80046894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80046898  7C 7F 1B 78 */	mr r31, r3
/* 8004689C  88 03 06 BC */	lbz r0, 0x6bc(r3)
/* 800468A0  28 00 00 00 */	cmplwi r0, 0
/* 800468A4  40 82 00 4C */	bne lbl_800468F0
/* 800468A8  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 800468AC  8C 03 61 94 */	lbzu r0, mDemoArcName__20dStage_roomControl_c@l(r3)  /* 0x80406194@l */
/* 800468B0  7C 00 07 75 */	extsb. r0, r0
/* 800468B4  41 82 00 34 */	beq lbl_800468E8
/* 800468B8  3C 80 80 38 */	lis r4, data_80379F50@ha /* 0x80379F50@ha */
/* 800468BC  38 84 9F 50 */	addi r4, r4, data_80379F50@l /* 0x80379F50@l */
/* 800468C0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800468C4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800468C8  3C A5 00 02 */	addis r5, r5, 2
/* 800468CC  38 C0 00 80 */	li r6, 0x80
/* 800468D0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 800468D4  4B FF 5A A9 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 800468D8  7C 64 1B 78 */	mr r4, r3
/* 800468DC  38 7F 01 68 */	addi r3, r31, 0x168
/* 800468E0  38 A0 FF FF */	li r5, -1
/* 800468E4  4B FF F8 89 */	bl init__11dEvDtBase_cFPci
lbl_800468E8:
/* 800468E8  38 00 00 01 */	li r0, 1
/* 800468EC  98 1F 06 BC */	stb r0, 0x6bc(r31)
lbl_800468F0:
/* 800468F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800468F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800468F8  7C 08 03 A6 */	mtlr r0
/* 800468FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80046900  4E 80 00 20 */	blr 
