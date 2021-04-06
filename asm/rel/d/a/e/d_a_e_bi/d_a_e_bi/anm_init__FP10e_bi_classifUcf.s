lbl_8068A634:
/* 8068A634  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8068A638  7C 08 02 A6 */	mflr r0
/* 8068A63C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8068A640  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8068A644  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8068A648  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8068A64C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8068A650  39 61 00 20 */	addi r11, r1, 0x20
/* 8068A654  4B CD 7B 89 */	bl _savegpr_29
/* 8068A658  7C 7D 1B 78 */	mr r29, r3
/* 8068A65C  7C 9E 23 78 */	mr r30, r4
/* 8068A660  FF C0 08 90 */	fmr f30, f1
/* 8068A664  7C BF 2B 78 */	mr r31, r5
/* 8068A668  FF E0 10 90 */	fmr f31, f2
/* 8068A66C  3C 60 80 69 */	lis r3, d_a_e_bi__stringBase0@ha /* 0x8068D8D8@ha */
/* 8068A670  38 63 D8 D8 */	addi r3, r3, d_a_e_bi__stringBase0@l /* 0x8068D8D8@l */
/* 8068A674  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068A678  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068A67C  3C A5 00 02 */	addis r5, r5, 2
/* 8068A680  38 C0 00 80 */	li r6, 0x80
/* 8068A684  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8068A688  4B 9B 1C 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8068A68C  7C 64 1B 78 */	mr r4, r3
/* 8068A690  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8068A694  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8068A698  FC 20 F0 90 */	fmr f1, f30
/* 8068A69C  FC 40 F8 90 */	fmr f2, f31
/* 8068A6A0  3C C0 80 69 */	lis r6, lit_3904@ha /* 0x8068D7F0@ha */
/* 8068A6A4  C0 66 D7 F0 */	lfs f3, lit_3904@l(r6)  /* 0x8068D7F0@l */
/* 8068A6A8  3C C0 80 69 */	lis r6, lit_3940@ha /* 0x8068D824@ha */
/* 8068A6AC  C0 86 D8 24 */	lfs f4, lit_3940@l(r6)  /* 0x8068D824@l */
/* 8068A6B0  4B 98 67 C1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8068A6B4  93 DD 06 64 */	stw r30, 0x664(r29)
/* 8068A6B8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8068A6BC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8068A6C0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8068A6C4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8068A6C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8068A6CC  4B CD 7B 5D */	bl _restgpr_29
/* 8068A6D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8068A6D4  7C 08 03 A6 */	mtlr r0
/* 8068A6D8  38 21 00 40 */	addi r1, r1, 0x40
/* 8068A6DC  4E 80 00 20 */	blr 
