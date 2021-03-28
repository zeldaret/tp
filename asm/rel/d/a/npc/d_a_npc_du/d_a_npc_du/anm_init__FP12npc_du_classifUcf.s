lbl_809AFD70:
/* 809AFD70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809AFD74  7C 08 02 A6 */	mflr r0
/* 809AFD78  90 01 00 44 */	stw r0, 0x44(r1)
/* 809AFD7C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 809AFD80  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 809AFD84  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 809AFD88  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 809AFD8C  39 61 00 20 */	addi r11, r1, 0x20
/* 809AFD90  4B 9B 24 4C */	b _savegpr_29
/* 809AFD94  7C 7D 1B 78 */	mr r29, r3
/* 809AFD98  7C 9E 23 78 */	mr r30, r4
/* 809AFD9C  FF C0 08 90 */	fmr f30, f1
/* 809AFDA0  7C BF 2B 78 */	mr r31, r5
/* 809AFDA4  FF E0 10 90 */	fmr f31, f2
/* 809AFDA8  3C 60 80 9B */	lis r3, stringBase0@ha
/* 809AFDAC  38 63 18 DC */	addi r3, r3, stringBase0@l
/* 809AFDB0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809AFDB4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809AFDB8  3C A5 00 02 */	addis r5, r5, 2
/* 809AFDBC  38 C0 00 80 */	li r6, 0x80
/* 809AFDC0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809AFDC4  4B 68 C5 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809AFDC8  7C 64 1B 78 */	mr r4, r3
/* 809AFDCC  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 809AFDD0  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 809AFDD4  FC 20 F0 90 */	fmr f1, f30
/* 809AFDD8  FC 40 F8 90 */	fmr f2, f31
/* 809AFDDC  3C C0 80 9B */	lis r6, lit_3776@ha
/* 809AFDE0  C0 66 18 4C */	lfs f3, lit_3776@l(r6)
/* 809AFDE4  3C C0 80 9B */	lis r6, lit_3777@ha
/* 809AFDE8  C0 86 18 50 */	lfs f4, lit_3777@l(r6)
/* 809AFDEC  38 C0 00 00 */	li r6, 0
/* 809AFDF0  4B 66 05 8C */	b setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 809AFDF4  93 DD 05 C8 */	stw r30, 0x5c8(r29)
/* 809AFDF8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 809AFDFC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 809AFE00  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 809AFE04  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 809AFE08  39 61 00 20 */	addi r11, r1, 0x20
/* 809AFE0C  4B 9B 24 1C */	b _restgpr_29
/* 809AFE10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809AFE14  7C 08 03 A6 */	mtlr r0
/* 809AFE18  38 21 00 40 */	addi r1, r1, 0x40
/* 809AFE1C  4E 80 00 20 */	blr 
