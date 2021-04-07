lbl_80667DA8:
/* 80667DA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80667DAC  7C 08 02 A6 */	mflr r0
/* 80667DB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80667DB4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80667DB8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80667DBC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80667DC0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80667DC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80667DC8  4B CF A4 11 */	bl _savegpr_28
/* 80667DCC  7C 7C 1B 78 */	mr r28, r3
/* 80667DD0  7C 9D 23 78 */	mr r29, r4
/* 80667DD4  FF C0 08 90 */	fmr f30, f1
/* 80667DD8  7C BE 2B 78 */	mr r30, r5
/* 80667DDC  FF E0 10 90 */	fmr f31, f2
/* 80667DE0  3C 60 80 67 */	lis r3, lit_3662@ha /* 0x8066EDE8@ha */
/* 80667DE4  3B E3 ED E8 */	addi r31, r3, lit_3662@l /* 0x8066EDE8@l */
/* 80667DE8  C0 3C 06 08 */	lfs f1, 0x608(r28)
/* 80667DEC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80667DF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80667DF4  41 81 00 4C */	bgt lbl_80667E40
/* 80667DF8  3C 60 80 67 */	lis r3, d_a_do__stringBase0@ha /* 0x8066EFB0@ha */
/* 80667DFC  38 63 EF B0 */	addi r3, r3, d_a_do__stringBase0@l /* 0x8066EFB0@l */
/* 80667E00  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80667E04  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80667E08  3C A5 00 02 */	addis r5, r5, 2
/* 80667E0C  38 C0 00 80 */	li r6, 0x80
/* 80667E10  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80667E14  4B 9D 44 D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80667E18  7C 64 1B 78 */	mr r4, r3
/* 80667E1C  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80667E20  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 80667E24  FC 20 F0 90 */	fmr f1, f30
/* 80667E28  FC 40 F8 90 */	fmr f2, f31
/* 80667E2C  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80667E30  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 80667E34  38 C0 00 00 */	li r6, 0
/* 80667E38  4B 9A 85 45 */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 80667E3C  93 BC 05 E4 */	stw r29, 0x5e4(r28)
lbl_80667E40:
/* 80667E40  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80667E44  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80667E48  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80667E4C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80667E50  39 61 00 20 */	addi r11, r1, 0x20
/* 80667E54  4B CF A3 D1 */	bl _restgpr_28
/* 80667E58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80667E5C  7C 08 03 A6 */	mtlr r0
/* 80667E60  38 21 00 40 */	addi r1, r1, 0x40
/* 80667E64  4E 80 00 20 */	blr 
