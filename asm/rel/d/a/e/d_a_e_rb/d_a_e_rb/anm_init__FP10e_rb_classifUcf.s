lbl_807623BC:
/* 807623BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807623C0  7C 08 02 A6 */	mflr r0
/* 807623C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807623C8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 807623CC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 807623D0  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 807623D4  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 807623D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807623DC  93 C1 00 08 */	stw r30, 8(r1)
/* 807623E0  7C 7E 1B 78 */	mr r30, r3
/* 807623E4  FF C0 08 90 */	fmr f30, f1
/* 807623E8  7C BF 2B 78 */	mr r31, r5
/* 807623EC  FF E0 10 90 */	fmr f31, f2
/* 807623F0  90 83 0A 34 */	stw r4, 0xa34(r3)
/* 807623F4  3C 60 80 76 */	lis r3, stringBase0@ha
/* 807623F8  38 63 4D D4 */	addi r3, r3, stringBase0@l
/* 807623FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80762400  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80762404  3C A5 00 02 */	addis r5, r5, 2
/* 80762408  38 C0 00 80 */	li r6, 0x80
/* 8076240C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80762410  4B 8D 9E DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80762414  7C 64 1B 78 */	mr r4, r3
/* 80762418  80 7E 09 68 */	lwz r3, 0x968(r30)
/* 8076241C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80762420  FC 20 F0 90 */	fmr f1, f30
/* 80762424  FC 40 F8 90 */	fmr f2, f31
/* 80762428  3C C0 80 76 */	lis r6, lit_3789@ha
/* 8076242C  C0 66 4D 10 */	lfs f3, lit_3789@l(r6)
/* 80762430  3C C0 80 76 */	lis r6, lit_3824@ha
/* 80762434  C0 86 4D 40 */	lfs f4, lit_3824@l(r6)
/* 80762438  4B 8A EA 38 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8076243C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80762440  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80762444  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80762448  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8076244C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80762450  83 C1 00 08 */	lwz r30, 8(r1)
/* 80762454  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80762458  7C 08 03 A6 */	mtlr r0
/* 8076245C  38 21 00 30 */	addi r1, r1, 0x30
/* 80762460  4E 80 00 20 */	blr 
