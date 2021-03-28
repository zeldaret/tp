lbl_80808328:
/* 80808328  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8080832C  7C 08 02 A6 */	mflr r0
/* 80808330  90 01 00 34 */	stw r0, 0x34(r1)
/* 80808334  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80808338  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8080833C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80808340  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80808344  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80808348  93 C1 00 08 */	stw r30, 8(r1)
/* 8080834C  7C 7E 1B 78 */	mr r30, r3
/* 80808350  7C BF 2B 78 */	mr r31, r5
/* 80808354  FF C0 08 90 */	fmr f30, f1
/* 80808358  FF E0 10 90 */	fmr f31, f2
/* 8080835C  3C 60 80 81 */	lis r3, stringBase0@ha
/* 80808360  38 63 5A EC */	addi r3, r3, stringBase0@l
/* 80808364  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80808368  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8080836C  3C A5 00 02 */	addis r5, r5, 2
/* 80808370  38 C0 00 80 */	li r6, 0x80
/* 80808374  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80808378  4B 83 3F 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8080837C  7C 64 1B 78 */	mr r4, r3
/* 80808380  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80808384  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80808388  FC 20 F0 90 */	fmr f1, f30
/* 8080838C  FC 40 F8 90 */	fmr f2, f31
/* 80808390  3C C0 80 81 */	lis r6, lit_3926@ha
/* 80808394  C0 66 59 98 */	lfs f3, lit_3926@l(r6)
/* 80808398  3C C0 80 81 */	lis r6, lit_3988@ha
/* 8080839C  C0 86 59 E0 */	lfs f4, lit_3988@l(r6)
/* 808083A0  4B 80 8A D0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 808083A4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 808083A8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 808083AC  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 808083B0  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 808083B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808083B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 808083BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 808083C0  7C 08 03 A6 */	mtlr r0
/* 808083C4  38 21 00 30 */	addi r1, r1, 0x30
/* 808083C8  4E 80 00 20 */	blr 
