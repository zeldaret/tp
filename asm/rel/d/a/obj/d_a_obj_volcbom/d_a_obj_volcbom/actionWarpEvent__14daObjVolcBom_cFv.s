lbl_80D25E78:
/* 80D25E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D25E7C  7C 08 02 A6 */	mflr r0
/* 80D25E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D25E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D25E88  93 C1 00 08 */	stw r30, 8(r1)
/* 80D25E8C  7C 7E 1B 78 */	mr r30, r3
/* 80D25E90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D25E94  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D25E98  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80D25E9C  A8 9E 09 F0 */	lha r4, 0x9f0(r30)
/* 80D25EA0  4B 32 1B D9 */	bl endCheck__16dEvent_manager_cFs
/* 80D25EA4  2C 03 00 00 */	cmpwi r3, 0
/* 80D25EA8  40 82 00 24 */	bne lbl_80D25ECC
/* 80D25EAC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D25EB0  7F C4 F3 78 */	mr r4, r30
/* 80D25EB4  3C A0 80 D2 */	lis r5, eventCallBack__FPvi@ha /* 0x80D24198@ha */
/* 80D25EB8  38 A5 41 98 */	addi r5, r5, eventCallBack__FPvi@l /* 0x80D24198@l */
/* 80D25EBC  38 C0 00 00 */	li r6, 0
/* 80D25EC0  4B 31 CA 55 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80D25EC4  7F C3 F3 78 */	mr r3, r30
/* 80D25EC8  48 00 00 21 */	bl demoProc__14daObjVolcBom_cFv
lbl_80D25ECC:
/* 80D25ECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D25ED0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D25ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D25ED8  7C 08 03 A6 */	mtlr r0
/* 80D25EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D25EE0  4E 80 00 20 */	blr 
