lbl_807FD768:
/* 807FD768  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807FD76C  7C 08 02 A6 */	mflr r0
/* 807FD770  90 01 00 44 */	stw r0, 0x44(r1)
/* 807FD774  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807FD778  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807FD77C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 807FD780  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 807FD784  39 61 00 20 */	addi r11, r1, 0x20
/* 807FD788  4B B6 4A 55 */	bl _savegpr_29
/* 807FD78C  7C 9D 23 78 */	mr r29, r4
/* 807FD790  FF C0 08 90 */	fmr f30, f1
/* 807FD794  7C BE 2B 78 */	mr r30, r5
/* 807FD798  FF E0 10 90 */	fmr f31, f2
/* 807FD79C  80 03 12 38 */	lwz r0, 0x1238(r3)
/* 807FD7A0  90 01 00 08 */	stw r0, 8(r1)
/* 807FD7A4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807FD7A8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807FD7AC  38 81 00 08 */	addi r4, r1, 8
/* 807FD7B0  4B 81 C0 49 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807FD7B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807FD7B8  41 82 00 5C */	beq lbl_807FD814
/* 807FD7BC  3C 60 80 80 */	lis r3, d_a_e_yh__stringBase0@ha /* 0x808043DC@ha */
/* 807FD7C0  38 63 43 DC */	addi r3, r3, d_a_e_yh__stringBase0@l /* 0x808043DC@l */
/* 807FD7C4  7F A4 EB 78 */	mr r4, r29
/* 807FD7C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FD7CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FD7D0  3C A5 00 02 */	addis r5, r5, 2
/* 807FD7D4  38 C0 00 80 */	li r6, 0x80
/* 807FD7D8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807FD7DC  4B 83 EB 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807FD7E0  7C 64 1B 78 */	mr r4, r3
/* 807FD7E4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807FD7E8  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 807FD7EC  FC 20 F0 90 */	fmr f1, f30
/* 807FD7F0  FC 40 F8 90 */	fmr f2, f31
/* 807FD7F4  3C C0 80 80 */	lis r6, lit_3903@ha /* 0x80804280@ha */
/* 807FD7F8  C0 66 42 80 */	lfs f3, lit_3903@l(r6)  /* 0x80804280@l */
/* 807FD7FC  3C C0 80 80 */	lis r6, lit_3986@ha /* 0x808042B4@ha */
/* 807FD800  C0 86 42 B4 */	lfs f4, lit_3986@l(r6)  /* 0x808042B4@l */
/* 807FD804  38 C0 00 00 */	li r6, 0
/* 807FD808  4B 81 2B 75 */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 807FD80C  38 60 00 01 */	li r3, 1
/* 807FD810  48 00 00 08 */	b lbl_807FD818
lbl_807FD814:
/* 807FD814  38 60 00 00 */	li r3, 0
lbl_807FD818:
/* 807FD818  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807FD81C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807FD820  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 807FD824  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 807FD828  39 61 00 20 */	addi r11, r1, 0x20
/* 807FD82C  4B B6 49 FD */	bl _restgpr_29
/* 807FD830  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807FD834  7C 08 03 A6 */	mtlr r0
/* 807FD838  38 21 00 40 */	addi r1, r1, 0x40
/* 807FD83C  4E 80 00 20 */	blr 
