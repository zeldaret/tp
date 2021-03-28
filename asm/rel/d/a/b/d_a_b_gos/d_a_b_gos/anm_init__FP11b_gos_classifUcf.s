lbl_80604370:
/* 80604370  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80604374  7C 08 02 A6 */	mflr r0
/* 80604378  90 01 00 44 */	stw r0, 0x44(r1)
/* 8060437C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80604380  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80604384  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80604388  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8060438C  39 61 00 20 */	addi r11, r1, 0x20
/* 80604390  4B D5 DE 4C */	b _savegpr_29
/* 80604394  7C 7D 1B 78 */	mr r29, r3
/* 80604398  7C 9E 23 78 */	mr r30, r4
/* 8060439C  FF C0 08 90 */	fmr f30, f1
/* 806043A0  7C BF 2B 78 */	mr r31, r5
/* 806043A4  FF E0 10 90 */	fmr f31, f2
/* 806043A8  3C 60 80 60 */	lis r3, stringBase0@ha
/* 806043AC  38 63 54 14 */	addi r3, r3, stringBase0@l
/* 806043B0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806043B4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806043B8  3C A5 00 02 */	addis r5, r5, 2
/* 806043BC  38 C0 00 80 */	li r6, 0x80
/* 806043C0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806043C4  4B A3 7F 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806043C8  7C 64 1B 78 */	mr r4, r3
/* 806043CC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806043D0  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806043D4  FC 20 F0 90 */	fmr f1, f30
/* 806043D8  FC 40 F8 90 */	fmr f2, f31
/* 806043DC  3C C0 80 60 */	lis r6, lit_3676@ha
/* 806043E0  C0 66 53 D8 */	lfs f3, lit_3676@l(r6)
/* 806043E4  3C C0 80 60 */	lis r6, lit_3684@ha
/* 806043E8  C0 86 53 DC */	lfs f4, lit_3684@l(r6)
/* 806043EC  4B A0 CA 84 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806043F0  93 DD 06 5C */	stw r30, 0x65c(r29)
/* 806043F4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806043F8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806043FC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80604400  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80604404  39 61 00 20 */	addi r11, r1, 0x20
/* 80604408  4B D5 DE 20 */	b _restgpr_29
/* 8060440C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80604410  7C 08 03 A6 */	mtlr r0
/* 80604414  38 21 00 40 */	addi r1, r1, 0x40
/* 80604418  4E 80 00 20 */	blr 
