lbl_805CBAC8:
/* 805CBAC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805CBACC  7C 08 02 A6 */	mflr r0
/* 805CBAD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805CBAD4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805CBAD8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805CBADC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805CBAE0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805CBAE4  39 61 00 20 */	addi r11, r1, 0x20
/* 805CBAE8  4B D9 66 F4 */	b _savegpr_29
/* 805CBAEC  7C 7D 1B 78 */	mr r29, r3
/* 805CBAF0  7C 9E 23 78 */	mr r30, r4
/* 805CBAF4  7C BF 2B 78 */	mr r31, r5
/* 805CBAF8  FF C0 08 90 */	fmr f30, f1
/* 805CBAFC  FF E0 10 90 */	fmr f31, f2
/* 805CBB00  3C 60 80 5E */	lis r3, stringBase0@ha
/* 805CBB04  38 63 D2 2C */	addi r3, r3, stringBase0@l
/* 805CBB08  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805CBB0C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805CBB10  3C A5 00 02 */	addis r5, r5, 2
/* 805CBB14  38 C0 00 80 */	li r6, 0x80
/* 805CBB18  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805CBB1C  4B A7 07 D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805CBB20  7C 64 1B 78 */	mr r4, r3
/* 805CBB24  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805CBB28  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 805CBB2C  FC 20 F0 90 */	fmr f1, f30
/* 805CBB30  FC 40 F8 90 */	fmr f2, f31
/* 805CBB34  3C C0 80 5E */	lis r6, lit_3933@ha
/* 805CBB38  C0 66 CA 58 */	lfs f3, lit_3933@l(r6)
/* 805CBB3C  3C C0 80 5E */	lis r6, lit_4285@ha
/* 805CBB40  C0 86 CA AC */	lfs f4, lit_4285@l(r6)
/* 805CBB44  4B A4 53 2C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805CBB48  93 DD 06 8C */	stw r30, 0x68c(r29)
/* 805CBB4C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805CBB50  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805CBB54  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805CBB58  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805CBB5C  39 61 00 20 */	addi r11, r1, 0x20
/* 805CBB60  4B D9 66 C8 */	b _restgpr_29
/* 805CBB64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805CBB68  7C 08 03 A6 */	mtlr r0
/* 805CBB6C  38 21 00 40 */	addi r1, r1, 0x40
/* 805CBB70  4E 80 00 20 */	blr 
