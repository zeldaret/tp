lbl_805F4B48:
/* 805F4B48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F4B4C  7C 08 02 A6 */	mflr r0
/* 805F4B50  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F4B54  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805F4B58  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805F4B5C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 805F4B60  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 805F4B64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F4B68  93 C1 00 08 */	stw r30, 8(r1)
/* 805F4B6C  7C 7E 1B 78 */	mr r30, r3
/* 805F4B70  FF C0 08 90 */	fmr f30, f1
/* 805F4B74  7C BF 2B 78 */	mr r31, r5
/* 805F4B78  FF E0 10 90 */	fmr f31, f2
/* 805F4B7C  90 83 07 5C */	stw r4, 0x75c(r3)
/* 805F4B80  2C 04 00 09 */	cmpwi r4, 9
/* 805F4B84  40 82 00 08 */	bne lbl_805F4B8C
/* 805F4B88  38 80 00 0A */	li r4, 0xa
lbl_805F4B8C:
/* 805F4B8C  3C 60 80 60 */	lis r3, d_a_b_gnd__stringBase0@ha /* 0x806029AC@ha */
/* 805F4B90  38 63 29 AC */	addi r3, r3, d_a_b_gnd__stringBase0@l /* 0x806029AC@l */
/* 805F4B94  38 63 00 06 */	addi r3, r3, 6
/* 805F4B98  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F4B9C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F4BA0  3C A5 00 02 */	addis r5, r5, 2
/* 805F4BA4  38 C0 00 80 */	li r6, 0x80
/* 805F4BA8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805F4BAC  4B A4 77 41 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805F4BB0  7C 64 1B 78 */	mr r4, r3
/* 805F4BB4  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 805F4BB8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 805F4BBC  FC 20 F0 90 */	fmr f1, f30
/* 805F4BC0  FC 40 F8 90 */	fmr f2, f31
/* 805F4BC4  3C C0 80 60 */	lis r6, lit_3835@ha /* 0x80602678@ha */
/* 805F4BC8  C0 66 26 78 */	lfs f3, lit_3835@l(r6)  /* 0x80602678@l */
/* 805F4BCC  3C C0 80 60 */	lis r6, lit_3836@ha /* 0x8060267C@ha */
/* 805F4BD0  C0 86 26 7C */	lfs f4, lit_3836@l(r6)  /* 0x8060267C@l */
/* 805F4BD4  4B A1 C2 9D */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805F4BD8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805F4BDC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805F4BE0  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 805F4BE4  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 805F4BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F4BEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F4BF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F4BF4  7C 08 03 A6 */	mtlr r0
/* 805F4BF8  38 21 00 30 */	addi r1, r1, 0x30
/* 805F4BFC  4E 80 00 20 */	blr 
