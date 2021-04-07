lbl_80D0D7F8:
/* 80D0D7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0D7FC  7C 08 02 A6 */	mflr r0
/* 80D0D800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0D804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0D808  7C 7F 1B 78 */	mr r31, r3
/* 80D0D80C  3C 60 80 D1 */	lis r3, l_arcName@ha /* 0x80D0E678@ha */
/* 80D0D810  38 63 E6 78 */	addi r3, r3, l_arcName@l /* 0x80D0E678@l */
/* 80D0D814  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0D818  38 80 00 05 */	li r4, 5
/* 80D0D81C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0D820  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0D824  3C A5 00 02 */	addis r5, r5, 2
/* 80D0D828  38 C0 00 80 */	li r6, 0x80
/* 80D0D82C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D0D830  4B 32 EA BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D0D834  3C 80 00 08 */	lis r4, 8
/* 80D0D838  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D0D83C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D0D840  4B 30 74 15 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D0D844  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80D0D848  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D0D84C  30 03 FF FF */	addic r0, r3, -1
/* 80D0D850  7C 60 19 10 */	subfe r3, r0, r3
/* 80D0D854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0D858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0D85C  7C 08 03 A6 */	mtlr r0
/* 80D0D860  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0D864  4E 80 00 20 */	blr 
