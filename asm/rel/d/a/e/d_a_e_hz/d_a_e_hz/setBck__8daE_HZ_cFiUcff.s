lbl_806EA690:
/* 806EA690  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806EA694  7C 08 02 A6 */	mflr r0
/* 806EA698  90 01 00 34 */	stw r0, 0x34(r1)
/* 806EA69C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 806EA6A0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 806EA6A4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 806EA6A8  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 806EA6AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806EA6B0  93 C1 00 08 */	stw r30, 8(r1)
/* 806EA6B4  7C 7E 1B 78 */	mr r30, r3
/* 806EA6B8  7C BF 2B 78 */	mr r31, r5
/* 806EA6BC  FF C0 08 90 */	fmr f30, f1
/* 806EA6C0  FF E0 10 90 */	fmr f31, f2
/* 806EA6C4  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806EA6C8  38 63 09 5C */	addi r3, r3, stringBase0@l
/* 806EA6CC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806EA6D0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806EA6D4  3C A5 00 02 */	addis r5, r5, 2
/* 806EA6D8  38 C0 00 80 */	li r6, 0x80
/* 806EA6DC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806EA6E0  4B 95 1C 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806EA6E4  7C 64 1B 78 */	mr r4, r3
/* 806EA6E8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806EA6EC  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806EA6F0  FC 20 F0 90 */	fmr f1, f30
/* 806EA6F4  FC 40 F8 90 */	fmr f2, f31
/* 806EA6F8  3C C0 80 6F */	lis r6, lit_3967@ha
/* 806EA6FC  C0 66 08 64 */	lfs f3, lit_3967@l(r6)
/* 806EA700  3C C0 80 6F */	lis r6, lit_4010@ha
/* 806EA704  C0 86 08 B4 */	lfs f4, lit_4010@l(r6)
/* 806EA708  4B 92 67 68 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806EA70C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806EA710  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806EA714  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 806EA718  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 806EA71C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806EA720  83 C1 00 08 */	lwz r30, 8(r1)
/* 806EA724  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806EA728  7C 08 03 A6 */	mtlr r0
/* 806EA72C  38 21 00 30 */	addi r1, r1, 0x30
/* 806EA730  4E 80 00 20 */	blr 
