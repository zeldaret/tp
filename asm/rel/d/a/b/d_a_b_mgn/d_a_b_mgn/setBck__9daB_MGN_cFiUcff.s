lbl_80607924:
/* 80607924  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80607928  7C 08 02 A6 */	mflr r0
/* 8060792C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80607930  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80607934  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80607938  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8060793C  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80607940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80607944  93 C1 00 08 */	stw r30, 8(r1)
/* 80607948  7C 7E 1B 78 */	mr r30, r3
/* 8060794C  7C BF 2B 78 */	mr r31, r5
/* 80607950  FF C0 08 90 */	fmr f30, f1
/* 80607954  FF E0 10 90 */	fmr f31, f2
/* 80607958  3C 60 80 61 */	lis r3, stringBase0@ha
/* 8060795C  38 63 00 84 */	addi r3, r3, stringBase0@l
/* 80607960  38 63 00 07 */	addi r3, r3, 7
/* 80607964  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80607968  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8060796C  3C A5 00 02 */	addis r5, r5, 2
/* 80607970  38 C0 00 80 */	li r6, 0x80
/* 80607974  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80607978  4B A3 49 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060797C  7C 64 1B 78 */	mr r4, r3
/* 80607980  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80607984  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80607988  FC 20 F0 90 */	fmr f1, f30
/* 8060798C  FC 40 F8 90 */	fmr f2, f31
/* 80607990  3C C0 80 61 */	lis r6, lit_3929@ha
/* 80607994  C0 66 FD E4 */	lfs f3, lit_3929@l(r6)
/* 80607998  3C C0 80 61 */	lis r6, lit_4762@ha
/* 8060799C  C0 86 FE 54 */	lfs f4, lit_4762@l(r6)
/* 806079A0  4B A0 94 D0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806079A4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806079A8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806079AC  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 806079B0  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 806079B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806079B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 806079BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806079C0  7C 08 03 A6 */	mtlr r0
/* 806079C4  38 21 00 30 */	addi r1, r1, 0x30
/* 806079C8  4E 80 00 20 */	blr 
