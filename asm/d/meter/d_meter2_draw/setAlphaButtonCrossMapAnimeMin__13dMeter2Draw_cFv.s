lbl_802185E8:
/* 802185E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802185EC  7C 08 02 A6 */	mflr r0
/* 802185F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802185F4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802185F8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802185FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80218600  48 14 9B D5 */	bl _savegpr_27
/* 80218604  7C 7B 1B 78 */	mr r27, r3
/* 80218608  80 63 03 64 */	lwz r3, 0x364(r3)
/* 8021860C  48 03 D2 1D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80218610  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80218614  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80218618  41 82 00 30 */	beq lbl_80218648
/* 8021861C  80 7B 03 64 */	lwz r3, 0x364(r27)
/* 80218620  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218624  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218628  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 8021862C  C0 04 04 1C */	lfs f0, 0x41c(r4)
/* 80218630  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218634  48 03 D1 9D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80218638  7F 63 DB 78 */	mr r3, r27
/* 8021863C  80 9B 03 64 */	lwz r4, 0x364(r27)
/* 80218640  38 A0 00 05 */	li r5, 5
/* 80218644  48 00 23 85 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80218648:
/* 80218648  3B 80 00 00 */	li r28, 0
/* 8021864C  3B E0 00 00 */	li r31, 0
/* 80218650  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80218654  3B C3 EB C8 */	addi r30, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80218658  C3 E2 AE 80 */	lfs f31, lit_4182(r2)
lbl_8021865C:
/* 8021865C  3B BF 04 A4 */	addi r29, r31, 0x4a4
/* 80218660  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80218664  28 03 00 00 */	cmplwi r3, 0
/* 80218668  41 82 00 2C */	beq lbl_80218694
/* 8021866C  48 03 D1 BD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80218670  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 80218674  41 82 00 20 */	beq lbl_80218694
/* 80218678  7C 7B E8 2E */	lwzx r3, r27, r29
/* 8021867C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80218680  48 03 D1 51 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80218684  7F 63 DB 78 */	mr r3, r27
/* 80218688  7C 9B E8 2E */	lwzx r4, r27, r29
/* 8021868C  38 A0 00 05 */	li r5, 5
/* 80218690  48 00 23 39 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80218694:
/* 80218694  3B 9C 00 01 */	addi r28, r28, 1
/* 80218698  2C 1C 00 05 */	cmpwi r28, 5
/* 8021869C  3B FF 00 04 */	addi r31, r31, 4
/* 802186A0  41 80 FF BC */	blt lbl_8021865C
/* 802186A4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 802186A8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802186AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802186B0  48 14 9B 71 */	bl _restgpr_27
/* 802186B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802186B8  7C 08 03 A6 */	mtlr r0
/* 802186BC  38 21 00 30 */	addi r1, r1, 0x30
/* 802186C0  4E 80 00 20 */	blr 
