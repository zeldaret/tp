lbl_807F8394:
/* 807F8394  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807F8398  7C 08 02 A6 */	mflr r0
/* 807F839C  90 01 00 44 */	stw r0, 0x44(r1)
/* 807F83A0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807F83A4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807F83A8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 807F83AC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 807F83B0  39 61 00 20 */	addi r11, r1, 0x20
/* 807F83B4  4B B6 9E 28 */	b _savegpr_29
/* 807F83B8  7C 7D 1B 78 */	mr r29, r3
/* 807F83BC  7C 9E 23 78 */	mr r30, r4
/* 807F83C0  FF C0 08 90 */	fmr f30, f1
/* 807F83C4  7C BF 2B 78 */	mr r31, r5
/* 807F83C8  FF E0 10 90 */	fmr f31, f2
/* 807F83CC  3C 60 80 80 */	lis r3, stringBase0@ha
/* 807F83D0  38 63 CD F0 */	addi r3, r3, stringBase0@l
/* 807F83D4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807F83D8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807F83DC  3C A5 00 02 */	addis r5, r5, 2
/* 807F83E0  38 C0 00 80 */	li r6, 0x80
/* 807F83E4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807F83E8  4B 84 3F 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807F83EC  7C 64 1B 78 */	mr r4, r3
/* 807F83F0  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807F83F4  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807F83F8  FC 20 F0 90 */	fmr f1, f30
/* 807F83FC  FC 40 F8 90 */	fmr f2, f31
/* 807F8400  3C C0 80 80 */	lis r6, lit_3802@ha
/* 807F8404  C0 66 CC B8 */	lfs f3, lit_3802@l(r6)
/* 807F8408  3C C0 80 80 */	lis r6, lit_3839@ha
/* 807F840C  C0 86 CC F0 */	lfs f4, lit_3839@l(r6)
/* 807F8410  4B 81 8A 60 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807F8414  93 DD 05 D0 */	stw r30, 0x5d0(r29)
/* 807F8418  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807F841C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807F8420  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 807F8424  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 807F8428  39 61 00 20 */	addi r11, r1, 0x20
/* 807F842C  4B B6 9D FC */	b _restgpr_29
/* 807F8430  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807F8434  7C 08 03 A6 */	mtlr r0
/* 807F8438  38 21 00 40 */	addi r1, r1, 0x40
/* 807F843C  4E 80 00 20 */	blr 
