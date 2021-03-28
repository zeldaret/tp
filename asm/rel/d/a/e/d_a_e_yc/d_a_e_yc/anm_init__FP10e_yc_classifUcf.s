lbl_807EFEF0:
/* 807EFEF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807EFEF4  7C 08 02 A6 */	mflr r0
/* 807EFEF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 807EFEFC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807EFF00  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807EFF04  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 807EFF08  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 807EFF0C  39 61 00 20 */	addi r11, r1, 0x20
/* 807EFF10  4B B7 22 CC */	b _savegpr_29
/* 807EFF14  7C 7D 1B 78 */	mr r29, r3
/* 807EFF18  7C 9E 23 78 */	mr r30, r4
/* 807EFF1C  FF C0 08 90 */	fmr f30, f1
/* 807EFF20  7C BF 2B 78 */	mr r31, r5
/* 807EFF24  FF E0 10 90 */	fmr f31, f2
/* 807EFF28  3C 60 80 7F */	lis r3, stringBase0@ha
/* 807EFF2C  38 63 29 4C */	addi r3, r3, stringBase0@l
/* 807EFF30  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807EFF34  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807EFF38  3C A5 00 02 */	addis r5, r5, 2
/* 807EFF3C  38 C0 00 80 */	li r6, 0x80
/* 807EFF40  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807EFF44  4B 84 C3 A8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807EFF48  7C 64 1B 78 */	mr r4, r3
/* 807EFF4C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807EFF50  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807EFF54  FC 20 F0 90 */	fmr f1, f30
/* 807EFF58  FC 40 F8 90 */	fmr f2, f31
/* 807EFF5C  3C C0 80 7F */	lis r6, lit_3729@ha
/* 807EFF60  C0 66 28 68 */	lfs f3, lit_3729@l(r6)
/* 807EFF64  3C C0 80 7F */	lis r6, lit_3730@ha
/* 807EFF68  C0 86 28 6C */	lfs f4, lit_3730@l(r6)
/* 807EFF6C  4B 82 0F 04 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807EFF70  93 DD 06 60 */	stw r30, 0x660(r29)
/* 807EFF74  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807EFF78  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807EFF7C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 807EFF80  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 807EFF84  39 61 00 20 */	addi r11, r1, 0x20
/* 807EFF88  4B B7 22 A0 */	b _restgpr_29
/* 807EFF8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807EFF90  7C 08 03 A6 */	mtlr r0
/* 807EFF94  38 21 00 40 */	addi r1, r1, 0x40
/* 807EFF98  4E 80 00 20 */	blr 
