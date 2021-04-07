lbl_805F4A94:
/* 805F4A94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F4A98  7C 08 02 A6 */	mflr r0
/* 805F4A9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F4AA0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805F4AA4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805F4AA8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 805F4AAC  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 805F4AB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F4AB4  93 C1 00 08 */	stw r30, 8(r1)
/* 805F4AB8  7C 7E 1B 78 */	mr r30, r3
/* 805F4ABC  FF C0 08 90 */	fmr f30, f1
/* 805F4AC0  7C BF 2B 78 */	mr r31, r5
/* 805F4AC4  FF E0 10 90 */	fmr f31, f2
/* 805F4AC8  90 83 07 58 */	stw r4, 0x758(r3)
/* 805F4ACC  2C 04 00 49 */	cmpwi r4, 0x49
/* 805F4AD0  40 82 00 08 */	bne lbl_805F4AD8
/* 805F4AD4  38 80 00 40 */	li r4, 0x40
lbl_805F4AD8:
/* 805F4AD8  3C 60 80 60 */	lis r3, d_a_b_gnd__stringBase0@ha /* 0x806029AC@ha */
/* 805F4ADC  38 63 29 AC */	addi r3, r3, d_a_b_gnd__stringBase0@l /* 0x806029AC@l */
/* 805F4AE0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F4AE4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F4AE8  3C A5 00 02 */	addis r5, r5, 2
/* 805F4AEC  38 C0 00 80 */	li r6, 0x80
/* 805F4AF0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805F4AF4  4B A4 77 F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805F4AF8  7C 64 1B 78 */	mr r4, r3
/* 805F4AFC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805F4B00  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 805F4B04  FC 20 F0 90 */	fmr f1, f30
/* 805F4B08  FC 40 F8 90 */	fmr f2, f31
/* 805F4B0C  3C C0 80 60 */	lis r6, lit_3835@ha /* 0x80602678@ha */
/* 805F4B10  C0 66 26 78 */	lfs f3, lit_3835@l(r6)  /* 0x80602678@l */
/* 805F4B14  3C C0 80 60 */	lis r6, lit_3836@ha /* 0x8060267C@ha */
/* 805F4B18  C0 86 26 7C */	lfs f4, lit_3836@l(r6)  /* 0x8060267C@l */
/* 805F4B1C  4B A1 C3 55 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805F4B20  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805F4B24  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805F4B28  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 805F4B2C  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 805F4B30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F4B34  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F4B38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F4B3C  7C 08 03 A6 */	mtlr r0
/* 805F4B40  38 21 00 30 */	addi r1, r1, 0x30
/* 805F4B44  4E 80 00 20 */	blr 
