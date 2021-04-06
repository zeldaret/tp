lbl_806F0D70:
/* 806F0D70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806F0D74  7C 08 02 A6 */	mflr r0
/* 806F0D78  90 01 00 44 */	stw r0, 0x44(r1)
/* 806F0D7C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806F0D80  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806F0D84  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806F0D88  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806F0D8C  39 61 00 20 */	addi r11, r1, 0x20
/* 806F0D90  4B C7 14 4D */	bl _savegpr_29
/* 806F0D94  7C 7D 1B 78 */	mr r29, r3
/* 806F0D98  7C 9E 23 78 */	mr r30, r4
/* 806F0D9C  FF C0 08 90 */	fmr f30, f1
/* 806F0DA0  7C BF 2B 78 */	mr r31, r5
/* 806F0DA4  FF E0 10 90 */	fmr f31, f2
/* 806F0DA8  3C 60 80 6F */	lis r3, d_a_e_hzelda__stringBase0@ha /* 0x806F5654@ha */
/* 806F0DAC  38 63 56 54 */	addi r3, r3, d_a_e_hzelda__stringBase0@l /* 0x806F5654@l */
/* 806F0DB0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F0DB4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F0DB8  3C A5 00 02 */	addis r5, r5, 2
/* 806F0DBC  38 C0 00 80 */	li r6, 0x80
/* 806F0DC0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806F0DC4  4B 94 B5 29 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F0DC8  7C 64 1B 78 */	mr r4, r3
/* 806F0DCC  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 806F0DD0  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806F0DD4  FC 20 F0 90 */	fmr f1, f30
/* 806F0DD8  FC 40 F8 90 */	fmr f2, f31
/* 806F0DDC  3C C0 80 6F */	lis r6, lit_3781@ha /* 0x806F5518@ha */
/* 806F0DE0  C0 66 55 18 */	lfs f3, lit_3781@l(r6)  /* 0x806F5518@l */
/* 806F0DE4  3C C0 80 6F */	lis r6, lit_3782@ha /* 0x806F551C@ha */
/* 806F0DE8  C0 86 55 1C */	lfs f4, lit_3782@l(r6)  /* 0x806F551C@l */
/* 806F0DEC  4B 92 00 85 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806F0DF0  93 DD 06 84 */	stw r30, 0x684(r29)
/* 806F0DF4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806F0DF8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806F0DFC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806F0E00  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806F0E04  39 61 00 20 */	addi r11, r1, 0x20
/* 806F0E08  4B C7 14 21 */	bl _restgpr_29
/* 806F0E0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806F0E10  7C 08 03 A6 */	mtlr r0
/* 806F0E14  38 21 00 40 */	addi r1, r1, 0x40
/* 806F0E18  4E 80 00 20 */	blr 
