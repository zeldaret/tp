lbl_80679350:
/* 80679350  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80679354  7C 08 02 A6 */	mflr r0
/* 80679358  90 01 00 44 */	stw r0, 0x44(r1)
/* 8067935C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80679360  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80679364  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80679368  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8067936C  39 61 00 20 */	addi r11, r1, 0x20
/* 80679370  4B CE 8E 6C */	b _savegpr_29
/* 80679374  7C 7D 1B 78 */	mr r29, r3
/* 80679378  7C 9E 23 78 */	mr r30, r4
/* 8067937C  FF C0 08 90 */	fmr f30, f1
/* 80679380  7C BF 2B 78 */	mr r31, r5
/* 80679384  FF E0 10 90 */	fmr f31, f2
/* 80679388  3C 60 80 68 */	lis r3, stringBase0@ha
/* 8067938C  38 63 C5 38 */	addi r3, r3, stringBase0@l
/* 80679390  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80679394  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80679398  3C A5 00 02 */	addis r5, r5, 2
/* 8067939C  38 C0 00 80 */	li r6, 0x80
/* 806793A0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806793A4  4B 9C 2F 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806793A8  7C 64 1B 78 */	mr r4, r3
/* 806793AC  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806793B0  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806793B4  FC 20 F0 90 */	fmr f1, f30
/* 806793B8  FC 40 F8 90 */	fmr f2, f31
/* 806793BC  3C C0 80 68 */	lis r6, lit_3790@ha
/* 806793C0  C0 66 C4 00 */	lfs f3, lit_3790@l(r6)
/* 806793C4  3C C0 80 68 */	lis r6, lit_3854@ha
/* 806793C8  C0 86 C4 BC */	lfs f4, lit_3854@l(r6)
/* 806793CC  4B 99 7A A4 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806793D0  93 DD 06 84 */	stw r30, 0x684(r29)
/* 806793D4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806793D8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806793DC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806793E0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806793E4  39 61 00 20 */	addi r11, r1, 0x20
/* 806793E8  4B CE 8E 40 */	b _restgpr_29
/* 806793EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806793F0  7C 08 03 A6 */	mtlr r0
/* 806793F4  38 21 00 40 */	addi r1, r1, 0x40
/* 806793F8  4E 80 00 20 */	blr 
