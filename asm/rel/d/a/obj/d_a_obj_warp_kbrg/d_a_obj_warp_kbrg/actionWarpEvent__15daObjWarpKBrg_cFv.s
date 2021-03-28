lbl_80D280CC:
/* 80D280CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D280D0  7C 08 02 A6 */	mflr r0
/* 80D280D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D280D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D280DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D280E0  7C 7E 1B 78 */	mr r30, r3
/* 80D280E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D280E8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D280EC  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80D280F0  88 1E 05 D8 */	lbz r0, 0x5d8(r30)
/* 80D280F4  54 00 08 3C */	slwi r0, r0, 1
/* 80D280F8  7C 9E 02 14 */	add r4, r30, r0
/* 80D280FC  A8 84 05 CE */	lha r4, 0x5ce(r4)
/* 80D28100  4B 31 F9 78 */	b endCheck__16dEvent_manager_cFs
/* 80D28104  2C 03 00 00 */	cmpwi r3, 0
/* 80D28108  40 82 00 24 */	bne lbl_80D2812C
/* 80D2810C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D28110  7F C4 F3 78 */	mr r4, r30
/* 80D28114  3C A0 80 D2 */	lis r5, eventCallBack__FPvi@ha
/* 80D28118  38 A5 6F 38 */	addi r5, r5, eventCallBack__FPvi@l
/* 80D2811C  38 C0 00 00 */	li r6, 0
/* 80D28120  4B 31 A7 F4 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80D28124  7F C3 F3 78 */	mr r3, r30
/* 80D28128  48 00 01 25 */	bl demoProc__15daObjWarpKBrg_cFv
lbl_80D2812C:
/* 80D2812C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D28130  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D28134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D28138  7C 08 03 A6 */	mtlr r0
/* 80D2813C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D28140  4E 80 00 20 */	blr 
