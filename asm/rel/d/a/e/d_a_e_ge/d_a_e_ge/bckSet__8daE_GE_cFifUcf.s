lbl_806C7AB8:
/* 806C7AB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806C7ABC  7C 08 02 A6 */	mflr r0
/* 806C7AC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806C7AC4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 806C7AC8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 806C7ACC  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 806C7AD0  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 806C7AD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C7AD8  93 C1 00 08 */	stw r30, 8(r1)
/* 806C7ADC  7C 7E 1B 78 */	mr r30, r3
/* 806C7AE0  FF C0 08 90 */	fmr f30, f1
/* 806C7AE4  7C BF 2B 78 */	mr r31, r5
/* 806C7AE8  FF E0 10 90 */	fmr f31, f2
/* 806C7AEC  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806C7AF0  38 63 D1 0C */	addi r3, r3, stringBase0@l
/* 806C7AF4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806C7AF8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806C7AFC  3C A5 00 02 */	addis r5, r5, 2
/* 806C7B00  38 C0 00 80 */	li r6, 0x80
/* 806C7B04  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806C7B08  4B 97 47 E4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806C7B0C  7C 64 1B 78 */	mr r4, r3
/* 806C7B10  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806C7B14  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806C7B18  FC 20 F0 90 */	fmr f1, f30
/* 806C7B1C  FC 40 F8 90 */	fmr f2, f31
/* 806C7B20  3C C0 80 6D */	lis r6, lit_3905@ha
/* 806C7B24  C0 66 D0 04 */	lfs f3, lit_3905@l(r6)
/* 806C7B28  3C C0 80 6D */	lis r6, lit_3946@ha
/* 806C7B2C  C0 86 D0 4C */	lfs f4, lit_3946@l(r6)
/* 806C7B30  4B 94 93 40 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806C7B34  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806C7B38  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806C7B3C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 806C7B40  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 806C7B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C7B48  83 C1 00 08 */	lwz r30, 8(r1)
/* 806C7B4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806C7B50  7C 08 03 A6 */	mtlr r0
/* 806C7B54  38 21 00 30 */	addi r1, r1, 0x30
/* 806C7B58  4E 80 00 20 */	blr 
