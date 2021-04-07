lbl_80714228:
/* 80714228  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8071422C  7C 08 02 A6 */	mflr r0
/* 80714230  90 01 00 34 */	stw r0, 0x34(r1)
/* 80714234  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80714238  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8071423C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80714240  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80714244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80714248  93 C1 00 08 */	stw r30, 8(r1)
/* 8071424C  7C 7E 1B 78 */	mr r30, r3
/* 80714250  FF C0 08 90 */	fmr f30, f1
/* 80714254  7C BF 2B 78 */	mr r31, r5
/* 80714258  FF E0 10 90 */	fmr f31, f2
/* 8071425C  3C 60 80 72 */	lis r3, d_a_e_mk__stringBase0@ha /* 0x8071C7E8@ha */
/* 80714260  38 63 C7 E8 */	addi r3, r3, d_a_e_mk__stringBase0@l /* 0x8071C7E8@l */
/* 80714264  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80714268  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8071426C  3C A5 00 02 */	addis r5, r5, 2
/* 80714270  38 C0 00 80 */	li r6, 0x80
/* 80714274  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80714278  4B 92 80 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8071427C  7C 64 1B 78 */	mr r4, r3
/* 80714280  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 80714284  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80714288  FC 20 F0 90 */	fmr f1, f30
/* 8071428C  FC 40 F8 90 */	fmr f2, f31
/* 80714290  3C C0 80 72 */	lis r6, lit_3780@ha /* 0x8071C550@ha */
/* 80714294  C0 66 C5 50 */	lfs f3, lit_3780@l(r6)  /* 0x8071C550@l */
/* 80714298  3C C0 80 72 */	lis r6, lit_3794@ha /* 0x8071C554@ha */
/* 8071429C  C0 86 C5 54 */	lfs f4, lit_3794@l(r6)  /* 0x8071C554@l */
/* 807142A0  38 C0 00 00 */	li r6, 0
/* 807142A4  4B 8F C0 D9 */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 807142A8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807142AC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807142B0  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 807142B4  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 807142B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807142BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 807142C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807142C4  7C 08 03 A6 */	mtlr r0
/* 807142C8  38 21 00 30 */	addi r1, r1, 0x30
/* 807142CC  4E 80 00 20 */	blr 
