lbl_806CD868:
/* 806CD868  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806CD86C  7C 08 02 A6 */	mflr r0
/* 806CD870  90 01 00 34 */	stw r0, 0x34(r1)
/* 806CD874  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 806CD878  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 806CD87C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 806CD880  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 806CD884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CD888  93 C1 00 08 */	stw r30, 8(r1)
/* 806CD88C  7C 7E 1B 78 */	mr r30, r3
/* 806CD890  7C BF 2B 78 */	mr r31, r5
/* 806CD894  FF C0 08 90 */	fmr f30, f1
/* 806CD898  FF E0 10 90 */	fmr f31, f2
/* 806CD89C  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806CD8A0  38 63 0F 78 */	addi r3, r3, stringBase0@l
/* 806CD8A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806CD8A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806CD8AC  3C A5 00 02 */	addis r5, r5, 2
/* 806CD8B0  38 C0 00 80 */	li r6, 0x80
/* 806CD8B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806CD8B8  4B 96 EA 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806CD8BC  7C 64 1B 78 */	mr r4, r3
/* 806CD8C0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CD8C4  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806CD8C8  FC 20 F0 90 */	fmr f1, f30
/* 806CD8CC  FC 40 F8 90 */	fmr f2, f31
/* 806CD8D0  3C C0 80 6D */	lis r6, lit_3908@ha
/* 806CD8D4  C0 66 0E 64 */	lfs f3, lit_3908@l(r6)
/* 806CD8D8  3C C0 80 6D */	lis r6, lit_4040@ha
/* 806CD8DC  C0 86 0E B0 */	lfs f4, lit_4040@l(r6)
/* 806CD8E0  4B 94 35 90 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806CD8E4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806CD8E8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806CD8EC  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 806CD8F0  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 806CD8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CD8F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 806CD8FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806CD900  7C 08 03 A6 */	mtlr r0
/* 806CD904  38 21 00 30 */	addi r1, r1, 0x30
/* 806CD908  4E 80 00 20 */	blr 
