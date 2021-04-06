lbl_806AA68C:
/* 806AA68C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806AA690  7C 08 02 A6 */	mflr r0
/* 806AA694  90 01 00 34 */	stw r0, 0x34(r1)
/* 806AA698  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 806AA69C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 806AA6A0  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 806AA6A4  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 806AA6A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AA6AC  93 C1 00 08 */	stw r30, 8(r1)
/* 806AA6B0  7C 7E 1B 78 */	mr r30, r3
/* 806AA6B4  7C BF 2B 78 */	mr r31, r5
/* 806AA6B8  FF C0 08 90 */	fmr f30, f1
/* 806AA6BC  FF E0 10 90 */	fmr f31, f2
/* 806AA6C0  3C 60 80 6B */	lis r3, d_a_e_dk__stringBase0@ha /* 0x806AD628@ha */
/* 806AA6C4  38 63 D6 28 */	addi r3, r3, d_a_e_dk__stringBase0@l /* 0x806AD628@l */
/* 806AA6C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AA6CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AA6D0  3C A5 00 02 */	addis r5, r5, 2
/* 806AA6D4  38 C0 00 80 */	li r6, 0x80
/* 806AA6D8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806AA6DC  4B 99 1C 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806AA6E0  7C 64 1B 78 */	mr r4, r3
/* 806AA6E4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806AA6E8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806AA6EC  FC 20 F0 90 */	fmr f1, f30
/* 806AA6F0  FC 40 F8 90 */	fmr f2, f31
/* 806AA6F4  3C C0 80 6B */	lis r6, lit_3873@ha /* 0x806AD558@ha */
/* 806AA6F8  C0 66 D5 58 */	lfs f3, lit_3873@l(r6)  /* 0x806AD558@l */
/* 806AA6FC  3C C0 80 6B */	lis r6, lit_3893@ha /* 0x806AD560@ha */
/* 806AA700  C0 86 D5 60 */	lfs f4, lit_3893@l(r6)  /* 0x806AD560@l */
/* 806AA704  4B 96 67 6D */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806AA708  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806AA70C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806AA710  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 806AA714  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 806AA718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AA71C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806AA720  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AA724  7C 08 03 A6 */	mtlr r0
/* 806AA728  38 21 00 30 */	addi r1, r1, 0x30
/* 806AA72C  4E 80 00 20 */	blr 
