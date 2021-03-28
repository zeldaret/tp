lbl_807B04A4:
/* 807B04A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807B04A8  7C 08 02 A6 */	mflr r0
/* 807B04AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 807B04B0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807B04B4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807B04B8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 807B04BC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 807B04C0  39 61 00 20 */	addi r11, r1, 0x20
/* 807B04C4  4B BB 1D 18 */	b _savegpr_29
/* 807B04C8  7C 7D 1B 78 */	mr r29, r3
/* 807B04CC  7C 9E 23 78 */	mr r30, r4
/* 807B04D0  FF C0 08 90 */	fmr f30, f1
/* 807B04D4  7C BF 2B 78 */	mr r31, r5
/* 807B04D8  FF E0 10 90 */	fmr f31, f2
/* 807B04DC  3C 60 80 7B */	lis r3, stringBase0@ha
/* 807B04E0  38 63 46 44 */	addi r3, r3, stringBase0@l
/* 807B04E4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807B04E8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807B04EC  3C A5 00 02 */	addis r5, r5, 2
/* 807B04F0  38 C0 00 80 */	li r6, 0x80
/* 807B04F4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807B04F8  4B 88 BD F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807B04FC  7C 64 1B 78 */	mr r4, r3
/* 807B0500  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B0504  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807B0508  FC 20 F0 90 */	fmr f1, f30
/* 807B050C  FC 40 F8 90 */	fmr f2, f31
/* 807B0510  3C C0 80 7B */	lis r6, lit_3907@ha
/* 807B0514  C0 66 44 A0 */	lfs f3, lit_3907@l(r6)
/* 807B0518  3C C0 80 7B */	lis r6, lit_3970@ha
/* 807B051C  C0 86 44 D8 */	lfs f4, lit_3970@l(r6)
/* 807B0520  4B 86 09 50 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807B0524  93 DD 05 D0 */	stw r30, 0x5d0(r29)
/* 807B0528  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807B052C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807B0530  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 807B0534  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 807B0538  39 61 00 20 */	addi r11, r1, 0x20
/* 807B053C  4B BB 1C EC */	b _restgpr_29
/* 807B0540  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807B0544  7C 08 03 A6 */	mtlr r0
/* 807B0548  38 21 00 40 */	addi r1, r1, 0x40
/* 807B054C  4E 80 00 20 */	blr 
