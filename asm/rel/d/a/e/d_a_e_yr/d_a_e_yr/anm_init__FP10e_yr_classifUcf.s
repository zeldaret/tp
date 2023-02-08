lbl_80822790:
/* 80822790  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80822794  7C 08 02 A6 */	mflr r0
/* 80822798  90 01 00 44 */	stw r0, 0x44(r1)
/* 8082279C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 808227A0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 808227A4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 808227A8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 808227AC  39 61 00 20 */	addi r11, r1, 0x20
/* 808227B0  4B B3 FA 2D */	bl _savegpr_29
/* 808227B4  7C 7D 1B 78 */	mr r29, r3
/* 808227B8  7C 9E 23 78 */	mr r30, r4
/* 808227BC  FF C0 08 90 */	fmr f30, f1
/* 808227C0  7C BF 2B 78 */	mr r31, r5
/* 808227C4  FF E0 10 90 */	fmr f31, f2
/* 808227C8  88 03 06 6B */	lbz r0, 0x66b(r3)
/* 808227CC  28 00 00 03 */	cmplwi r0, 3
/* 808227D0  40 80 00 50 */	bge lbl_80822820
/* 808227D4  3C 60 80 83 */	lis r3, d_a_e_yr__stringBase0@ha /* 0x808289A8@ha */
/* 808227D8  38 63 89 A8 */	addi r3, r3, d_a_e_yr__stringBase0@l /* 0x808289A8@l */
/* 808227DC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808227E0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808227E4  3C A5 00 02 */	addis r5, r5, 2
/* 808227E8  38 C0 00 80 */	li r6, 0x80
/* 808227EC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 808227F0  4B 81 9A FD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808227F4  7C 64 1B 78 */	mr r4, r3
/* 808227F8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 808227FC  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80822800  FC 20 F0 90 */	fmr f1, f30
/* 80822804  FC 40 F8 90 */	fmr f2, f31
/* 80822808  3C C0 80 83 */	lis r6, lit_3903@ha /* 0x80828854@ha */
/* 8082280C  C0 66 88 54 */	lfs f3, lit_3903@l(r6)  /* 0x80828854@l */
/* 80822810  3C C0 80 83 */	lis r6, lit_4102@ha /* 0x80828888@ha */
/* 80822814  C0 86 88 88 */	lfs f4, lit_4102@l(r6)  /* 0x80828888@l */
/* 80822818  4B 7E E6 59 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8082281C  93 DD 05 B8 */	stw r30, 0x5b8(r29)
lbl_80822820:
/* 80822820  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80822824  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80822828  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8082282C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80822830  39 61 00 20 */	addi r11, r1, 0x20
/* 80822834  4B B3 F9 F5 */	bl _restgpr_29
/* 80822838  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8082283C  7C 08 03 A6 */	mtlr r0
/* 80822840  38 21 00 40 */	addi r1, r1, 0x40
/* 80822844  4E 80 00 20 */	blr 
