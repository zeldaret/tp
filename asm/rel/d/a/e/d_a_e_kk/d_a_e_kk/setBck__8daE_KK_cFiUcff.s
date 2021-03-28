lbl_806FAA68:
/* 806FAA68  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806FAA6C  7C 08 02 A6 */	mflr r0
/* 806FAA70  90 01 00 44 */	stw r0, 0x44(r1)
/* 806FAA74  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806FAA78  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806FAA7C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806FAA80  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806FAA84  39 61 00 20 */	addi r11, r1, 0x20
/* 806FAA88  4B C6 77 54 */	b _savegpr_29
/* 806FAA8C  7C 7D 1B 78 */	mr r29, r3
/* 806FAA90  7C 9E 23 78 */	mr r30, r4
/* 806FAA94  7C BF 2B 78 */	mr r31, r5
/* 806FAA98  FF C0 08 90 */	fmr f30, f1
/* 806FAA9C  FF E0 10 90 */	fmr f31, f2
/* 806FAAA0  3C 60 80 70 */	lis r3, stringBase0@ha
/* 806FAAA4  38 63 F6 B8 */	addi r3, r3, stringBase0@l
/* 806FAAA8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806FAAAC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806FAAB0  3C A5 00 02 */	addis r5, r5, 2
/* 806FAAB4  38 C0 00 80 */	li r6, 0x80
/* 806FAAB8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806FAABC  4B 94 18 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806FAAC0  7C 64 1B 78 */	mr r4, r3
/* 806FAAC4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806FAAC8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806FAACC  FC 20 F0 90 */	fmr f1, f30
/* 806FAAD0  FC 40 F8 90 */	fmr f2, f31
/* 806FAAD4  3C C0 80 70 */	lis r6, lit_3793@ha
/* 806FAAD8  C0 66 F5 EC */	lfs f3, lit_3793@l(r6)
/* 806FAADC  3C C0 80 70 */	lis r6, lit_3931@ha
/* 806FAAE0  C0 86 F6 28 */	lfs f4, lit_3931@l(r6)
/* 806FAAE4  4B 91 63 8C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806FAAE8  93 DD 07 64 */	stw r30, 0x764(r29)
/* 806FAAEC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806FAAF0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806FAAF4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806FAAF8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806FAAFC  39 61 00 20 */	addi r11, r1, 0x20
/* 806FAB00  4B C6 77 28 */	b _restgpr_29
/* 806FAB04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806FAB08  7C 08 03 A6 */	mtlr r0
/* 806FAB0C  38 21 00 40 */	addi r1, r1, 0x40
/* 806FAB10  4E 80 00 20 */	blr 
