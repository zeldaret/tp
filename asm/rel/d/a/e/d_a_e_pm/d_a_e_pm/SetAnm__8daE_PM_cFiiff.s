lbl_80742674:
/* 80742674  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80742678  7C 08 02 A6 */	mflr r0
/* 8074267C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80742680  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80742684  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80742688  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8074268C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80742690  39 61 00 20 */	addi r11, r1, 0x20
/* 80742694  4B C1 FB 48 */	b _savegpr_29
/* 80742698  7C 7D 1B 78 */	mr r29, r3
/* 8074269C  7C 9E 23 78 */	mr r30, r4
/* 807426A0  7C BF 2B 78 */	mr r31, r5
/* 807426A4  FF C0 08 90 */	fmr f30, f1
/* 807426A8  FF E0 10 90 */	fmr f31, f2
/* 807426AC  3C 60 80 75 */	lis r3, stringBase0@ha
/* 807426B0  38 63 C1 48 */	addi r3, r3, stringBase0@l
/* 807426B4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807426B8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807426BC  3C A5 00 02 */	addis r5, r5, 2
/* 807426C0  38 C0 00 80 */	li r6, 0x80
/* 807426C4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807426C8  4B 8F 9C 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807426CC  7C 64 1B 78 */	mr r4, r3
/* 807426D0  80 7D 07 04 */	lwz r3, 0x704(r29)
/* 807426D4  7F E5 FB 78 */	mr r5, r31
/* 807426D8  FC 20 F0 90 */	fmr f1, f30
/* 807426DC  FC 40 F8 90 */	fmr f2, f31
/* 807426E0  3C C0 80 75 */	lis r6, lit_3911@ha
/* 807426E4  C0 66 BF 40 */	lfs f3, lit_3911@l(r6)
/* 807426E8  3C C0 80 75 */	lis r6, lit_4114@ha
/* 807426EC  C0 86 BF D0 */	lfs f4, lit_4114@l(r6)
/* 807426F0  4B 8C E7 80 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807426F4  93 DD 06 1C */	stw r30, 0x61c(r29)
/* 807426F8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807426FC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80742700  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80742704  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80742708  39 61 00 20 */	addi r11, r1, 0x20
/* 8074270C  4B C1 FB 1C */	b _restgpr_29
/* 80742710  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80742714  7C 08 03 A6 */	mtlr r0
/* 80742718  38 21 00 40 */	addi r1, r1, 0x40
/* 8074271C  4E 80 00 20 */	blr 
