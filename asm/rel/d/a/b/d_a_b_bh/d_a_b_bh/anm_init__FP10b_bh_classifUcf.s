lbl_805AE2A4:
/* 805AE2A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805AE2A8  7C 08 02 A6 */	mflr r0
/* 805AE2AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805AE2B0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805AE2B4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805AE2B8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805AE2BC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805AE2C0  39 61 00 20 */	addi r11, r1, 0x20
/* 805AE2C4  4B DB 3F 19 */	bl _savegpr_29
/* 805AE2C8  7C 7D 1B 78 */	mr r29, r3
/* 805AE2CC  7C 9E 23 78 */	mr r30, r4
/* 805AE2D0  FF C0 08 90 */	fmr f30, f1
/* 805AE2D4  7C BF 2B 78 */	mr r31, r5
/* 805AE2D8  FF E0 10 90 */	fmr f31, f2
/* 805AE2DC  3C 60 80 5B */	lis r3, d_a_b_bh__stringBase0@ha /* 0x805B322C@ha */
/* 805AE2E0  38 63 32 2C */	addi r3, r3, d_a_b_bh__stringBase0@l /* 0x805B322C@l */
/* 805AE2E4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AE2E8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AE2EC  3C A5 00 02 */	addis r5, r5, 2
/* 805AE2F0  38 C0 00 80 */	li r6, 0x80
/* 805AE2F4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AE2F8  4B A8 DF F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AE2FC  7C 64 1B 78 */	mr r4, r3
/* 805AE300  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 805AE304  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 805AE308  FC 20 F0 90 */	fmr f1, f30
/* 805AE30C  FC 40 F8 90 */	fmr f2, f31
/* 805AE310  3C C0 80 5B */	lis r6, lit_3778@ha /* 0x805B3144@ha */
/* 805AE314  C0 66 31 44 */	lfs f3, lit_3778@l(r6)  /* 0x805B3144@l */
/* 805AE318  3C C0 80 5B */	lis r6, lit_3779@ha /* 0x805B3148@ha */
/* 805AE31C  C0 86 31 48 */	lfs f4, lit_3779@l(r6)  /* 0x805B3148@l */
/* 805AE320  4B A6 2B 51 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805AE324  93 DD 06 60 */	stw r30, 0x660(r29)
/* 805AE328  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805AE32C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805AE330  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805AE334  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805AE338  39 61 00 20 */	addi r11, r1, 0x20
/* 805AE33C  4B DB 3E ED */	bl _restgpr_29
/* 805AE340  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AE344  7C 08 03 A6 */	mtlr r0
/* 805AE348  38 21 00 40 */	addi r1, r1, 0x40
/* 805AE34C  4E 80 00 20 */	blr 
