lbl_80CCA2CC:
/* 80CCA2CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCA2D0  7C 08 02 A6 */	mflr r0
/* 80CCA2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCA2D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCA2DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCA2E0  7C 7E 1B 78 */	mr r30, r3
/* 80CCA2E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCA2E8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCA2EC  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80CCA2F0  A8 9E 06 4C */	lha r4, 0x64c(r30)
/* 80CCA2F4  4B 37 D7 85 */	bl endCheck__16dEvent_manager_cFs
/* 80CCA2F8  2C 03 00 00 */	cmpwi r3, 0
/* 80CCA2FC  41 82 00 10 */	beq lbl_80CCA30C
/* 80CCA300  38 00 00 05 */	li r0, 5
/* 80CCA304  98 1E 06 4E */	stb r0, 0x64e(r30)
/* 80CCA308  48 00 00 24 */	b lbl_80CCA32C
lbl_80CCA30C:
/* 80CCA30C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80CCA310  7F C4 F3 78 */	mr r4, r30
/* 80CCA314  3C A0 80 CD */	lis r5, eventCallBack__FPvi@ha /* 0x80CC9698@ha */
/* 80CCA318  38 A5 96 98 */	addi r5, r5, eventCallBack__FPvi@l /* 0x80CC9698@l */
/* 80CCA31C  38 C0 00 00 */	li r6, 0
/* 80CCA320  4B 37 85 F5 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80CCA324  7F C3 F3 78 */	mr r3, r30
/* 80CCA328  48 00 00 21 */	bl demoExe__14daSCannonCrs_cFv
lbl_80CCA32C:
/* 80CCA32C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCA330  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCA334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCA338  7C 08 03 A6 */	mtlr r0
/* 80CCA33C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCA340  4E 80 00 20 */	blr 
