lbl_80785188:
/* 80785188  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8078518C  7C 08 02 A6 */	mflr r0
/* 80785190  90 01 00 44 */	stw r0, 0x44(r1)
/* 80785194  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80785198  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8078519C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 807851A0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 807851A4  39 61 00 20 */	addi r11, r1, 0x20
/* 807851A8  4B BD D0 34 */	b _savegpr_29
/* 807851AC  7C 7D 1B 78 */	mr r29, r3
/* 807851B0  7C 9E 23 78 */	mr r30, r4
/* 807851B4  FF C0 08 90 */	fmr f30, f1
/* 807851B8  7C BF 2B 78 */	mr r31, r5
/* 807851BC  FF E0 10 90 */	fmr f31, f2
/* 807851C0  3C 60 80 79 */	lis r3, stringBase0@ha
/* 807851C4  38 63 9D 84 */	addi r3, r3, stringBase0@l
/* 807851C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807851CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807851D0  3C A5 00 02 */	addis r5, r5, 2
/* 807851D4  38 C0 00 80 */	li r6, 0x80
/* 807851D8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807851DC  4B 8B 71 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807851E0  7C 64 1B 78 */	mr r4, r3
/* 807851E4  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 807851E8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807851EC  FC 20 F0 90 */	fmr f1, f30
/* 807851F0  FC 40 F8 90 */	fmr f2, f31
/* 807851F4  3C C0 80 79 */	lis r6, lit_3909@ha
/* 807851F8  C0 66 9C 3C */	lfs f3, lit_3909@l(r6)
/* 807851FC  3C C0 80 79 */	lis r6, lit_3948@ha
/* 80785200  C0 86 9C 7C */	lfs f4, lit_3948@l(r6)
/* 80785204  4B 88 BC 6C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80785208  93 DD 05 D8 */	stw r30, 0x5d8(r29)
/* 8078520C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80785210  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80785214  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80785218  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8078521C  39 61 00 20 */	addi r11, r1, 0x20
/* 80785220  4B BD D0 08 */	b _restgpr_29
/* 80785224  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80785228  7C 08 03 A6 */	mtlr r0
/* 8078522C  38 21 00 40 */	addi r1, r1, 0x40
/* 80785230  4E 80 00 20 */	blr 
