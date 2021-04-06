lbl_805B35A0:
/* 805B35A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B35A4  7C 08 02 A6 */	mflr r0
/* 805B35A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B35AC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805B35B0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805B35B4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805B35B8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805B35BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805B35C0  4B DA EC 1D */	bl _savegpr_29
/* 805B35C4  7C 7D 1B 78 */	mr r29, r3
/* 805B35C8  7C 9E 23 78 */	mr r30, r4
/* 805B35CC  FF C0 08 90 */	fmr f30, f1
/* 805B35D0  7C BF 2B 78 */	mr r31, r5
/* 805B35D4  FF E0 10 90 */	fmr f31, f2
/* 805B35D8  3C 60 80 5C */	lis r3, d_a_b_bq__stringBase0@ha /* 0x805BA86C@ha */
/* 805B35DC  38 63 A8 6C */	addi r3, r3, d_a_b_bq__stringBase0@l /* 0x805BA86C@l */
/* 805B35E0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B35E4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B35E8  3C A5 00 02 */	addis r5, r5, 2
/* 805B35EC  38 C0 00 80 */	li r6, 0x80
/* 805B35F0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805B35F4  4B A8 8C F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805B35F8  7C 64 1B 78 */	mr r4, r3
/* 805B35FC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B3600  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 805B3604  FC 20 F0 90 */	fmr f1, f30
/* 805B3608  FC 40 F8 90 */	fmr f2, f31
/* 805B360C  3C C0 80 5C */	lis r6, lit_3830@ha /* 0x805BA58C@ha */
/* 805B3610  C0 66 A5 8C */	lfs f3, lit_3830@l(r6)  /* 0x805BA58C@l */
/* 805B3614  3C C0 80 5C */	lis r6, lit_3831@ha /* 0x805BA590@ha */
/* 805B3618  C0 86 A5 90 */	lfs f4, lit_3831@l(r6)  /* 0x805BA590@l */
/* 805B361C  4B A5 D8 55 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805B3620  93 DD 06 C4 */	stw r30, 0x6c4(r29)
/* 805B3624  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805B3628  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805B362C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805B3630  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805B3634  39 61 00 20 */	addi r11, r1, 0x20
/* 805B3638  4B DA EB F1 */	bl _restgpr_29
/* 805B363C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B3640  7C 08 03 A6 */	mtlr r0
/* 805B3644  38 21 00 40 */	addi r1, r1, 0x40
/* 805B3648  4E 80 00 20 */	blr 
