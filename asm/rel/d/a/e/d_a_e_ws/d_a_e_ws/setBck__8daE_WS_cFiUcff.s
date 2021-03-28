lbl_807E3C20:
/* 807E3C20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807E3C24  7C 08 02 A6 */	mflr r0
/* 807E3C28  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E3C2C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 807E3C30  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 807E3C34  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 807E3C38  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 807E3C3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E3C40  93 C1 00 08 */	stw r30, 8(r1)
/* 807E3C44  7C 7E 1B 78 */	mr r30, r3
/* 807E3C48  7C BF 2B 78 */	mr r31, r5
/* 807E3C4C  FF C0 08 90 */	fmr f30, f1
/* 807E3C50  FF E0 10 90 */	fmr f31, f2
/* 807E3C54  3C 60 80 7E */	lis r3, stringBase0@ha
/* 807E3C58  38 63 74 04 */	addi r3, r3, stringBase0@l
/* 807E3C5C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807E3C60  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807E3C64  3C A5 00 02 */	addis r5, r5, 2
/* 807E3C68  38 C0 00 80 */	li r6, 0x80
/* 807E3C6C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807E3C70  4B 85 86 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E3C74  7C 64 1B 78 */	mr r4, r3
/* 807E3C78  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3C7C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807E3C80  FC 20 F0 90 */	fmr f1, f30
/* 807E3C84  FC 40 F8 90 */	fmr f2, f31
/* 807E3C88  3C C0 80 7E */	lis r6, lit_3803@ha
/* 807E3C8C  C0 66 73 04 */	lfs f3, lit_3803@l(r6)
/* 807E3C90  3C C0 80 7E */	lis r6, lit_3885@ha
/* 807E3C94  C0 86 73 4C */	lfs f4, lit_3885@l(r6)
/* 807E3C98  4B 82 D1 D8 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807E3C9C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807E3CA0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807E3CA4  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 807E3CA8  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 807E3CAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E3CB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 807E3CB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807E3CB8  7C 08 03 A6 */	mtlr r0
/* 807E3CBC  38 21 00 30 */	addi r1, r1, 0x30
/* 807E3CC0  4E 80 00 20 */	blr 
