lbl_80D1D764:
/* 80D1D764  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D1D768  7C 08 02 A6 */	mflr r0
/* 80D1D76C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D1D770  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80D1D774  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80D1D778  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80D1D77C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80D1D780  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1D784  4B 64 4A 59 */	bl _savegpr_29
/* 80D1D788  7C 7D 1B 78 */	mr r29, r3
/* 80D1D78C  7C 9E 23 78 */	mr r30, r4
/* 80D1D790  FF C0 08 90 */	fmr f30, f1
/* 80D1D794  7C BF 2B 78 */	mr r31, r5
/* 80D1D798  FF E0 10 90 */	fmr f31, f2
/* 80D1D79C  88 03 05 94 */	lbz r0, 0x594(r3)
/* 80D1D7A0  28 00 00 00 */	cmplwi r0, 0
/* 80D1D7A4  41 82 00 30 */	beq lbl_80D1D7D4
/* 80D1D7A8  2C 1E 00 07 */	cmpwi r30, 7
/* 80D1D7AC  40 82 00 0C */	bne lbl_80D1D7B8
/* 80D1D7B0  3B C0 00 0A */	li r30, 0xa
/* 80D1D7B4  48 00 00 20 */	b lbl_80D1D7D4
lbl_80D1D7B8:
/* 80D1D7B8  2C 1E 00 09 */	cmpwi r30, 9
/* 80D1D7BC  40 82 00 0C */	bne lbl_80D1D7C8
/* 80D1D7C0  3B C0 00 0C */	li r30, 0xc
/* 80D1D7C4  48 00 00 10 */	b lbl_80D1D7D4
lbl_80D1D7C8:
/* 80D1D7C8  2C 1E 00 08 */	cmpwi r30, 8
/* 80D1D7CC  40 82 00 08 */	bne lbl_80D1D7D4
/* 80D1D7D0  3B C0 00 0B */	li r30, 0xb
lbl_80D1D7D4:
/* 80D1D7D4  3C 60 80 D2 */	lis r3, d_a_obj_tp__stringBase0@ha /* 0x80D1EE98@ha */
/* 80D1D7D8  38 63 EE 98 */	addi r3, r3, d_a_obj_tp__stringBase0@l /* 0x80D1EE98@l */
/* 80D1D7DC  7F C4 F3 78 */	mr r4, r30
/* 80D1D7E0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1D7E4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1D7E8  3C A5 00 02 */	addis r5, r5, 2
/* 80D1D7EC  38 C0 00 80 */	li r6, 0x80
/* 80D1D7F0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D1D7F4  4B 31 EA F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1D7F8  7C 64 1B 78 */	mr r4, r3
/* 80D1D7FC  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80D1D800  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80D1D804  FC 20 F0 90 */	fmr f1, f30
/* 80D1D808  FC 40 F8 90 */	fmr f2, f31
/* 80D1D80C  3C C0 80 D2 */	lis r6, lit_3881@ha /* 0x80D1EE34@ha */
/* 80D1D810  C0 66 EE 34 */	lfs f3, lit_3881@l(r6)  /* 0x80D1EE34@l */
/* 80D1D814  3C C0 80 D2 */	lis r6, lit_3898@ha /* 0x80D1EE38@ha */
/* 80D1D818  C0 86 EE 38 */	lfs f4, lit_3898@l(r6)  /* 0x80D1EE38@l */
/* 80D1D81C  38 C0 00 00 */	li r6, 0
/* 80D1D820  4B 2F 2B 5D */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 80D1D824  93 DD 05 74 */	stw r30, 0x574(r29)
/* 80D1D828  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80D1D82C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80D1D830  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80D1D834  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80D1D838  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1D83C  4B 64 49 ED */	bl _restgpr_29
/* 80D1D840  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D1D844  7C 08 03 A6 */	mtlr r0
/* 80D1D848  38 21 00 40 */	addi r1, r1, 0x40
/* 80D1D84C  4E 80 00 20 */	blr 
