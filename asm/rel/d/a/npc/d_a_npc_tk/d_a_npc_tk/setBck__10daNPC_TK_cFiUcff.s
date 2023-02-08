lbl_80B01498:
/* 80B01498  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B0149C  7C 08 02 A6 */	mflr r0
/* 80B014A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B014A4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B014A8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B014AC  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80B014B0  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80B014B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B014B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B014BC  7C 7E 1B 78 */	mr r30, r3
/* 80B014C0  7C BF 2B 78 */	mr r31, r5
/* 80B014C4  FF C0 08 90 */	fmr f30, f1
/* 80B014C8  FF E0 10 90 */	fmr f31, f2
/* 80B014CC  3C 60 80 B1 */	lis r3, d_a_npc_tk__stringBase0@ha /* 0x80B0C3A0@ha */
/* 80B014D0  38 63 C3 A0 */	addi r3, r3, d_a_npc_tk__stringBase0@l /* 0x80B0C3A0@l */
/* 80B014D4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B014D8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B014DC  3C A5 00 02 */	addis r5, r5, 2
/* 80B014E0  38 C0 00 80 */	li r6, 0x80
/* 80B014E4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B014E8  4B 53 AE 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B014EC  7C 64 1B 78 */	mr r4, r3
/* 80B014F0  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80B014F4  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80B014F8  FC 20 F0 90 */	fmr f1, f30
/* 80B014FC  FC 40 F8 90 */	fmr f2, f31
/* 80B01500  3C C0 80 B1 */	lis r6, lit_4024@ha /* 0x80B0C1F4@ha */
/* 80B01504  C0 66 C1 F4 */	lfs f3, lit_4024@l(r6)  /* 0x80B0C1F4@l */
/* 80B01508  3C C0 80 B1 */	lis r6, lit_4025@ha /* 0x80B0C1F8@ha */
/* 80B0150C  C0 86 C1 F8 */	lfs f4, lit_4025@l(r6)  /* 0x80B0C1F8@l */
/* 80B01510  4B 50 F9 61 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80B01514  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B01518  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B0151C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80B01520  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80B01524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B01528  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B0152C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B01530  7C 08 03 A6 */	mtlr r0
/* 80B01534  38 21 00 30 */	addi r1, r1, 0x30
/* 80B01538  4E 80 00 20 */	blr 
