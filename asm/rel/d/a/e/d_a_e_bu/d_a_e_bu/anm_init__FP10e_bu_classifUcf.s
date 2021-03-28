lbl_80691250:
/* 80691250  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80691254  7C 08 02 A6 */	mflr r0
/* 80691258  90 01 00 44 */	stw r0, 0x44(r1)
/* 8069125C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80691260  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80691264  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80691268  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8069126C  39 61 00 20 */	addi r11, r1, 0x20
/* 80691270  4B CD 0F 6C */	b _savegpr_29
/* 80691274  7C 7D 1B 78 */	mr r29, r3
/* 80691278  7C 9E 23 78 */	mr r30, r4
/* 8069127C  FF C0 08 90 */	fmr f30, f1
/* 80691280  7C BF 2B 78 */	mr r31, r5
/* 80691284  FF E0 10 90 */	fmr f31, f2
/* 80691288  3C 60 80 69 */	lis r3, stringBase0@ha
/* 8069128C  38 63 47 70 */	addi r3, r3, stringBase0@l
/* 80691290  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80691294  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80691298  3C A5 00 02 */	addis r5, r5, 2
/* 8069129C  38 C0 00 80 */	li r6, 0x80
/* 806912A0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806912A4  4B 9A B0 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806912A8  7C 64 1B 78 */	mr r4, r3
/* 806912AC  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 806912B0  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806912B4  FC 20 F0 90 */	fmr f1, f30
/* 806912B8  FC 40 F8 90 */	fmr f2, f31
/* 806912BC  3C C0 80 69 */	lis r6, lit_3789@ha
/* 806912C0  C0 66 46 94 */	lfs f3, lit_3789@l(r6)
/* 806912C4  3C C0 80 69 */	lis r6, lit_3836@ha
/* 806912C8  C0 86 46 CC */	lfs f4, lit_3836@l(r6)
/* 806912CC  4B 97 FB A4 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806912D0  93 DD 06 68 */	stw r30, 0x668(r29)
/* 806912D4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806912D8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806912DC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806912E0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806912E4  39 61 00 20 */	addi r11, r1, 0x20
/* 806912E8  4B CD 0F 40 */	b _restgpr_29
/* 806912EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806912F0  7C 08 03 A6 */	mtlr r0
/* 806912F4  38 21 00 40 */	addi r1, r1, 0x40
/* 806912F8  4E 80 00 20 */	blr 
