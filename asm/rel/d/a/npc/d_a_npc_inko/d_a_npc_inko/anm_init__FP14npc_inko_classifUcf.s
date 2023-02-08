lbl_80A0CC18:
/* 80A0CC18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A0CC1C  7C 08 02 A6 */	mflr r0
/* 80A0CC20  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A0CC24  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A0CC28  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A0CC2C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80A0CC30  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80A0CC34  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0CC38  4B 95 55 A5 */	bl _savegpr_29
/* 80A0CC3C  7C 7D 1B 78 */	mr r29, r3
/* 80A0CC40  7C 9E 23 78 */	mr r30, r4
/* 80A0CC44  FF C0 08 90 */	fmr f30, f1
/* 80A0CC48  7C BF 2B 78 */	mr r31, r5
/* 80A0CC4C  FF E0 10 90 */	fmr f31, f2
/* 80A0CC50  3C 60 80 A1 */	lis r3, d_a_npc_inko__stringBase0@ha /* 0x80A0E0CC@ha */
/* 80A0CC54  38 63 E0 CC */	addi r3, r3, d_a_npc_inko__stringBase0@l /* 0x80A0E0CC@l */
/* 80A0CC58  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0CC5C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0CC60  3C A5 00 02 */	addis r5, r5, 2
/* 80A0CC64  38 C0 00 80 */	li r6, 0x80
/* 80A0CC68  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A0CC6C  4B 62 F6 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A0CC70  7C 64 1B 78 */	mr r4, r3
/* 80A0CC74  80 7D 05 F0 */	lwz r3, 0x5f0(r29)
/* 80A0CC78  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80A0CC7C  FC 20 F0 90 */	fmr f1, f30
/* 80A0CC80  FC 40 F8 90 */	fmr f2, f31
/* 80A0CC84  3C C0 80 A1 */	lis r6, lit_3849@ha /* 0x80A0E014@ha */
/* 80A0CC88  C0 66 E0 14 */	lfs f3, lit_3849@l(r6)  /* 0x80A0E014@l */
/* 80A0CC8C  3C C0 80 A1 */	lis r6, lit_3850@ha /* 0x80A0E018@ha */
/* 80A0CC90  C0 86 E0 18 */	lfs f4, lit_3850@l(r6)  /* 0x80A0E018@l */
/* 80A0CC94  38 C0 00 00 */	li r6, 0
/* 80A0CC98  4B 60 36 E5 */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 80A0CC9C  93 DD 05 A4 */	stw r30, 0x5a4(r29)
/* 80A0CCA0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A0CCA4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A0CCA8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80A0CCAC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80A0CCB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0CCB4  4B 95 55 75 */	bl _restgpr_29
/* 80A0CCB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A0CCBC  7C 08 03 A6 */	mtlr r0
/* 80A0CCC0  38 21 00 40 */	addi r1, r1, 0x40
/* 80A0CCC4  4E 80 00 20 */	blr 
