lbl_804D6CA4:
/* 804D6CA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D6CA8  7C 08 02 A6 */	mflr r0
/* 804D6CAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D6CB0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804D6CB4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804D6CB8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804D6CBC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804D6CC0  39 61 00 20 */	addi r11, r1, 0x20
/* 804D6CC4  4B E8 B5 18 */	b _savegpr_29
/* 804D6CC8  7C 7D 1B 78 */	mr r29, r3
/* 804D6CCC  7C 9E 23 78 */	mr r30, r4
/* 804D6CD0  FF C0 08 90 */	fmr f30, f1
/* 804D6CD4  7C BF 2B 78 */	mr r31, r5
/* 804D6CD8  FF E0 10 90 */	fmr f31, f2
/* 804D6CDC  3C 60 80 4E */	lis r3, stringBase0@ha
/* 804D6CE0  38 63 9F 6C */	addi r3, r3, stringBase0@l
/* 804D6CE4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804D6CE8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804D6CEC  3C A5 00 02 */	addis r5, r5, 2
/* 804D6CF0  38 C0 00 80 */	li r6, 0x80
/* 804D6CF4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804D6CF8  4B B6 55 F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804D6CFC  7C 64 1B 78 */	mr r4, r3
/* 804D6D00  80 7D 05 E4 */	lwz r3, 0x5e4(r29)
/* 804D6D04  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 804D6D08  FC 20 F0 90 */	fmr f1, f30
/* 804D6D0C  FC 40 F8 90 */	fmr f2, f31
/* 804D6D10  3C C0 80 4E */	lis r6, lit_3963@ha
/* 804D6D14  C0 66 9E 74 */	lfs f3, lit_3963@l(r6)
/* 804D6D18  3C C0 80 4E */	lis r6, lit_3964@ha
/* 804D6D1C  C0 86 9E 78 */	lfs f4, lit_3964@l(r6)
/* 804D6D20  38 C0 00 00 */	li r6, 0
/* 804D6D24  4B B3 96 58 */	b setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 804D6D28  93 DD 05 F0 */	stw r30, 0x5f0(r29)
/* 804D6D2C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804D6D30  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804D6D34  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804D6D38  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804D6D3C  39 61 00 20 */	addi r11, r1, 0x20
/* 804D6D40  4B E8 B4 E8 */	b _restgpr_29
/* 804D6D44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D6D48  7C 08 03 A6 */	mtlr r0
/* 804D6D4C  38 21 00 40 */	addi r1, r1, 0x40
/* 804D6D50  4E 80 00 20 */	blr 
