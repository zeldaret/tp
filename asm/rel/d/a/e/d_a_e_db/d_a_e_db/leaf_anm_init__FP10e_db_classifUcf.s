lbl_8069ABE0:
/* 8069ABE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8069ABE4  7C 08 02 A6 */	mflr r0
/* 8069ABE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8069ABEC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8069ABF0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8069ABF4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8069ABF8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8069ABFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8069AC00  4B CC 75 DD */	bl _savegpr_29
/* 8069AC04  7C 9D 23 78 */	mr r29, r4
/* 8069AC08  FF C0 08 90 */	fmr f30, f1
/* 8069AC0C  7C BE 2B 78 */	mr r30, r5
/* 8069AC10  FF E0 10 90 */	fmr f31, f2
/* 8069AC14  80 03 12 34 */	lwz r0, 0x1234(r3)
/* 8069AC18  90 01 00 08 */	stw r0, 8(r1)
/* 8069AC1C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8069AC20  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8069AC24  38 81 00 08 */	addi r4, r1, 8
/* 8069AC28  4B 97 EB D1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8069AC2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8069AC30  41 82 00 5C */	beq lbl_8069AC8C
/* 8069AC34  3C 60 80 6A */	lis r3, d_a_e_db__stringBase0@ha /* 0x806A1A6C@ha */
/* 8069AC38  38 63 1A 6C */	addi r3, r3, d_a_e_db__stringBase0@l /* 0x806A1A6C@l */
/* 8069AC3C  7F A4 EB 78 */	mr r4, r29
/* 8069AC40  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069AC44  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069AC48  3C A5 00 02 */	addis r5, r5, 2
/* 8069AC4C  38 C0 00 80 */	li r6, 0x80
/* 8069AC50  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8069AC54  4B 9A 16 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8069AC58  7C 64 1B 78 */	mr r4, r3
/* 8069AC5C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8069AC60  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 8069AC64  FC 20 F0 90 */	fmr f1, f30
/* 8069AC68  FC 40 F8 90 */	fmr f2, f31
/* 8069AC6C  3C C0 80 6A */	lis r6, lit_3903@ha /* 0x806A1910@ha */
/* 8069AC70  C0 66 19 10 */	lfs f3, lit_3903@l(r6)  /* 0x806A1910@l */
/* 8069AC74  3C C0 80 6A */	lis r6, lit_3938@ha /* 0x806A1940@ha */
/* 8069AC78  C0 86 19 40 */	lfs f4, lit_3938@l(r6)  /* 0x806A1940@l */
/* 8069AC7C  38 C0 00 00 */	li r6, 0
/* 8069AC80  4B 97 56 FD */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 8069AC84  38 60 00 01 */	li r3, 1
/* 8069AC88  48 00 00 08 */	b lbl_8069AC90
lbl_8069AC8C:
/* 8069AC8C  38 60 00 00 */	li r3, 0
lbl_8069AC90:
/* 8069AC90  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8069AC94  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8069AC98  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8069AC9C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8069ACA0  39 61 00 20 */	addi r11, r1, 0x20
/* 8069ACA4  4B CC 75 85 */	bl _restgpr_29
/* 8069ACA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8069ACAC  7C 08 03 A6 */	mtlr r0
/* 8069ACB0  38 21 00 40 */	addi r1, r1, 0x40
/* 8069ACB4  4E 80 00 20 */	blr 
