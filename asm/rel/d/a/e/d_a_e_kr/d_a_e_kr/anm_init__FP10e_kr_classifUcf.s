lbl_806FFCD8:
/* 806FFCD8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806FFCDC  7C 08 02 A6 */	mflr r0
/* 806FFCE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806FFCE4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806FFCE8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806FFCEC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806FFCF0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806FFCF4  39 61 00 20 */	addi r11, r1, 0x20
/* 806FFCF8  4B C6 24 E4 */	b _savegpr_29
/* 806FFCFC  7C 7D 1B 78 */	mr r29, r3
/* 806FFD00  7C 9E 23 78 */	mr r30, r4
/* 806FFD04  FF C0 08 90 */	fmr f30, f1
/* 806FFD08  7C BF 2B 78 */	mr r31, r5
/* 806FFD0C  FF E0 10 90 */	fmr f31, f2
/* 806FFD10  3C 60 80 70 */	lis r3, stringBase0@ha
/* 806FFD14  38 63 5C 4C */	addi r3, r3, stringBase0@l
/* 806FFD18  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806FFD1C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806FFD20  3C A5 00 02 */	addis r5, r5, 2
/* 806FFD24  38 C0 00 80 */	li r6, 0x80
/* 806FFD28  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806FFD2C  4B 93 C5 C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806FFD30  7C 64 1B 78 */	mr r4, r3
/* 806FFD34  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806FFD38  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806FFD3C  FC 20 F0 90 */	fmr f1, f30
/* 806FFD40  FC 40 F8 90 */	fmr f2, f31
/* 806FFD44  3C C0 80 70 */	lis r6, lit_3904@ha
/* 806FFD48  C0 66 5A FC */	lfs f3, lit_3904@l(r6)
/* 806FFD4C  3C C0 80 70 */	lis r6, lit_4043@ha
/* 806FFD50  C0 86 5B 24 */	lfs f4, lit_4043@l(r6)
/* 806FFD54  4B 91 11 1C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806FFD58  93 DD 05 B8 */	stw r30, 0x5b8(r29)
/* 806FFD5C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806FFD60  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806FFD64  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806FFD68  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806FFD6C  39 61 00 20 */	addi r11, r1, 0x20
/* 806FFD70  4B C6 24 B8 */	b _restgpr_29
/* 806FFD74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806FFD78  7C 08 03 A6 */	mtlr r0
/* 806FFD7C  38 21 00 40 */	addi r1, r1, 0x40
/* 806FFD80  4E 80 00 20 */	blr 
