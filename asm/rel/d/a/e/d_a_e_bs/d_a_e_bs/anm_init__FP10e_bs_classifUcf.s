lbl_8068E1F4:
/* 8068E1F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8068E1F8  7C 08 02 A6 */	mflr r0
/* 8068E1FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8068E200  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8068E204  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8068E208  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8068E20C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8068E210  39 61 00 20 */	addi r11, r1, 0x20
/* 8068E214  4B CD 3F C8 */	b _savegpr_29
/* 8068E218  7C 7D 1B 78 */	mr r29, r3
/* 8068E21C  7C 9E 23 78 */	mr r30, r4
/* 8068E220  FF C0 08 90 */	fmr f30, f1
/* 8068E224  7C BF 2B 78 */	mr r31, r5
/* 8068E228  FF E0 10 90 */	fmr f31, f2
/* 8068E22C  3C 60 80 69 */	lis r3, stringBase0@ha
/* 8068E230  38 63 0E B8 */	addi r3, r3, stringBase0@l
/* 8068E234  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8068E238  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8068E23C  3C A5 00 02 */	addis r5, r5, 2
/* 8068E240  38 C0 00 80 */	li r6, 0x80
/* 8068E244  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8068E248  4B 9A E0 A4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8068E24C  7C 64 1B 78 */	mr r4, r3
/* 8068E250  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 8068E254  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8068E258  FC 20 F0 90 */	fmr f1, f30
/* 8068E25C  FC 40 F8 90 */	fmr f2, f31
/* 8068E260  3C C0 80 69 */	lis r6, lit_3789@ha
/* 8068E264  C0 66 0D DC */	lfs f3, lit_3789@l(r6)
/* 8068E268  3C C0 80 69 */	lis r6, lit_3827@ha
/* 8068E26C  C0 86 0E 18 */	lfs f4, lit_3827@l(r6)
/* 8068E270  4B 98 2C 00 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8068E274  93 DD 05 D0 */	stw r30, 0x5d0(r29)
/* 8068E278  2C 1E 00 07 */	cmpwi r30, 7
/* 8068E27C  41 82 00 14 */	beq lbl_8068E290
/* 8068E280  2C 1E 00 04 */	cmpwi r30, 4
/* 8068E284  41 82 00 0C */	beq lbl_8068E290
/* 8068E288  2C 1E 00 09 */	cmpwi r30, 9
/* 8068E28C  40 82 00 14 */	bne lbl_8068E2A0
lbl_8068E290:
/* 8068E290  7F A3 EB 78 */	mr r3, r29
/* 8068E294  38 80 00 0A */	li r4, 0xa
/* 8068E298  4B FF FE E1 */	bl wepon_anm_init__FP10e_bs_classi
/* 8068E29C  48 00 00 10 */	b lbl_8068E2AC
lbl_8068E2A0:
/* 8068E2A0  7F A3 EB 78 */	mr r3, r29
/* 8068E2A4  38 80 00 0B */	li r4, 0xb
/* 8068E2A8  4B FF FE D1 */	bl wepon_anm_init__FP10e_bs_classi
lbl_8068E2AC:
/* 8068E2AC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8068E2B0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8068E2B4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8068E2B8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8068E2BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8068E2C0  4B CD 3F 68 */	b _restgpr_29
/* 8068E2C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8068E2C8  7C 08 03 A6 */	mtlr r0
/* 8068E2CC  38 21 00 40 */	addi r1, r1, 0x40
/* 8068E2D0  4E 80 00 20 */	blr 
