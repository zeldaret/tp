lbl_8071417C:
/* 8071417C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80714180  7C 08 02 A6 */	mflr r0
/* 80714184  90 01 00 44 */	stw r0, 0x44(r1)
/* 80714188  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8071418C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80714190  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80714194  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80714198  39 61 00 20 */	addi r11, r1, 0x20
/* 8071419C  4B C4 E0 40 */	b _savegpr_29
/* 807141A0  7C 7D 1B 78 */	mr r29, r3
/* 807141A4  7C 9E 23 78 */	mr r30, r4
/* 807141A8  FF C0 08 90 */	fmr f30, f1
/* 807141AC  7C BF 2B 78 */	mr r31, r5
/* 807141B0  FF E0 10 90 */	fmr f31, f2
/* 807141B4  3C 60 80 72 */	lis r3, stringBase0@ha
/* 807141B8  38 63 C7 E8 */	addi r3, r3, stringBase0@l
/* 807141BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807141C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807141C4  3C A5 00 02 */	addis r5, r5, 2
/* 807141C8  38 C0 00 80 */	li r6, 0x80
/* 807141CC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807141D0  4B 92 81 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807141D4  7C 64 1B 78 */	mr r4, r3
/* 807141D8  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 807141DC  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807141E0  FC 20 F0 90 */	fmr f1, f30
/* 807141E4  FC 40 F8 90 */	fmr f2, f31
/* 807141E8  3C C0 80 72 */	lis r6, lit_3780@ha
/* 807141EC  C0 66 C5 50 */	lfs f3, lit_3780@l(r6)
/* 807141F0  3C C0 80 72 */	lis r6, lit_3794@ha
/* 807141F4  C0 86 C5 54 */	lfs f4, lit_3794@l(r6)
/* 807141F8  4B 8F CC 78 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807141FC  93 DD 05 CC */	stw r30, 0x5cc(r29)
/* 80714200  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80714204  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80714208  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8071420C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80714210  39 61 00 20 */	addi r11, r1, 0x20
/* 80714214  4B C4 E0 14 */	b _restgpr_29
/* 80714218  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8071421C  7C 08 03 A6 */	mtlr r0
/* 80714220  38 21 00 40 */	addi r1, r1, 0x40
/* 80714224  4E 80 00 20 */	blr 
