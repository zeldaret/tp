lbl_80D29A00:
/* 80D29A00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D29A04  7C 08 02 A6 */	mflr r0
/* 80D29A08  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D29A0C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D29A10  7C 7F 1B 78 */	mr r31, r3
/* 80D29A14  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D29A18  4B 2E 33 4D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D29A1C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D29A20  4B 2E 35 25 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D29A24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D29A28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D29A2C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D29A30  38 84 00 24 */	addi r4, r4, 0x24
/* 80D29A34  4B 61 CA 7D */	bl PSMTXCopy
/* 80D29A38  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 80D29A3C  28 00 00 00 */	cmplwi r0, 0
/* 80D29A40  40 82 00 68 */	bne lbl_80D29AA8
/* 80D29A44  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D2B934@ha */
/* 80D29A48  38 63 B9 34 */	addi r3, r3, l_arcName@l /* 0x80D2B934@l */
/* 80D29A4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D29A50  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80D29A54  3C 80 80 D3 */	lis r4, l_bck_idx@ha /* 0x80D2B808@ha */
/* 80D29A58  38 84 B8 08 */	addi r4, r4, l_bck_idx@l /* 0x80D2B808@l */
/* 80D29A5C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D29A60  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D29A64  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D29A68  3C A5 00 02 */	addis r5, r5, 2
/* 80D29A6C  38 C0 00 80 */	li r6, 0x80
/* 80D29A70  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D29A74  4B 31 28 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D29A78  38 80 00 00 */	li r4, 0
/* 80D29A7C  38 A1 00 08 */	addi r5, r1, 8
/* 80D29A80  81 83 00 00 */	lwz r12, 0(r3)
/* 80D29A84  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80D29A88  7D 89 03 A6 */	mtctr r12
/* 80D29A8C  4E 80 04 21 */	bctrl 
/* 80D29A90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D29A94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D29A98  A8 81 00 14 */	lha r4, 0x14(r1)
/* 80D29A9C  A8 A1 00 16 */	lha r5, 0x16(r1)
/* 80D29AA0  A8 C1 00 18 */	lha r6, 0x18(r1)
/* 80D29AA4  4B 2E 27 FD */	bl mDoMtx_ZXYrotM__FPA4_fsss
lbl_80D29AA8:
/* 80D29AA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D29AAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D29AB0  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D29AB4  4B 61 C9 FD */	bl PSMTXCopy
/* 80D29AB8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D29ABC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D29AC0  7C 08 03 A6 */	mtlr r0
/* 80D29AC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80D29AC8  4E 80 00 20 */	blr 
