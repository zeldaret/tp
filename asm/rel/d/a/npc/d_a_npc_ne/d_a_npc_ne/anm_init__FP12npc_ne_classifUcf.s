lbl_80A88D14:
/* 80A88D14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A88D18  7C 08 02 A6 */	mflr r0
/* 80A88D1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A88D20  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A88D24  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A88D28  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80A88D2C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80A88D30  39 61 00 20 */	addi r11, r1, 0x20
/* 80A88D34  4B 8D 94 A9 */	bl _savegpr_29
/* 80A88D38  7C 7D 1B 78 */	mr r29, r3
/* 80A88D3C  7C 9E 23 78 */	mr r30, r4
/* 80A88D40  FF C0 08 90 */	fmr f30, f1
/* 80A88D44  7C BF 2B 78 */	mr r31, r5
/* 80A88D48  FF E0 10 90 */	fmr f31, f2
/* 80A88D4C  80 63 05 E4 */	lwz r3, 0x5e4(r3)
/* 80A88D50  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A88D54  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A88D58  3C A5 00 02 */	addis r5, r5, 2
/* 80A88D5C  38 C0 00 80 */	li r6, 0x80
/* 80A88D60  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A88D64  4B 5B 35 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A88D68  7C 64 1B 78 */	mr r4, r3
/* 80A88D6C  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80A88D70  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80A88D74  FC 20 F0 90 */	fmr f1, f30
/* 80A88D78  FC 40 F8 90 */	fmr f2, f31
/* 80A88D7C  3C C0 80 A9 */	lis r6, lit_4018@ha /* 0x80A9242C@ha */
/* 80A88D80  C0 66 24 2C */	lfs f3, lit_4018@l(r6)  /* 0x80A9242C@l */
/* 80A88D84  3C C0 80 A9 */	lis r6, lit_4019@ha /* 0x80A92430@ha */
/* 80A88D88  C0 86 24 30 */	lfs f4, lit_4019@l(r6)  /* 0x80A92430@l */
/* 80A88D8C  38 C0 00 00 */	li r6, 0
/* 80A88D90  4B 58 75 ED */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 80A88D94  93 DD 06 30 */	stw r30, 0x630(r29)
/* 80A88D98  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A88D9C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A88DA0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80A88DA4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80A88DA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A88DAC  4B 8D 94 7D */	bl _restgpr_29
/* 80A88DB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A88DB4  7C 08 03 A6 */	mtlr r0
/* 80A88DB8  38 21 00 40 */	addi r1, r1, 0x40
/* 80A88DBC  4E 80 00 20 */	blr 
