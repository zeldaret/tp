lbl_80B10E20:
/* 80B10E20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B10E24  7C 08 02 A6 */	mflr r0
/* 80B10E28  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B10E2C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B10E30  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B10E34  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80B10E38  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80B10E3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B10E40  4B 85 13 9C */	b _savegpr_29
/* 80B10E44  7C 7D 1B 78 */	mr r29, r3
/* 80B10E48  7C 9E 23 78 */	mr r30, r4
/* 80B10E4C  FF C0 08 90 */	fmr f30, f1
/* 80B10E50  7C BF 2B 78 */	mr r31, r5
/* 80B10E54  FF E0 10 90 */	fmr f31, f2
/* 80B10E58  3C 60 80 B1 */	lis r3, stringBase0@ha
/* 80B10E5C  38 63 43 AC */	addi r3, r3, stringBase0@l
/* 80B10E60  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B10E64  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B10E68  3C A5 00 02 */	addis r5, r5, 2
/* 80B10E6C  38 C0 00 80 */	li r6, 0x80
/* 80B10E70  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B10E74  4B 52 B4 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B10E78  7C 64 1B 78 */	mr r4, r3
/* 80B10E7C  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B10E80  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80B10E84  FC 20 F0 90 */	fmr f1, f30
/* 80B10E88  FC 40 F8 90 */	fmr f2, f31
/* 80B10E8C  3C C0 80 B1 */	lis r6, lit_3663@ha
/* 80B10E90  C0 66 42 E4 */	lfs f3, lit_3663@l(r6)
/* 80B10E94  3C C0 80 B1 */	lis r6, lit_3664@ha
/* 80B10E98  C0 86 42 E8 */	lfs f4, lit_3664@l(r6)
/* 80B10E9C  4B 4F FF D4 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80B10EA0  93 DD 05 F4 */	stw r30, 0x5f4(r29)
/* 80B10EA4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B10EA8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B10EAC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80B10EB0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80B10EB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B10EB8  4B 85 13 70 */	b _restgpr_29
/* 80B10EBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B10EC0  7C 08 03 A6 */	mtlr r0
/* 80B10EC4  38 21 00 40 */	addi r1, r1, 0x40
/* 80B10EC8  4E 80 00 20 */	blr 
