lbl_80AF6010:
/* 80AF6010  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF6014  7C 08 02 A6 */	mflr r0
/* 80AF6018  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF601C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AF6020  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AF6024  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80AF6028  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80AF602C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF6030  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF6034  7C 7E 1B 78 */	mr r30, r3
/* 80AF6038  FF C0 08 90 */	fmr f30, f1
/* 80AF603C  7C BF 2B 78 */	mr r31, r5
/* 80AF6040  FF E0 10 90 */	fmr f31, f2
/* 80AF6044  3C 60 80 AF */	lis r3, stringBase0@ha
/* 80AF6048  38 63 74 A4 */	addi r3, r3, stringBase0@l
/* 80AF604C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80AF6050  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80AF6054  3C A5 00 02 */	addis r5, r5, 2
/* 80AF6058  38 C0 00 80 */	li r6, 0x80
/* 80AF605C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AF6060  4B 54 62 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AF6064  7C 64 1B 78 */	mr r4, r3
/* 80AF6068  80 7E 06 1C */	lwz r3, 0x61c(r30)
/* 80AF606C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80AF6070  FC 20 F0 90 */	fmr f1, f30
/* 80AF6074  FC 40 F8 90 */	fmr f2, f31
/* 80AF6078  3C C0 80 AF */	lis r6, lit_3782@ha
/* 80AF607C  C0 66 74 0C */	lfs f3, lit_3782@l(r6)
/* 80AF6080  3C C0 80 AF */	lis r6, lit_3783@ha
/* 80AF6084  C0 86 74 10 */	lfs f4, lit_3783@l(r6)
/* 80AF6088  38 C0 00 00 */	li r6, 0
/* 80AF608C  4B 51 A2 F0 */	b setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 80AF6090  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AF6094  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AF6098  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80AF609C  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80AF60A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF60A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF60A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF60AC  7C 08 03 A6 */	mtlr r0
/* 80AF60B0  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF60B4  4E 80 00 20 */	blr 
