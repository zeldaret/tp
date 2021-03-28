lbl_806E6514:
/* 806E6514  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E6518  7C 08 02 A6 */	mflr r0
/* 806E651C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E6520  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806E6524  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806E6528  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806E652C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806E6530  39 61 00 20 */	addi r11, r1, 0x20
/* 806E6534  4B C7 BC A8 */	b _savegpr_29
/* 806E6538  7C 7D 1B 78 */	mr r29, r3
/* 806E653C  7C 9E 23 78 */	mr r30, r4
/* 806E6540  7C BF 2B 78 */	mr r31, r5
/* 806E6544  FF C0 08 90 */	fmr f30, f1
/* 806E6548  FF E0 10 90 */	fmr f31, f2
/* 806E654C  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806E6550  38 63 A2 CC */	addi r3, r3, stringBase0@l
/* 806E6554  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806E6558  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806E655C  3C A5 00 02 */	addis r5, r5, 2
/* 806E6560  38 C0 00 80 */	li r6, 0x80
/* 806E6564  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806E6568  4B 95 5D 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E656C  7C 64 1B 78 */	mr r4, r3
/* 806E6570  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806E6574  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806E6578  FC 20 F0 90 */	fmr f1, f30
/* 806E657C  FC 40 F8 90 */	fmr f2, f31
/* 806E6580  3C C0 80 6F */	lis r6, lit_3906@ha
/* 806E6584  C0 66 A1 F8 */	lfs f3, lit_3906@l(r6)
/* 806E6588  3C C0 80 6F */	lis r6, lit_4196@ha
/* 806E658C  C0 86 A2 3C */	lfs f4, lit_4196@l(r6)
/* 806E6590  4B 92 A8 E0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806E6594  93 DD 07 80 */	stw r30, 0x780(r29)
/* 806E6598  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806E659C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806E65A0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806E65A4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806E65A8  39 61 00 20 */	addi r11, r1, 0x20
/* 806E65AC  4B C7 BC 7C */	b _restgpr_29
/* 806E65B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E65B4  7C 08 03 A6 */	mtlr r0
/* 806E65B8  38 21 00 40 */	addi r1, r1, 0x40
/* 806E65BC  4E 80 00 20 */	blr 
