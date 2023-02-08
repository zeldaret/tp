lbl_80603270:
/* 80603270  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80603274  7C 08 02 A6 */	mflr r0
/* 80603278  90 01 00 44 */	stw r0, 0x44(r1)
/* 8060327C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80603280  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80603284  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80603288  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8060328C  39 61 00 20 */	addi r11, r1, 0x20
/* 80603290  4B D5 EF 4D */	bl _savegpr_29
/* 80603294  7C 7D 1B 78 */	mr r29, r3
/* 80603298  7C 9E 23 78 */	mr r30, r4
/* 8060329C  FF C0 08 90 */	fmr f30, f1
/* 806032A0  7C BF 2B 78 */	mr r31, r5
/* 806032A4  FF E0 10 90 */	fmr f31, f2
/* 806032A8  3C 60 80 60 */	lis r3, d_a_b_go__stringBase0@ha /* 0x8060408C@ha */
/* 806032AC  38 63 40 8C */	addi r3, r3, d_a_b_go__stringBase0@l /* 0x8060408C@l */
/* 806032B0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806032B4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806032B8  3C A5 00 02 */	addis r5, r5, 2
/* 806032BC  38 C0 00 80 */	li r6, 0x80
/* 806032C0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806032C4  4B A3 90 29 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806032C8  7C 64 1B 78 */	mr r4, r3
/* 806032CC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806032D0  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806032D4  FC 20 F0 90 */	fmr f1, f30
/* 806032D8  FC 40 F8 90 */	fmr f2, f31
/* 806032DC  3C C0 80 60 */	lis r6, lit_3673@ha /* 0x80604050@ha */
/* 806032E0  C0 66 40 50 */	lfs f3, lit_3673@l(r6)  /* 0x80604050@l */
/* 806032E4  3C C0 80 60 */	lis r6, lit_3674@ha /* 0x80604054@ha */
/* 806032E8  C0 86 40 54 */	lfs f4, lit_3674@l(r6)  /* 0x80604054@l */
/* 806032EC  4B A0 DB 85 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806032F0  93 DD 06 5C */	stw r30, 0x65c(r29)
/* 806032F4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806032F8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806032FC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80603300  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80603304  39 61 00 20 */	addi r11, r1, 0x20
/* 80603308  4B D5 EF 21 */	bl _restgpr_29
/* 8060330C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80603310  7C 08 03 A6 */	mtlr r0
/* 80603314  38 21 00 40 */	addi r1, r1, 0x40
/* 80603318  4E 80 00 20 */	blr 
