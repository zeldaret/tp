lbl_80781A4C:
/* 80781A4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80781A50  7C 08 02 A6 */	mflr r0
/* 80781A54  90 01 00 44 */	stw r0, 0x44(r1)
/* 80781A58  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80781A5C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80781A60  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80781A64  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80781A68  39 61 00 20 */	addi r11, r1, 0x20
/* 80781A6C  4B BE 07 71 */	bl _savegpr_29
/* 80781A70  7C 7D 1B 78 */	mr r29, r3
/* 80781A74  7C 9E 23 78 */	mr r30, r4
/* 80781A78  7C BF 2B 78 */	mr r31, r5
/* 80781A7C  FF C0 08 90 */	fmr f30, f1
/* 80781A80  FF E0 10 90 */	fmr f31, f2
/* 80781A84  3C 60 80 78 */	lis r3, d_a_e_sb__stringBase0@ha /* 0x80784E64@ha */
/* 80781A88  38 63 4E 64 */	addi r3, r3, d_a_e_sb__stringBase0@l /* 0x80784E64@l */
/* 80781A8C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80781A90  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80781A94  3C A5 00 02 */	addis r5, r5, 2
/* 80781A98  38 C0 00 80 */	li r6, 0x80
/* 80781A9C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80781AA0  4B 8B A8 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80781AA4  7C 64 1B 78 */	mr r4, r3
/* 80781AA8  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 80781AAC  7F E5 FB 78 */	mr r5, r31
/* 80781AB0  FC 20 F0 90 */	fmr f1, f30
/* 80781AB4  FC 40 F8 90 */	fmr f2, f31
/* 80781AB8  3C C0 80 78 */	lis r6, lit_3758@ha /* 0x80784DD8@ha */
/* 80781ABC  C0 66 4D D8 */	lfs f3, lit_3758@l(r6)  /* 0x80784DD8@l */
/* 80781AC0  3C C0 80 78 */	lis r6, lit_3759@ha /* 0x80784DDC@ha */
/* 80781AC4  C0 86 4D DC */	lfs f4, lit_3759@l(r6)  /* 0x80784DDC@l */
/* 80781AC8  4B 88 F3 A9 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80781ACC  93 DD 06 08 */	stw r30, 0x608(r29)
/* 80781AD0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80781AD4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80781AD8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80781ADC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80781AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80781AE4  4B BE 07 45 */	bl _restgpr_29
/* 80781AE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80781AEC  7C 08 03 A6 */	mtlr r0
/* 80781AF0  38 21 00 40 */	addi r1, r1, 0x40
/* 80781AF4  4E 80 00 20 */	blr 
