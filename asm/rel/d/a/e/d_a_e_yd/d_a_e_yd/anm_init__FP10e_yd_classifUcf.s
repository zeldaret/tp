lbl_807F2E20:
/* 807F2E20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807F2E24  7C 08 02 A6 */	mflr r0
/* 807F2E28  90 01 00 44 */	stw r0, 0x44(r1)
/* 807F2E2C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807F2E30  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807F2E34  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 807F2E38  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 807F2E3C  39 61 00 20 */	addi r11, r1, 0x20
/* 807F2E40  4B B6 F3 9D */	bl _savegpr_29
/* 807F2E44  7C 7D 1B 78 */	mr r29, r3
/* 807F2E48  7C 9E 23 78 */	mr r30, r4
/* 807F2E4C  FF C0 08 90 */	fmr f30, f1
/* 807F2E50  7C BF 2B 78 */	mr r31, r5
/* 807F2E54  FF E0 10 90 */	fmr f31, f2
/* 807F2E58  3C 60 80 7F */	lis r3, d_a_e_yd__stringBase0@ha /* 0x807F7B30@ha */
/* 807F2E5C  38 63 7B 30 */	addi r3, r3, d_a_e_yd__stringBase0@l /* 0x807F7B30@l */
/* 807F2E60  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F2E64  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F2E68  3C A5 00 02 */	addis r5, r5, 2
/* 807F2E6C  38 C0 00 80 */	li r6, 0x80
/* 807F2E70  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807F2E74  4B 84 94 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807F2E78  7C 64 1B 78 */	mr r4, r3
/* 807F2E7C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F2E80  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807F2E84  FC 20 F0 90 */	fmr f1, f30
/* 807F2E88  FC 40 F8 90 */	fmr f2, f31
/* 807F2E8C  3C C0 80 7F */	lis r6, lit_3789@ha /* 0x807F7A04@ha */
/* 807F2E90  C0 66 7A 04 */	lfs f3, lit_3789@l(r6)  /* 0x807F7A04@l */
/* 807F2E94  3C C0 80 7F */	lis r6, lit_3871@ha /* 0x807F7A34@ha */
/* 807F2E98  C0 86 7A 34 */	lfs f4, lit_3871@l(r6)  /* 0x807F7A34@l */
/* 807F2E9C  4B 81 DF D5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807F2EA0  93 DD 06 64 */	stw r30, 0x664(r29)
/* 807F2EA4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807F2EA8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807F2EAC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 807F2EB0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 807F2EB4  39 61 00 20 */	addi r11, r1, 0x20
/* 807F2EB8  4B B6 F3 71 */	bl _restgpr_29
/* 807F2EBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807F2EC0  7C 08 03 A6 */	mtlr r0
/* 807F2EC4  38 21 00 40 */	addi r1, r1, 0x40
/* 807F2EC8  4E 80 00 20 */	blr 
