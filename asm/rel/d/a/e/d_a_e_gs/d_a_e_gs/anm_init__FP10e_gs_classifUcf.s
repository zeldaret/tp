lbl_806DF4B4:
/* 806DF4B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806DF4B8  7C 08 02 A6 */	mflr r0
/* 806DF4BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 806DF4C0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806DF4C4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806DF4C8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806DF4CC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806DF4D0  39 61 00 20 */	addi r11, r1, 0x20
/* 806DF4D4  4B C8 2D 09 */	bl _savegpr_29
/* 806DF4D8  7C 7D 1B 78 */	mr r29, r3
/* 806DF4DC  7C 9E 23 78 */	mr r30, r4
/* 806DF4E0  FF C0 08 90 */	fmr f30, f1
/* 806DF4E4  7C BF 2B 78 */	mr r31, r5
/* 806DF4E8  FF E0 10 90 */	fmr f31, f2
/* 806DF4EC  3C 60 80 6E */	lis r3, d_a_e_gs__stringBase0@ha /* 0x806DFE2C@ha */
/* 806DF4F0  38 63 FE 2C */	addi r3, r3, d_a_e_gs__stringBase0@l /* 0x806DFE2C@l */
/* 806DF4F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DF4F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DF4FC  3C A5 00 02 */	addis r5, r5, 2
/* 806DF500  38 C0 00 80 */	li r6, 0x80
/* 806DF504  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806DF508  4B 95 CD E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806DF50C  7C 64 1B 78 */	mr r4, r3
/* 806DF510  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 806DF514  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806DF518  FC 20 F0 90 */	fmr f1, f30
/* 806DF51C  FC 40 F8 90 */	fmr f2, f31
/* 806DF520  3C C0 80 6E */	lis r6, lit_3663@ha /* 0x806DFE04@ha */
/* 806DF524  C0 66 FE 04 */	lfs f3, lit_3663@l(r6)  /* 0x806DFE04@l */
/* 806DF528  3C C0 80 6E */	lis r6, lit_3664@ha /* 0x806DFE08@ha */
/* 806DF52C  C0 86 FE 08 */	lfs f4, lit_3664@l(r6)  /* 0x806DFE08@l */
/* 806DF530  4B 93 19 41 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806DF534  93 DD 05 CC */	stw r30, 0x5cc(r29)
/* 806DF538  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806DF53C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806DF540  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806DF544  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806DF548  39 61 00 20 */	addi r11, r1, 0x20
/* 806DF54C  4B C8 2C DD */	bl _restgpr_29
/* 806DF550  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806DF554  7C 08 03 A6 */	mtlr r0
/* 806DF558  38 21 00 40 */	addi r1, r1, 0x40
/* 806DF55C  4E 80 00 20 */	blr 
