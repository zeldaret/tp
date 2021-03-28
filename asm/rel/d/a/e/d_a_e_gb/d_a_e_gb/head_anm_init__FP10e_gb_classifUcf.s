lbl_806C1D3C:
/* 806C1D3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806C1D40  7C 08 02 A6 */	mflr r0
/* 806C1D44  90 01 00 44 */	stw r0, 0x44(r1)
/* 806C1D48  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806C1D4C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806C1D50  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806C1D54  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806C1D58  39 61 00 20 */	addi r11, r1, 0x20
/* 806C1D5C  4B CA 04 80 */	b _savegpr_29
/* 806C1D60  7C 7D 1B 78 */	mr r29, r3
/* 806C1D64  7C 9E 23 78 */	mr r30, r4
/* 806C1D68  FF C0 08 90 */	fmr f30, f1
/* 806C1D6C  7C BF 2B 78 */	mr r31, r5
/* 806C1D70  FF E0 10 90 */	fmr f31, f2
/* 806C1D74  3C 60 80 6C */	lis r3, stringBase0@ha
/* 806C1D78  38 63 76 B8 */	addi r3, r3, stringBase0@l
/* 806C1D7C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806C1D80  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806C1D84  3C A5 00 02 */	addis r5, r5, 2
/* 806C1D88  38 C0 00 80 */	li r6, 0x80
/* 806C1D8C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806C1D90  4B 97 A5 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806C1D94  7C 64 1B 78 */	mr r4, r3
/* 806C1D98  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806C1D9C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806C1DA0  FC 20 F0 90 */	fmr f1, f30
/* 806C1DA4  FC 40 F8 90 */	fmr f2, f31
/* 806C1DA8  3C C0 80 6C */	lis r6, lit_3907@ha
/* 806C1DAC  C0 66 74 EC */	lfs f3, lit_3907@l(r6)
/* 806C1DB0  3C C0 80 6C */	lis r6, lit_3941@ha
/* 806C1DB4  C0 86 75 18 */	lfs f4, lit_3941@l(r6)
/* 806C1DB8  38 C0 00 00 */	li r6, 0
/* 806C1DBC  4B 94 E5 C0 */	b setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 806C1DC0  93 DD 06 88 */	stw r30, 0x688(r29)
/* 806C1DC4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806C1DC8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806C1DCC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806C1DD0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806C1DD4  39 61 00 20 */	addi r11, r1, 0x20
/* 806C1DD8  4B CA 04 50 */	b _restgpr_29
/* 806C1DDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806C1DE0  7C 08 03 A6 */	mtlr r0
/* 806C1DE4  38 21 00 40 */	addi r1, r1, 0x40
/* 806C1DE8  4E 80 00 20 */	blr 
