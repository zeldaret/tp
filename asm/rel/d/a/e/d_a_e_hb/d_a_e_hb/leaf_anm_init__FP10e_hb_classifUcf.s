lbl_804FBE64:
/* 804FBE64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804FBE68  7C 08 02 A6 */	mflr r0
/* 804FBE6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804FBE70  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804FBE74  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804FBE78  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804FBE7C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804FBE80  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBE84  4B E6 63 58 */	b _savegpr_29
/* 804FBE88  7C 9D 23 78 */	mr r29, r4
/* 804FBE8C  FF C0 08 90 */	fmr f30, f1
/* 804FBE90  7C BE 2B 78 */	mr r30, r5
/* 804FBE94  FF E0 10 90 */	fmr f31, f2
/* 804FBE98  80 03 12 2C */	lwz r0, 0x122c(r3)
/* 804FBE9C  90 01 00 08 */	stw r0, 8(r1)
/* 804FBEA0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804FBEA4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804FBEA8  38 81 00 08 */	addi r4, r1, 8
/* 804FBEAC  4B B1 D9 4C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804FBEB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 804FBEB4  41 82 00 5C */	beq lbl_804FBF10
/* 804FBEB8  3C 60 80 50 */	lis r3, stringBase0@ha
/* 804FBEBC  38 63 0C 34 */	addi r3, r3, stringBase0@l
/* 804FBEC0  7F A4 EB 78 */	mr r4, r29
/* 804FBEC4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804FBEC8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804FBECC  3C A5 00 02 */	addis r5, r5, 2
/* 804FBED0  38 C0 00 80 */	li r6, 0x80
/* 804FBED4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804FBED8  4B B4 04 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804FBEDC  7C 64 1B 78 */	mr r4, r3
/* 804FBEE0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 804FBEE4  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 804FBEE8  FC 20 F0 90 */	fmr f1, f30
/* 804FBEEC  FC 40 F8 90 */	fmr f2, f31
/* 804FBEF0  3C C0 80 50 */	lis r6, lit_3789@ha
/* 804FBEF4  C0 66 0B 08 */	lfs f3, lit_3789@l(r6)
/* 804FBEF8  3C C0 80 50 */	lis r6, lit_3823@ha
/* 804FBEFC  C0 86 0B 34 */	lfs f4, lit_3823@l(r6)
/* 804FBF00  38 C0 00 00 */	li r6, 0
/* 804FBF04  4B B1 44 78 */	b setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 804FBF08  38 60 00 01 */	li r3, 1
/* 804FBF0C  48 00 00 08 */	b lbl_804FBF14
lbl_804FBF10:
/* 804FBF10  38 60 00 00 */	li r3, 0
lbl_804FBF14:
/* 804FBF14  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804FBF18  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804FBF1C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804FBF20  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804FBF24  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBF28  4B E6 63 00 */	b _restgpr_29
/* 804FBF2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804FBF30  7C 08 03 A6 */	mtlr r0
/* 804FBF34  38 21 00 40 */	addi r1, r1, 0x40
/* 804FBF38  4E 80 00 20 */	blr 
