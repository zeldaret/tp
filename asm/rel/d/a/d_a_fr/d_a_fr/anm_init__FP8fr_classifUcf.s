lbl_8051994C:
/* 8051994C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80519950  7C 08 02 A6 */	mflr r0
/* 80519954  90 01 00 34 */	stw r0, 0x34(r1)
/* 80519958  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8051995C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80519960  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80519964  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80519968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051996C  93 C1 00 08 */	stw r30, 8(r1)
/* 80519970  7C 7E 1B 78 */	mr r30, r3
/* 80519974  FF C0 08 90 */	fmr f30, f1
/* 80519978  7C BF 2B 78 */	mr r31, r5
/* 8051997C  FF E0 10 90 */	fmr f31, f2
/* 80519980  3C 60 80 52 */	lis r3, d_a_fr__stringBase0@ha /* 0x8051BA88@ha */
/* 80519984  38 63 BA 88 */	addi r3, r3, d_a_fr__stringBase0@l /* 0x8051BA88@l */
/* 80519988  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051998C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80519990  3C A5 00 02 */	addis r5, r5, 2
/* 80519994  38 C0 00 80 */	li r6, 0x80
/* 80519998  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8051999C  4B B2 29 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805199A0  7C 64 1B 78 */	mr r4, r3
/* 805199A4  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 805199A8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 805199AC  FC 20 F0 90 */	fmr f1, f30
/* 805199B0  FC 40 F8 90 */	fmr f2, f31
/* 805199B4  3C C0 80 52 */	lis r6, lit_3669@ha /* 0x8051B9E4@ha */
/* 805199B8  C0 66 B9 E4 */	lfs f3, lit_3669@l(r6)  /* 0x8051B9E4@l */
/* 805199BC  3C C0 80 52 */	lis r6, lit_3670@ha /* 0x8051B9E8@ha */
/* 805199C0  C0 86 B9 E8 */	lfs f4, lit_3670@l(r6)  /* 0x8051B9E8@l */
/* 805199C4  38 C0 00 00 */	li r6, 0
/* 805199C8  4B AF 69 B5 */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 805199CC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805199D0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805199D4  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 805199D8  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 805199DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805199E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805199E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805199E8  7C 08 03 A6 */	mtlr r0
/* 805199EC  38 21 00 30 */	addi r1, r1, 0x30
/* 805199F0  4E 80 00 20 */	blr 
