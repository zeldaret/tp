lbl_805DEF64:
/* 805DEF64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805DEF68  7C 08 02 A6 */	mflr r0
/* 805DEF6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805DEF70  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805DEF74  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805DEF78  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805DEF7C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805DEF80  39 61 00 20 */	addi r11, r1, 0x20
/* 805DEF84  4B D8 32 58 */	b _savegpr_29
/* 805DEF88  7C 7D 1B 78 */	mr r29, r3
/* 805DEF8C  7C 9E 23 78 */	mr r30, r4
/* 805DEF90  7C BF 2B 78 */	mr r31, r5
/* 805DEF94  FF C0 08 90 */	fmr f30, f1
/* 805DEF98  FF E0 10 90 */	fmr f31, f2
/* 805DEF9C  3C 60 80 5F */	lis r3, stringBase0@ha
/* 805DEFA0  38 63 D3 D4 */	addi r3, r3, stringBase0@l
/* 805DEFA4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805DEFA8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805DEFAC  3C A5 00 02 */	addis r5, r5, 2
/* 805DEFB0  38 C0 00 80 */	li r6, 0x80
/* 805DEFB4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805DEFB8  4B A5 D3 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DEFBC  7C 64 1B 78 */	mr r4, r3
/* 805DEFC0  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805DEFC4  7F E5 FB 78 */	mr r5, r31
/* 805DEFC8  FC 20 F0 90 */	fmr f1, f30
/* 805DEFCC  FC 40 F8 90 */	fmr f2, f31
/* 805DEFD0  3C C0 80 5F */	lis r6, lit_3912@ha
/* 805DEFD4  C0 66 D0 64 */	lfs f3, lit_3912@l(r6)
/* 805DEFD8  3C C0 80 5F */	lis r6, lit_4220@ha
/* 805DEFDC  C0 86 D1 C0 */	lfs f4, lit_4220@l(r6)
/* 805DEFE0  4B A3 1E 90 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805DEFE4  93 DD 05 D4 */	stw r30, 0x5d4(r29)
/* 805DEFE8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805DEFEC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805DEFF0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805DEFF4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805DEFF8  39 61 00 20 */	addi r11, r1, 0x20
/* 805DEFFC  4B D8 32 2C */	b _restgpr_29
/* 805DF000  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805DF004  7C 08 03 A6 */	mtlr r0
/* 805DF008  38 21 00 40 */	addi r1, r1, 0x40
/* 805DF00C  4E 80 00 20 */	blr 
