lbl_80C2030C:
/* 80C2030C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C20310  7C 08 02 A6 */	mflr r0
/* 80C20314  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C20318  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2031C  7C 7F 1B 78 */	mr r31, r3
/* 80C20320  3C 60 80 C2 */	lis r3, l_arcName@ha
/* 80C20324  38 63 08 38 */	addi r3, r3, l_arcName@l
/* 80C20328  80 63 00 00 */	lwz r3, 0(r3)
/* 80C2032C  3C 80 80 C2 */	lis r4, stringBase0@ha
/* 80C20330  38 84 08 1C */	addi r4, r4, stringBase0@l
/* 80C20334  38 84 00 12 */	addi r4, r4, 0x12
/* 80C20338  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C2033C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C20340  3C A5 00 02 */	addis r5, r5, 2
/* 80C20344  38 C0 00 80 */	li r6, 0x80
/* 80C20348  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2034C  4B 41 C0 30 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C20350  3C 80 00 08 */	lis r4, 8
/* 80C20354  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C20358  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C2035C  4B 3F 48 F8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C20360  90 7F 06 34 */	stw r3, 0x634(r31)
/* 80C20364  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80C20368  30 03 FF FF */	addic r0, r3, -1
/* 80C2036C  7C 60 19 10 */	subfe r3, r0, r3
/* 80C20370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C20374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C20378  7C 08 03 A6 */	mtlr r0
/* 80C2037C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C20380  4E 80 00 20 */	blr 
