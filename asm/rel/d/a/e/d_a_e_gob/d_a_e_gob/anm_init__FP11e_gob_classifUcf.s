lbl_806D8578:
/* 806D8578  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806D857C  7C 08 02 A6 */	mflr r0
/* 806D8580  90 01 00 44 */	stw r0, 0x44(r1)
/* 806D8584  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806D8588  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806D858C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806D8590  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806D8594  39 61 00 20 */	addi r11, r1, 0x20
/* 806D8598  4B C8 9C 44 */	b _savegpr_29
/* 806D859C  7C 7D 1B 78 */	mr r29, r3
/* 806D85A0  7C 9E 23 78 */	mr r30, r4
/* 806D85A4  FF C0 08 90 */	fmr f30, f1
/* 806D85A8  7C BF 2B 78 */	mr r31, r5
/* 806D85AC  FF E0 10 90 */	fmr f31, f2
/* 806D85B0  3C 60 80 6E */	lis r3, stringBase0@ha
/* 806D85B4  38 63 F0 54 */	addi r3, r3, stringBase0@l
/* 806D85B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D85BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D85C0  3C A5 00 02 */	addis r5, r5, 2
/* 806D85C4  38 C0 00 80 */	li r6, 0x80
/* 806D85C8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D85CC  4B 96 3D 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D85D0  7C 64 1B 78 */	mr r4, r3
/* 806D85D4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806D85D8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806D85DC  FC 20 F0 90 */	fmr f1, f30
/* 806D85E0  FC 40 F8 90 */	fmr f2, f31
/* 806D85E4  3C C0 80 6E */	lis r6, lit_3910@ha
/* 806D85E8  C0 66 EE 50 */	lfs f3, lit_3910@l(r6)
/* 806D85EC  3C C0 80 6E */	lis r6, lit_3919@ha
/* 806D85F0  C0 86 EE 58 */	lfs f4, lit_3919@l(r6)
/* 806D85F4  4B 93 88 7C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D85F8  93 DD 06 48 */	stw r30, 0x648(r29)
/* 806D85FC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806D8600  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806D8604  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806D8608  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806D860C  39 61 00 20 */	addi r11, r1, 0x20
/* 806D8610  4B C8 9C 18 */	b _restgpr_29
/* 806D8614  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D8618  7C 08 03 A6 */	mtlr r0
/* 806D861C  38 21 00 40 */	addi r1, r1, 0x40
/* 806D8620  4E 80 00 20 */	blr 
