lbl_80504D28:
/* 80504D28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80504D2C  7C 08 02 A6 */	mflr r0
/* 80504D30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80504D34  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80504D38  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80504D3C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80504D40  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80504D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80504D48  93 C1 00 08 */	stw r30, 8(r1)
/* 80504D4C  7C 7E 1B 78 */	mr r30, r3
/* 80504D50  FF C0 08 90 */	fmr f30, f1
/* 80504D54  7C BF 2B 78 */	mr r31, r5
/* 80504D58  FF E0 10 90 */	fmr f31, f2
/* 80504D5C  88 03 06 A0 */	lbz r0, 0x6a0(r3)
/* 80504D60  7C 00 07 75 */	extsb. r0, r0
/* 80504D64  41 82 00 50 */	beq lbl_80504DB4
/* 80504D68  3C 60 80 52 */	lis r3, d_a_e_rd__stringBase0@ha /* 0x80518968@ha */
/* 80504D6C  38 63 89 68 */	addi r3, r3, d_a_e_rd__stringBase0@l /* 0x80518968@l */
/* 80504D70  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80504D74  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80504D78  3C A5 00 02 */	addis r5, r5, 2
/* 80504D7C  38 C0 00 80 */	li r6, 0x80
/* 80504D80  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80504D84  4B B3 75 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80504D88  7C 64 1B 78 */	mr r4, r3
/* 80504D8C  80 7E 06 9C */	lwz r3, 0x69c(r30)
/* 80504D90  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80504D94  FC 20 F0 90 */	fmr f1, f30
/* 80504D98  FC 40 F8 90 */	fmr f2, f31
/* 80504D9C  3C C0 80 52 */	lis r6, lit_4209@ha /* 0x80518588@ha */
/* 80504DA0  C0 66 85 88 */	lfs f3, lit_4209@l(r6)  /* 0x80518588@l */
/* 80504DA4  3C C0 80 52 */	lis r6, lit_4289@ha /* 0x805185E4@ha */
/* 80504DA8  C0 86 85 E4 */	lfs f4, lit_4289@l(r6)  /* 0x805185E4@l */
/* 80504DAC  38 C0 00 00 */	li r6, 0
/* 80504DB0  4B B0 B5 CD */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
lbl_80504DB4:
/* 80504DB4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80504DB8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80504DBC  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80504DC0  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80504DC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80504DC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80504DCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80504DD0  7C 08 03 A6 */	mtlr r0
/* 80504DD4  38 21 00 30 */	addi r1, r1, 0x30
/* 80504DD8  4E 80 00 20 */	blr 
