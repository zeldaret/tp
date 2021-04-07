lbl_804FBDB8:
/* 804FBDB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804FBDBC  7C 08 02 A6 */	mflr r0
/* 804FBDC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804FBDC4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804FBDC8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804FBDCC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804FBDD0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804FBDD4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBDD8  4B E6 64 05 */	bl _savegpr_29
/* 804FBDDC  7C 7D 1B 78 */	mr r29, r3
/* 804FBDE0  7C 9E 23 78 */	mr r30, r4
/* 804FBDE4  FF C0 08 90 */	fmr f30, f1
/* 804FBDE8  7C BF 2B 78 */	mr r31, r5
/* 804FBDEC  FF E0 10 90 */	fmr f31, f2
/* 804FBDF0  3C 60 80 50 */	lis r3, d_a_e_hb__stringBase0@ha /* 0x80500C34@ha */
/* 804FBDF4  38 63 0C 34 */	addi r3, r3, d_a_e_hb__stringBase0@l /* 0x80500C34@l */
/* 804FBDF8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804FBDFC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804FBE00  3C A5 00 02 */	addis r5, r5, 2
/* 804FBE04  38 C0 00 80 */	li r6, 0x80
/* 804FBE08  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804FBE0C  4B B4 04 E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804FBE10  7C 64 1B 78 */	mr r4, r3
/* 804FBE14  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 804FBE18  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 804FBE1C  FC 20 F0 90 */	fmr f1, f30
/* 804FBE20  FC 40 F8 90 */	fmr f2, f31
/* 804FBE24  3C C0 80 50 */	lis r6, lit_3789@ha /* 0x80500B08@ha */
/* 804FBE28  C0 66 0B 08 */	lfs f3, lit_3789@l(r6)  /* 0x80500B08@l */
/* 804FBE2C  3C C0 80 50 */	lis r6, lit_3823@ha /* 0x80500B34@ha */
/* 804FBE30  C0 86 0B 34 */	lfs f4, lit_3823@l(r6)  /* 0x80500B34@l */
/* 804FBE34  4B B1 50 3D */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 804FBE38  93 DD 06 60 */	stw r30, 0x660(r29)
/* 804FBE3C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804FBE40  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804FBE44  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804FBE48  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804FBE4C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBE50  4B E6 63 D9 */	bl _restgpr_29
/* 804FBE54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804FBE58  7C 08 03 A6 */	mtlr r0
/* 804FBE5C  38 21 00 40 */	addi r1, r1, 0x40
/* 804FBE60  4E 80 00 20 */	blr 
