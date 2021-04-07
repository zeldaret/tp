lbl_806208C8:
/* 806208C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806208CC  7C 08 02 A6 */	mflr r0
/* 806208D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806208D4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 806208D8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 806208DC  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 806208E0  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 806208E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806208E8  93 C1 00 08 */	stw r30, 8(r1)
/* 806208EC  7C 7E 1B 78 */	mr r30, r3
/* 806208F0  7C BF 2B 78 */	mr r31, r5
/* 806208F4  FF C0 08 90 */	fmr f30, f1
/* 806208F8  FF E0 10 90 */	fmr f31, f2
/* 806208FC  3C 60 80 63 */	lis r3, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 80620900  38 63 E8 E8 */	addi r3, r3, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 80620904  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80620908  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062090C  3C A5 00 02 */	addis r5, r5, 2
/* 80620910  38 C0 00 80 */	li r6, 0x80
/* 80620914  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80620918  4B A1 B9 D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062091C  7C 64 1B 78 */	mr r4, r3
/* 80620920  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80620924  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80620928  FC 20 F0 90 */	fmr f1, f30
/* 8062092C  FC 40 F8 90 */	fmr f2, f31
/* 80620930  3C C0 80 63 */	lis r6, lit_3921@ha /* 0x8062E638@ha */
/* 80620934  C0 66 E6 38 */	lfs f3, lit_3921@l(r6)  /* 0x8062E638@l */
/* 80620938  3C C0 80 63 */	lis r6, lit_4371@ha /* 0x8062E69C@ha */
/* 8062093C  C0 86 E6 9C */	lfs f4, lit_4371@l(r6)  /* 0x8062E69C@l */
/* 80620940  4B 9F 05 31 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80620944  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80620948  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8062094C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80620950  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80620954  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80620958  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062095C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80620960  7C 08 03 A6 */	mtlr r0
/* 80620964  38 21 00 30 */	addi r1, r1, 0x30
/* 80620968  4E 80 00 20 */	blr 
