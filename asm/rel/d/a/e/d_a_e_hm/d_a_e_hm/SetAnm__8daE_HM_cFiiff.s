lbl_806E0E8C:
/* 806E0E8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E0E90  7C 08 02 A6 */	mflr r0
/* 806E0E94  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E0E98  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806E0E9C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806E0EA0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806E0EA4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806E0EA8  39 61 00 20 */	addi r11, r1, 0x20
/* 806E0EAC  4B C8 13 31 */	bl _savegpr_29
/* 806E0EB0  7C 7D 1B 78 */	mr r29, r3
/* 806E0EB4  7C 9E 23 78 */	mr r30, r4
/* 806E0EB8  7C BF 2B 78 */	mr r31, r5
/* 806E0EBC  FF C0 08 90 */	fmr f30, f1
/* 806E0EC0  FF E0 10 90 */	fmr f31, f2
/* 806E0EC4  3C 60 80 6E */	lis r3, d_a_e_hm__stringBase0@ha /* 0x806E5A74@ha */
/* 806E0EC8  38 63 5A 74 */	addi r3, r3, d_a_e_hm__stringBase0@l /* 0x806E5A74@l */
/* 806E0ECC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E0ED0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E0ED4  3C A5 00 02 */	addis r5, r5, 2
/* 806E0ED8  38 C0 00 80 */	li r6, 0x80
/* 806E0EDC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806E0EE0  4B 95 B4 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E0EE4  7C 64 1B 78 */	mr r4, r3
/* 806E0EE8  80 7D 06 18 */	lwz r3, 0x618(r29)
/* 806E0EEC  7F E5 FB 78 */	mr r5, r31
/* 806E0EF0  FC 20 F0 90 */	fmr f1, f30
/* 806E0EF4  FC 40 F8 90 */	fmr f2, f31
/* 806E0EF8  3C C0 80 6E */	lis r6, lit_3792@ha /* 0x806E5924@ha */
/* 806E0EFC  C0 66 59 24 */	lfs f3, lit_3792@l(r6)  /* 0x806E5924@l */
/* 806E0F00  3C C0 80 6E */	lis r6, lit_4079@ha /* 0x806E59D0@ha */
/* 806E0F04  C0 86 59 D0 */	lfs f4, lit_4079@l(r6)  /* 0x806E59D0@l */
/* 806E0F08  4B 92 FF 69 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806E0F0C  93 DD 06 1C */	stw r30, 0x61c(r29)
/* 806E0F10  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806E0F14  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806E0F18  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806E0F1C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806E0F20  39 61 00 20 */	addi r11, r1, 0x20
/* 806E0F24  4B C8 13 05 */	bl _restgpr_29
/* 806E0F28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E0F2C  7C 08 03 A6 */	mtlr r0
/* 806E0F30  38 21 00 40 */	addi r1, r1, 0x40
/* 806E0F34  4E 80 00 20 */	blr 
