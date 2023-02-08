lbl_8077ABF8:
/* 8077ABF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8077ABFC  7C 08 02 A6 */	mflr r0
/* 8077AC00  90 01 00 44 */	stw r0, 0x44(r1)
/* 8077AC04  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8077AC08  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8077AC0C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8077AC10  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8077AC14  39 61 00 20 */	addi r11, r1, 0x20
/* 8077AC18  4B BE 75 C5 */	bl _savegpr_29
/* 8077AC1C  7C 7D 1B 78 */	mr r29, r3
/* 8077AC20  7C 9E 23 78 */	mr r30, r4
/* 8077AC24  FF C0 08 90 */	fmr f30, f1
/* 8077AC28  7C BF 2B 78 */	mr r31, r5
/* 8077AC2C  FF E0 10 90 */	fmr f31, f2
/* 8077AC30  3C 60 80 78 */	lis r3, d_a_e_s1__stringBase0@ha /* 0x80780F74@ha */
/* 8077AC34  38 63 0F 74 */	addi r3, r3, d_a_e_s1__stringBase0@l /* 0x80780F74@l */
/* 8077AC38  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077AC3C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077AC40  3C A5 00 02 */	addis r5, r5, 2
/* 8077AC44  38 C0 00 80 */	li r6, 0x80
/* 8077AC48  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8077AC4C  4B 8C 16 A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8077AC50  7C 64 1B 78 */	mr r4, r3
/* 8077AC54  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8077AC58  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8077AC5C  FC 20 F0 90 */	fmr f1, f30
/* 8077AC60  FC 40 F8 90 */	fmr f2, f31
/* 8077AC64  3C C0 80 78 */	lis r6, lit_3904@ha /* 0x80780DC8@ha */
/* 8077AC68  C0 66 0D C8 */	lfs f3, lit_3904@l(r6)  /* 0x80780DC8@l */
/* 8077AC6C  3C C0 80 78 */	lis r6, lit_3943@ha /* 0x80780E08@ha */
/* 8077AC70  C0 86 0E 08 */	lfs f4, lit_3943@l(r6)  /* 0x80780E08@l */
/* 8077AC74  4B 89 61 FD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8077AC78  93 DD 05 D8 */	stw r30, 0x5d8(r29)
/* 8077AC7C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8077AC80  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8077AC84  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8077AC88  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8077AC8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8077AC90  4B BE 75 99 */	bl _restgpr_29
/* 8077AC94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8077AC98  7C 08 03 A6 */	mtlr r0
/* 8077AC9C  38 21 00 40 */	addi r1, r1, 0x40
/* 8077ACA0  4E 80 00 20 */	blr 
