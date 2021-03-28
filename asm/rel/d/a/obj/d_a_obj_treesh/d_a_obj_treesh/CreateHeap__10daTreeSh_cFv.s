lbl_80D1F2E8:
/* 80D1F2E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F2EC  7C 08 02 A6 */	mflr r0
/* 80D1F2F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F2F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1F2F8  7C 7F 1B 78 */	mr r31, r3
/* 80D1F2FC  3C 60 80 D2 */	lis r3, l_arcName@ha
/* 80D1F300  38 63 F8 F4 */	addi r3, r3, l_arcName@l
/* 80D1F304  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1F308  38 80 00 04 */	li r4, 4
/* 80D1F30C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D1F310  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D1F314  3C A5 00 02 */	addis r5, r5, 2
/* 80D1F318  38 C0 00 80 */	li r6, 0x80
/* 80D1F31C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D1F320  4B 31 CF CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1F324  3C 80 00 08 */	lis r4, 8
/* 80D1F328  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D1F32C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D1F330  4B 2F 59 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D1F334  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80D1F338  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D1F33C  30 03 FF FF */	addic r0, r3, -1
/* 80D1F340  7C 60 19 10 */	subfe r3, r0, r3
/* 80D1F344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1F348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F34C  7C 08 03 A6 */	mtlr r0
/* 80D1F350  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F354  4E 80 00 20 */	blr 
