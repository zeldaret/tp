lbl_805BB408:
/* 805BB408  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BB40C  7C 08 02 A6 */	mflr r0
/* 805BB410  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BB414  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805BB418  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805BB41C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805BB420  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805BB424  39 61 00 20 */	addi r11, r1, 0x20
/* 805BB428  4B DA 6D B5 */	bl _savegpr_29
/* 805BB42C  7C 7D 1B 78 */	mr r29, r3
/* 805BB430  7C 9E 23 78 */	mr r30, r4
/* 805BB434  7C BF 2B 78 */	mr r31, r5
/* 805BB438  FF C0 08 90 */	fmr f30, f1
/* 805BB43C  FF E0 10 90 */	fmr f31, f2
/* 805BB440  3C 60 80 5C */	lis r3, d_a_b_dr__stringBase0@ha /* 0x805C7240@ha */
/* 805BB444  38 63 72 40 */	addi r3, r3, d_a_b_dr__stringBase0@l /* 0x805C7240@l */
/* 805BB448  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BB44C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BB450  3C A5 00 02 */	addis r5, r5, 2
/* 805BB454  38 C0 00 80 */	li r6, 0x80
/* 805BB458  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805BB45C  4B A8 0E 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805BB460  7C 64 1B 78 */	mr r4, r3
/* 805BB464  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB468  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 805BB46C  FC 20 F0 90 */	fmr f1, f30
/* 805BB470  FC 40 F8 90 */	fmr f2, f31
/* 805BB474  3C C0 80 5C */	lis r6, lit_4011@ha /* 0x805C6CA4@ha */
/* 805BB478  C0 66 6C A4 */	lfs f3, lit_4011@l(r6)  /* 0x805C6CA4@l */
/* 805BB47C  3C C0 80 5C */	lis r6, lit_4022@ha /* 0x805C6CAC@ha */
/* 805BB480  C0 86 6C AC */	lfs f4, lit_4022@l(r6)  /* 0x805C6CAC@l */
/* 805BB484  4B A5 59 ED */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805BB488  93 DD 07 10 */	stw r30, 0x710(r29)
/* 805BB48C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805BB490  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805BB494  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805BB498  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805BB49C  39 61 00 20 */	addi r11, r1, 0x20
/* 805BB4A0  4B DA 6D 89 */	bl _restgpr_29
/* 805BB4A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BB4A8  7C 08 03 A6 */	mtlr r0
/* 805BB4AC  38 21 00 40 */	addi r1, r1, 0x40
/* 805BB4B0  4E 80 00 20 */	blr 
