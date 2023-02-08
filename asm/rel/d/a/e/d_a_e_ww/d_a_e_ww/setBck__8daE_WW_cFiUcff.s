lbl_807E7ADC:
/* 807E7ADC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807E7AE0  7C 08 02 A6 */	mflr r0
/* 807E7AE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E7AE8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 807E7AEC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 807E7AF0  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 807E7AF4  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 807E7AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E7AFC  93 C1 00 08 */	stw r30, 8(r1)
/* 807E7B00  7C 7E 1B 78 */	mr r30, r3
/* 807E7B04  7C BF 2B 78 */	mr r31, r5
/* 807E7B08  FF C0 08 90 */	fmr f30, f1
/* 807E7B0C  FF E0 10 90 */	fmr f31, f2
/* 807E7B10  3C 60 80 7F */	lis r3, d_a_e_ww__stringBase0@ha /* 0x807EF8B8@ha */
/* 807E7B14  38 63 F8 B8 */	addi r3, r3, d_a_e_ww__stringBase0@l /* 0x807EF8B8@l */
/* 807E7B18  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E7B1C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E7B20  3C A5 00 02 */	addis r5, r5, 2
/* 807E7B24  38 C0 00 80 */	li r6, 0x80
/* 807E7B28  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807E7B2C  4B 85 47 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E7B30  7C 64 1B 78 */	mr r4, r3
/* 807E7B34  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E7B38  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807E7B3C  FC 20 F0 90 */	fmr f1, f30
/* 807E7B40  FC 40 F8 90 */	fmr f2, f31
/* 807E7B44  3C C0 80 7F */	lis r6, lit_3906@ha /* 0x807EF774@ha */
/* 807E7B48  C0 66 F7 74 */	lfs f3, lit_3906@l(r6)  /* 0x807EF774@l */
/* 807E7B4C  3C C0 80 7F */	lis r6, lit_4048@ha /* 0x807EF7B4@ha */
/* 807E7B50  C0 86 F7 B4 */	lfs f4, lit_4048@l(r6)  /* 0x807EF7B4@l */
/* 807E7B54  4B 82 93 1D */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807E7B58  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807E7B5C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807E7B60  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 807E7B64  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 807E7B68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E7B6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807E7B70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807E7B74  7C 08 03 A6 */	mtlr r0
/* 807E7B78  38 21 00 30 */	addi r1, r1, 0x30
/* 807E7B7C  4E 80 00 20 */	blr 
