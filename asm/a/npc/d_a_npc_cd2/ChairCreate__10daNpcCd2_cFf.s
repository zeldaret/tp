lbl_80157F68:
/* 80157F68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80157F6C  7C 08 02 A6 */	mflr r0
/* 80157F70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80157F74  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80157F78  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80157F7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80157F80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80157F84  7C 7F 1B 78 */	mr r31, r3
/* 80157F88  FF E0 08 90 */	fmr f31, f1
/* 80157F8C  88 03 0A C6 */	lbz r0, 0xac6(r3)
/* 80157F90  28 00 00 00 */	cmplwi r0, 0
/* 80157F94  3C 60 80 39 */	lis r3, a_npc_d_a_npc_cd2__stringBase0@ha /* 0x80393B70@ha */
/* 80157F98  38 63 3B 70 */	addi r3, r3, a_npc_d_a_npc_cd2__stringBase0@l /* 0x80393B70@l */
/* 80157F9C  3B C3 00 21 */	addi r30, r3, 0x21
/* 80157FA0  41 82 00 08 */	beq lbl_80157FA8
/* 80157FA4  3B C3 00 28 */	addi r30, r3, 0x28
lbl_80157FA8:
/* 80157FA8  7F E3 FB 78 */	mr r3, r31
/* 80157FAC  48 00 00 FD */	bl isM___10daNpcCd2_cFv
/* 80157FB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80157FB4  41 82 00 14 */	beq lbl_80157FC8
/* 80157FB8  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 80157FBC  28 00 00 00 */	cmplwi r0, 0
/* 80157FC0  38 80 00 04 */	li r4, 4
/* 80157FC4  48 00 00 10 */	b lbl_80157FD4
lbl_80157FC8:
/* 80157FC8  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 80157FCC  28 00 00 00 */	cmplwi r0, 0
/* 80157FD0  38 80 00 05 */	li r4, 5
lbl_80157FD4:
/* 80157FD4  7F C3 F3 78 */	mr r3, r30
/* 80157FD8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80157FDC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80157FE0  3C A5 00 02 */	addis r5, r5, 2
/* 80157FE4  38 C0 00 80 */	li r6, 0x80
/* 80157FE8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80157FEC  4B EE 43 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80157FF0  28 03 00 00 */	cmplwi r3, 0
/* 80157FF4  41 82 00 90 */	beq lbl_80158084
/* 80157FF8  3C 80 00 08 */	lis r4, 8
/* 80157FFC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80158000  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80158004  4B EB CC 51 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80158008  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015800C  40 82 00 0C */	bne lbl_80158018
/* 80158010  38 60 00 00 */	li r3, 0
/* 80158014  48 00 00 74 */	b lbl_80158088
lbl_80158018:
/* 80158018  3C 60 80 39 */	lis r3, lit_4072@ha /* 0x80393AFC@ha */
/* 8015801C  38 83 3A FC */	addi r4, r3, lit_4072@l /* 0x80393AFC@l */
/* 80158020  80 64 00 00 */	lwz r3, 0(r4)
/* 80158024  80 04 00 04 */	lwz r0, 4(r4)
/* 80158028  90 61 00 08 */	stw r3, 8(r1)
/* 8015802C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80158030  80 04 00 08 */	lwz r0, 8(r4)
/* 80158034  90 01 00 10 */	stw r0, 0x10(r1)
/* 80158038  D3 E1 00 08 */	stfs f31, 8(r1)
/* 8015803C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80158040  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80158044  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80158048  4B EB 4D 1D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8015804C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80158050  4B EB 4E F5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80158054  FC 00 F8 18 */	frsp f0, f31
/* 80158058  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8015805C  FC 00 F8 18 */	frsp f0, f31
/* 80158060  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80158064  FC 00 F8 18 */	frsp f0, f31
/* 80158068  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 8015806C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80158070  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80158074  38 9E 00 24 */	addi r4, r30, 0x24
/* 80158078  48 1E E4 39 */	bl PSMTXCopy
/* 8015807C  7F C3 F3 78 */	mr r3, r30
/* 80158080  48 00 00 08 */	b lbl_80158088
lbl_80158084:
/* 80158084  38 60 00 00 */	li r3, 0
lbl_80158088:
/* 80158088  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8015808C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80158090  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80158094  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80158098  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015809C  7C 08 03 A6 */	mtlr r0
/* 801580A0  38 21 00 30 */	addi r1, r1, 0x30
/* 801580A4  4E 80 00 20 */	blr 
