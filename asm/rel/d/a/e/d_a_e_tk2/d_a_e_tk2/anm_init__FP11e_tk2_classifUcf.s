lbl_807BA5B4:
/* 807BA5B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807BA5B8  7C 08 02 A6 */	mflr r0
/* 807BA5BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 807BA5C0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807BA5C4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807BA5C8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 807BA5CC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 807BA5D0  39 61 00 20 */	addi r11, r1, 0x20
/* 807BA5D4  4B BA 7C 09 */	bl _savegpr_29
/* 807BA5D8  7C 7D 1B 78 */	mr r29, r3
/* 807BA5DC  7C 9E 23 78 */	mr r30, r4
/* 807BA5E0  FF C0 08 90 */	fmr f30, f1
/* 807BA5E4  7C BF 2B 78 */	mr r31, r5
/* 807BA5E8  FF E0 10 90 */	fmr f31, f2
/* 807BA5EC  3C 60 80 7C */	lis r3, d_a_e_tk2__stringBase0@ha /* 0x807BBE20@ha */
/* 807BA5F0  38 63 BE 20 */	addi r3, r3, d_a_e_tk2__stringBase0@l /* 0x807BBE20@l */
/* 807BA5F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BA5F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BA5FC  3C A5 00 02 */	addis r5, r5, 2
/* 807BA600  38 C0 00 80 */	li r6, 0x80
/* 807BA604  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807BA608  4B 88 1C E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807BA60C  7C 64 1B 78 */	mr r4, r3
/* 807BA610  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807BA614  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807BA618  FC 20 F0 90 */	fmr f1, f30
/* 807BA61C  FC 40 F8 90 */	fmr f2, f31
/* 807BA620  3C C0 80 7C */	lis r6, lit_3780@ha /* 0x807BBDBC@ha */
/* 807BA624  C0 66 BD BC */	lfs f3, lit_3780@l(r6)  /* 0x807BBDBC@l */
/* 807BA628  3C C0 80 7C */	lis r6, lit_3781@ha /* 0x807BBDC0@ha */
/* 807BA62C  C0 86 BD C0 */	lfs f4, lit_3781@l(r6)  /* 0x807BBDC0@l */
/* 807BA630  4B 85 68 41 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807BA634  93 DD 05 BC */	stw r30, 0x5bc(r29)
/* 807BA638  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807BA63C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807BA640  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 807BA644  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 807BA648  39 61 00 20 */	addi r11, r1, 0x20
/* 807BA64C  4B BA 7B DD */	bl _restgpr_29
/* 807BA650  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807BA654  7C 08 03 A6 */	mtlr r0
/* 807BA658  38 21 00 40 */	addi r1, r1, 0x40
/* 807BA65C  4E 80 00 20 */	blr 
