lbl_808293A8:
/* 808293A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 808293AC  7C 08 02 A6 */	mflr r0
/* 808293B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 808293B4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 808293B8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 808293BC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 808293C0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 808293C4  39 61 00 20 */	addi r11, r1, 0x20
/* 808293C8  4B B3 8E 14 */	b _savegpr_29
/* 808293CC  7C 7D 1B 78 */	mr r29, r3
/* 808293D0  7C 9E 23 78 */	mr r30, r4
/* 808293D4  7C BF 2B 78 */	mr r31, r5
/* 808293D8  FF C0 08 90 */	fmr f30, f1
/* 808293DC  FF E0 10 90 */	fmr f31, f2
/* 808293E0  3C 60 80 83 */	lis r3, stringBase0@ha
/* 808293E4  38 63 F4 10 */	addi r3, r3, stringBase0@l
/* 808293E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 808293EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 808293F0  3C A5 00 02 */	addis r5, r5, 2
/* 808293F4  38 C0 00 80 */	li r6, 0x80
/* 808293F8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 808293FC  4B 81 2E F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80829400  7C 64 1B 78 */	mr r4, r3
/* 80829404  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80829408  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8082940C  FC 20 F0 90 */	fmr f1, f30
/* 80829410  FC 40 F8 90 */	fmr f2, f31
/* 80829414  3C C0 80 83 */	lis r6, lit_3867@ha
/* 80829418  C0 66 F2 18 */	lfs f3, lit_3867@l(r6)
/* 8082941C  3C C0 80 83 */	lis r6, lit_3884@ha
/* 80829420  C0 86 F2 1C */	lfs f4, lit_3884@l(r6)
/* 80829424  4B 7E 7A 4C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80829428  93 DD 07 90 */	stw r30, 0x790(r29)
/* 8082942C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80829430  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80829434  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80829438  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8082943C  39 61 00 20 */	addi r11, r1, 0x20
/* 80829440  4B B3 8D E8 */	b _restgpr_29
/* 80829444  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80829448  7C 08 03 A6 */	mtlr r0
/* 8082944C  38 21 00 40 */	addi r1, r1, 0x40
/* 80829450  4E 80 00 20 */	blr 
