lbl_807C3818:
/* 807C3818  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807C381C  7C 08 02 A6 */	mflr r0
/* 807C3820  90 01 00 34 */	stw r0, 0x34(r1)
/* 807C3824  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 807C3828  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 807C382C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 807C3830  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 807C3834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C3838  93 C1 00 08 */	stw r30, 8(r1)
/* 807C383C  7C 7E 1B 78 */	mr r30, r3
/* 807C3840  7C BF 2B 78 */	mr r31, r5
/* 807C3844  FF C0 08 90 */	fmr f30, f1
/* 807C3848  FF E0 10 90 */	fmr f31, f2
/* 807C384C  3C 60 80 7D */	lis r3, stringBase0@ha
/* 807C3850  38 63 EE FC */	addi r3, r3, stringBase0@l
/* 807C3854  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807C3858  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807C385C  3C A5 00 02 */	addis r5, r5, 2
/* 807C3860  38 C0 00 80 */	li r6, 0x80
/* 807C3864  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807C3868  4B 87 8A 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807C386C  7C 64 1B 78 */	mr r4, r3
/* 807C3870  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807C3874  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807C3878  FC 20 F0 90 */	fmr f1, f30
/* 807C387C  FC 40 F8 90 */	fmr f2, f31
/* 807C3880  3C C0 80 7D */	lis r6, lit_3908@ha
/* 807C3884  C0 66 EC AC */	lfs f3, lit_3908@l(r6)
/* 807C3888  3C C0 80 7D */	lis r6, lit_4473@ha
/* 807C388C  C0 86 ED 40 */	lfs f4, lit_4473@l(r6)
/* 807C3890  4B 84 D5 E0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807C3894  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807C3898  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807C389C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 807C38A0  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 807C38A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C38A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 807C38AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807C38B0  7C 08 03 A6 */	mtlr r0
/* 807C38B4  38 21 00 30 */	addi r1, r1, 0x30
/* 807C38B8  4E 80 00 20 */	blr 
