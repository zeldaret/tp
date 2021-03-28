lbl_80218448:
/* 80218448  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021844C  7C 08 02 A6 */	mflr r0
/* 80218450  90 01 00 34 */	stw r0, 0x34(r1)
/* 80218454  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80218458  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8021845C  39 61 00 20 */	addi r11, r1, 0x20
/* 80218460  48 14 9D 75 */	bl _savegpr_27
/* 80218464  7C 7B 1B 78 */	mr r27, r3
/* 80218468  80 63 03 60 */	lwz r3, 0x360(r3)
/* 8021846C  48 03 D3 BD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80218470  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80218474  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80218478  41 82 00 30 */	beq lbl_802184A8
/* 8021847C  80 7B 03 60 */	lwz r3, 0x360(r27)
/* 80218480  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80218484  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 80218488  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 8021848C  C0 04 04 18 */	lfs f0, 0x418(r4)
/* 80218490  EC 21 00 32 */	fmuls f1, f1, f0
/* 80218494  48 03 D3 3D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80218498  7F 63 DB 78 */	mr r3, r27
/* 8021849C  80 9B 03 60 */	lwz r4, 0x360(r27)
/* 802184A0  38 A0 00 05 */	li r5, 5
/* 802184A4  48 00 25 25 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802184A8:
/* 802184A8  3B 80 00 00 */	li r28, 0
/* 802184AC  3B E0 00 00 */	li r31, 0
/* 802184B0  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802184B4  3B C3 EB C8 */	addi r30, r3, g_drawHIO@l
/* 802184B8  C3 E2 AE 80 */	lfs f31, lit_4182(r2)
lbl_802184BC:
/* 802184BC  3B BF 04 90 */	addi r29, r31, 0x490
/* 802184C0  7C 7B E8 2E */	lwzx r3, r27, r29
/* 802184C4  28 03 00 00 */	cmplwi r3, 0
/* 802184C8  41 82 00 2C */	beq lbl_802184F4
/* 802184CC  48 03 D3 5D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802184D0  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 802184D4  41 82 00 20 */	beq lbl_802184F4
/* 802184D8  7C 7B E8 2E */	lwzx r3, r27, r29
/* 802184DC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 802184E0  48 03 D2 F1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802184E4  7F 63 DB 78 */	mr r3, r27
/* 802184E8  7C 9B E8 2E */	lwzx r4, r27, r29
/* 802184EC  38 A0 00 05 */	li r5, 5
/* 802184F0  48 00 24 D9 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802184F4:
/* 802184F4  3B 9C 00 01 */	addi r28, r28, 1
/* 802184F8  2C 1C 00 05 */	cmpwi r28, 5
/* 802184FC  3B FF 00 04 */	addi r31, r31, 4
/* 80218500  41 80 FF BC */	blt lbl_802184BC
/* 80218504  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80218508  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8021850C  39 61 00 20 */	addi r11, r1, 0x20
/* 80218510  48 14 9D 11 */	bl _restgpr_27
/* 80218514  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80218518  7C 08 03 A6 */	mtlr r0
/* 8021851C  38 21 00 30 */	addi r1, r1, 0x30
/* 80218520  4E 80 00 20 */	blr 
