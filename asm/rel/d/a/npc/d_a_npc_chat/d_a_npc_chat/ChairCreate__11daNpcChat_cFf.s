lbl_80980FC8:
/* 80980FC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80980FCC  7C 08 02 A6 */	mflr r0
/* 80980FD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80980FD4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80980FD8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80980FDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80980FE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80980FE4  7C 7F 1B 78 */	mr r31, r3
/* 80980FE8  FF E0 08 90 */	fmr f31, f1
/* 80980FEC  88 03 09 F4 */	lbz r0, 0x9f4(r3)
/* 80980FF0  28 00 00 00 */	cmplwi r0, 0
/* 80980FF4  3C 60 80 98 */	lis r3, struct_80987740+0x0@ha
/* 80980FF8  38 63 77 40 */	addi r3, r3, struct_80987740+0x0@l
/* 80980FFC  3B C3 00 21 */	addi r30, r3, 0x21
/* 80981000  41 82 00 08 */	beq lbl_80981008
/* 80981004  3B C3 00 28 */	addi r30, r3, 0x28
lbl_80981008:
/* 80981008  7F E3 FB 78 */	mr r3, r31
/* 8098100C  48 00 00 FD */	bl isM___11daNpcChat_cFv
/* 80981010  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80981014  41 82 00 14 */	beq lbl_80981028
/* 80981018  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 8098101C  28 00 00 00 */	cmplwi r0, 0
/* 80981020  38 80 00 04 */	li r4, 4
/* 80981024  48 00 00 10 */	b lbl_80981034
lbl_80981028:
/* 80981028  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 8098102C  28 00 00 00 */	cmplwi r0, 0
/* 80981030  38 80 00 05 */	li r4, 5
lbl_80981034:
/* 80981034  7F C3 F3 78 */	mr r3, r30
/* 80981038  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8098103C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80981040  3C A5 00 02 */	addis r5, r5, 2
/* 80981044  38 C0 00 80 */	li r6, 0x80
/* 80981048  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8098104C  4B 6B B2 A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80981050  28 03 00 00 */	cmplwi r3, 0
/* 80981054  41 82 00 90 */	beq lbl_809810E4
/* 80981058  3C 80 00 08 */	lis r4, 8
/* 8098105C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80981060  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80981064  4B 69 3B F0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80981068  7C 7E 1B 79 */	or. r30, r3, r3
/* 8098106C  40 82 00 0C */	bne lbl_80981078
/* 80981070  38 60 00 00 */	li r3, 0
/* 80981074  48 00 00 74 */	b lbl_809810E8
lbl_80981078:
/* 80981078  3C 60 80 98 */	lis r3, lit_4305@ha
/* 8098107C  38 83 6F 18 */	addi r4, r3, lit_4305@l
/* 80981080  80 64 00 00 */	lwz r3, 0(r4)
/* 80981084  80 04 00 04 */	lwz r0, 4(r4)
/* 80981088  90 61 00 08 */	stw r3, 8(r1)
/* 8098108C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80981090  80 04 00 08 */	lwz r0, 8(r4)
/* 80981094  90 01 00 10 */	stw r0, 0x10(r1)
/* 80981098  D3 E1 00 08 */	stfs f31, 8(r1)
/* 8098109C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 809810A0  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 809810A4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809810A8  4B 68 BC BC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809810AC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 809810B0  4B 68 BE 94 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 809810B4  FC 00 F8 18 */	frsp f0, f31
/* 809810B8  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 809810BC  FC 00 F8 18 */	frsp f0, f31
/* 809810C0  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 809810C4  FC 00 F8 18 */	frsp f0, f31
/* 809810C8  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 809810CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809810D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809810D4  38 9E 00 24 */	addi r4, r30, 0x24
/* 809810D8  4B 9C 53 D8 */	b PSMTXCopy
/* 809810DC  7F C3 F3 78 */	mr r3, r30
/* 809810E0  48 00 00 08 */	b lbl_809810E8
lbl_809810E4:
/* 809810E4  38 60 00 00 */	li r3, 0
lbl_809810E8:
/* 809810E8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809810EC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809810F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809810F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809810F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809810FC  7C 08 03 A6 */	mtlr r0
/* 80981100  38 21 00 30 */	addi r1, r1, 0x30
/* 80981104  4E 80 00 20 */	blr 
