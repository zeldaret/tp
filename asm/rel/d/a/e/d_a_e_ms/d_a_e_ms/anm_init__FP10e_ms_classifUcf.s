lbl_80725BD4:
/* 80725BD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80725BD8  7C 08 02 A6 */	mflr r0
/* 80725BDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80725BE0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80725BE4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80725BE8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80725BEC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80725BF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80725BF4  4B C3 C5 E9 */	bl _savegpr_29
/* 80725BF8  7C 7D 1B 78 */	mr r29, r3
/* 80725BFC  7C 9E 23 78 */	mr r30, r4
/* 80725C00  FF C0 08 90 */	fmr f30, f1
/* 80725C04  7C BF 2B 78 */	mr r31, r5
/* 80725C08  FF E0 10 90 */	fmr f31, f2
/* 80725C0C  3C 60 80 73 */	lis r3, d_a_e_ms__stringBase0@ha /* 0x807295FC@ha */
/* 80725C10  38 63 95 FC */	addi r3, r3, d_a_e_ms__stringBase0@l /* 0x807295FC@l */
/* 80725C14  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80725C18  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80725C1C  3C A5 00 02 */	addis r5, r5, 2
/* 80725C20  38 C0 00 80 */	li r6, 0x80
/* 80725C24  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80725C28  4B 91 66 C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80725C2C  7C 64 1B 78 */	mr r4, r3
/* 80725C30  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80725C34  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80725C38  FC 20 F0 90 */	fmr f1, f30
/* 80725C3C  FC 40 F8 90 */	fmr f2, f31
/* 80725C40  3C C0 80 73 */	lis r6, lit_3801@ha /* 0x80729508@ha */
/* 80725C44  C0 66 95 08 */	lfs f3, lit_3801@l(r6)  /* 0x80729508@l */
/* 80725C48  3C C0 80 73 */	lis r6, lit_3838@ha /* 0x80729540@ha */
/* 80725C4C  C0 86 95 40 */	lfs f4, lit_3838@l(r6)  /* 0x80729540@l */
/* 80725C50  4B 8E B2 21 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80725C54  93 DD 05 D0 */	stw r30, 0x5d0(r29)
/* 80725C58  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80725C5C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80725C60  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80725C64  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80725C68  39 61 00 20 */	addi r11, r1, 0x20
/* 80725C6C  4B C3 C5 BD */	bl _restgpr_29
/* 80725C70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80725C74  7C 08 03 A6 */	mtlr r0
/* 80725C78  38 21 00 40 */	addi r1, r1, 0x40
/* 80725C7C  4E 80 00 20 */	blr 
