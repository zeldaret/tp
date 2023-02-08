lbl_807F2ECC:
/* 807F2ECC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807F2ED0  7C 08 02 A6 */	mflr r0
/* 807F2ED4  90 01 00 44 */	stw r0, 0x44(r1)
/* 807F2ED8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807F2EDC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807F2EE0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 807F2EE4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 807F2EE8  39 61 00 20 */	addi r11, r1, 0x20
/* 807F2EEC  4B B6 F2 F1 */	bl _savegpr_29
/* 807F2EF0  7C 9D 23 78 */	mr r29, r4
/* 807F2EF4  FF C0 08 90 */	fmr f30, f1
/* 807F2EF8  7C BE 2B 78 */	mr r30, r5
/* 807F2EFC  FF E0 10 90 */	fmr f31, f2
/* 807F2F00  80 03 12 30 */	lwz r0, 0x1230(r3)
/* 807F2F04  90 01 00 08 */	stw r0, 8(r1)
/* 807F2F08  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807F2F0C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807F2F10  38 81 00 08 */	addi r4, r1, 8
/* 807F2F14  4B 82 68 E5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807F2F18  7C 7F 1B 79 */	or. r31, r3, r3
/* 807F2F1C  41 82 00 5C */	beq lbl_807F2F78
/* 807F2F20  3C 60 80 7F */	lis r3, d_a_e_yd__stringBase0@ha /* 0x807F7B30@ha */
/* 807F2F24  38 63 7B 30 */	addi r3, r3, d_a_e_yd__stringBase0@l /* 0x807F7B30@l */
/* 807F2F28  7F A4 EB 78 */	mr r4, r29
/* 807F2F2C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F2F30  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F2F34  3C A5 00 02 */	addis r5, r5, 2
/* 807F2F38  38 C0 00 80 */	li r6, 0x80
/* 807F2F3C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807F2F40  4B 84 93 AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807F2F44  7C 64 1B 78 */	mr r4, r3
/* 807F2F48  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807F2F4C  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 807F2F50  FC 20 F0 90 */	fmr f1, f30
/* 807F2F54  FC 40 F8 90 */	fmr f2, f31
/* 807F2F58  3C C0 80 7F */	lis r6, lit_3789@ha /* 0x807F7A04@ha */
/* 807F2F5C  C0 66 7A 04 */	lfs f3, lit_3789@l(r6)  /* 0x807F7A04@l */
/* 807F2F60  3C C0 80 7F */	lis r6, lit_3871@ha /* 0x807F7A34@ha */
/* 807F2F64  C0 86 7A 34 */	lfs f4, lit_3871@l(r6)  /* 0x807F7A34@l */
/* 807F2F68  38 C0 00 00 */	li r6, 0
/* 807F2F6C  4B 81 D4 11 */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 807F2F70  38 60 00 01 */	li r3, 1
/* 807F2F74  48 00 00 08 */	b lbl_807F2F7C
lbl_807F2F78:
/* 807F2F78  38 60 00 00 */	li r3, 0
lbl_807F2F7C:
/* 807F2F7C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807F2F80  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807F2F84  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 807F2F88  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 807F2F8C  39 61 00 20 */	addi r11, r1, 0x20
/* 807F2F90  4B B6 F2 99 */	bl _restgpr_29
/* 807F2F94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807F2F98  7C 08 03 A6 */	mtlr r0
/* 807F2F9C  38 21 00 40 */	addi r1, r1, 0x40
/* 807F2FA0  4E 80 00 20 */	blr 
