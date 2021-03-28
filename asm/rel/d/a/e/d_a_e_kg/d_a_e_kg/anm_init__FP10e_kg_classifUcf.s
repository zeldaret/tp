lbl_806F7F24:
/* 806F7F24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806F7F28  7C 08 02 A6 */	mflr r0
/* 806F7F2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806F7F30  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806F7F34  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806F7F38  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806F7F3C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806F7F40  39 61 00 20 */	addi r11, r1, 0x20
/* 806F7F44  4B C6 A2 98 */	b _savegpr_29
/* 806F7F48  7C 7D 1B 78 */	mr r29, r3
/* 806F7F4C  7C 9E 23 78 */	mr r30, r4
/* 806F7F50  FF C0 08 90 */	fmr f30, f1
/* 806F7F54  7C BF 2B 78 */	mr r31, r5
/* 806F7F58  FF E0 10 90 */	fmr f31, f2
/* 806F7F5C  3C 60 80 70 */	lis r3, stringBase0@ha
/* 806F7F60  38 63 A4 6C */	addi r3, r3, stringBase0@l
/* 806F7F64  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806F7F68  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806F7F6C  3C A5 00 02 */	addis r5, r5, 2
/* 806F7F70  38 C0 00 80 */	li r6, 0x80
/* 806F7F74  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806F7F78  4B 94 43 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F7F7C  7C 64 1B 78 */	mr r4, r3
/* 806F7F80  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806F7F84  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806F7F88  FC 20 F0 90 */	fmr f1, f30
/* 806F7F8C  FC 40 F8 90 */	fmr f2, f31
/* 806F7F90  3C C0 80 70 */	lis r6, lit_3789@ha
/* 806F7F94  C0 66 A3 A8 */	lfs f3, lit_3789@l(r6)
/* 806F7F98  3C C0 80 70 */	lis r6, lit_3825@ha
/* 806F7F9C  C0 86 A3 DC */	lfs f4, lit_3825@l(r6)
/* 806F7FA0  4B 91 8E D0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806F7FA4  93 DD 06 68 */	stw r30, 0x668(r29)
/* 806F7FA8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806F7FAC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806F7FB0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806F7FB4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806F7FB8  39 61 00 20 */	addi r11, r1, 0x20
/* 806F7FBC  4B C6 A2 6C */	b _restgpr_29
/* 806F7FC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806F7FC4  7C 08 03 A6 */	mtlr r0
/* 806F7FC8  38 21 00 40 */	addi r1, r1, 0x40
/* 806F7FCC  4E 80 00 20 */	blr 
