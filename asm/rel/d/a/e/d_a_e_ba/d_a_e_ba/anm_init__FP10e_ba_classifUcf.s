lbl_8067ED90:
/* 8067ED90  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8067ED94  7C 08 02 A6 */	mflr r0
/* 8067ED98  90 01 00 44 */	stw r0, 0x44(r1)
/* 8067ED9C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8067EDA0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8067EDA4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8067EDA8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8067EDAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8067EDB0  4B CE 34 2D */	bl _savegpr_29
/* 8067EDB4  7C 7D 1B 78 */	mr r29, r3
/* 8067EDB8  7C 9E 23 78 */	mr r30, r4
/* 8067EDBC  FF C0 08 90 */	fmr f30, f1
/* 8067EDC0  7C BF 2B 78 */	mr r31, r5
/* 8067EDC4  FF E0 10 90 */	fmr f31, f2
/* 8067EDC8  80 63 05 B8 */	lwz r3, 0x5b8(r3)
/* 8067EDCC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067EDD0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067EDD4  3C A5 00 02 */	addis r5, r5, 2
/* 8067EDD8  38 C0 00 80 */	li r6, 0x80
/* 8067EDDC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8067EDE0  4B 9B D5 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8067EDE4  7C 64 1B 78 */	mr r4, r3
/* 8067EDE8  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 8067EDEC  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8067EDF0  FC 20 F0 90 */	fmr f1, f30
/* 8067EDF4  FC 40 F8 90 */	fmr f2, f31
/* 8067EDF8  3C C0 80 68 */	lis r6, lit_3948@ha /* 0x806823C0@ha */
/* 8067EDFC  C0 66 23 C0 */	lfs f3, lit_3948@l(r6)  /* 0x806823C0@l */
/* 8067EE00  3C C0 80 68 */	lis r6, lit_3996@ha /* 0x806823F4@ha */
/* 8067EE04  C0 86 23 F4 */	lfs f4, lit_3996@l(r6)  /* 0x806823F4@l */
/* 8067EE08  4B 99 20 69 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8067EE0C  93 DD 06 6C */	stw r30, 0x66c(r29)
/* 8067EE10  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8067EE14  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8067EE18  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8067EE1C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8067EE20  39 61 00 20 */	addi r11, r1, 0x20
/* 8067EE24  4B CE 34 05 */	bl _restgpr_29
/* 8067EE28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8067EE2C  7C 08 03 A6 */	mtlr r0
/* 8067EE30  38 21 00 40 */	addi r1, r1, 0x40
/* 8067EE34  4E 80 00 20 */	blr 
