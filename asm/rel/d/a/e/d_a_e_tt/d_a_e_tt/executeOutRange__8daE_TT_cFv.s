lbl_807C033C:
/* 807C033C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807C0340  7C 08 02 A6 */	mflr r0
/* 807C0344  90 01 00 34 */	stw r0, 0x34(r1)
/* 807C0348  39 61 00 30 */	addi r11, r1, 0x30
/* 807C034C  4B BA 1E 91 */	bl _savegpr_29
/* 807C0350  7C 7E 1B 78 */	mr r30, r3
/* 807C0354  3C 80 80 7C */	lis r4, lit_3908@ha /* 0x807C1FB8@ha */
/* 807C0358  3B E4 1F B8 */	addi r31, r4, lit_3908@l /* 0x807C1FB8@l */
/* 807C035C  80 03 06 BC */	lwz r0, 0x6bc(r3)
/* 807C0360  2C 00 00 01 */	cmpwi r0, 1
/* 807C0364  41 82 00 30 */	beq lbl_807C0394
/* 807C0368  40 80 01 B0 */	bge lbl_807C0518
/* 807C036C  2C 00 00 00 */	cmpwi r0, 0
/* 807C0370  40 80 00 08 */	bge lbl_807C0378
/* 807C0374  48 00 01 A4 */	b lbl_807C0518
lbl_807C0378:
/* 807C0378  38 80 00 10 */	li r4, 0x10
/* 807C037C  38 A0 00 02 */	li r5, 2
/* 807C0380  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807C0384  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C0388  4B FF D7 59 */	bl setBck__8daE_TT_cFiUcff
/* 807C038C  38 00 00 01 */	li r0, 1
/* 807C0390  90 1E 06 BC */	stw r0, 0x6bc(r30)
lbl_807C0394:
/* 807C0394  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807C0398  38 63 00 0C */	addi r3, r3, 0xc
/* 807C039C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C03A0  4B B6 80 8D */	bl checkPass__12J3DFrameCtrlFf
/* 807C03A4  2C 03 00 00 */	cmpwi r3, 0
/* 807C03A8  41 82 00 2C */	beq lbl_807C03D4
/* 807C03AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070255@ha */
/* 807C03B0  38 03 02 55 */	addi r0, r3, 0x0255 /* 0x00070255@l */
/* 807C03B4  90 01 00 08 */	stw r0, 8(r1)
/* 807C03B8  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807C03BC  38 81 00 08 */	addi r4, r1, 8
/* 807C03C0  38 A0 FF FF */	li r5, -1
/* 807C03C4  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807C03C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C03CC  7D 89 03 A6 */	mtctr r12
/* 807C03D0  4E 80 04 21 */	bctrl 
lbl_807C03D4:
/* 807C03D4  7F C3 F3 78 */	mr r3, r30
/* 807C03D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C03DC  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C03E0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807C03E4  4B 85 A3 2D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C03E8  7C 64 1B 78 */	mr r4, r3
/* 807C03EC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807C03F0  38 A0 00 08 */	li r5, 8
/* 807C03F4  38 C0 08 00 */	li r6, 0x800
/* 807C03F8  38 E0 01 00 */	li r7, 0x100
/* 807C03FC  4B AB 01 45 */	bl cLib_addCalcAngleS__FPsssss
/* 807C0400  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807C0404  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807C0408  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 807C040C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 807C0410  40 82 00 3C */	bne lbl_807C044C
/* 807C0414  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807C0418  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 807C041C  4B AB 07 E9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807C0420  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807C0424  7C 03 00 50 */	subf r0, r3, r0
/* 807C0428  7C 03 07 34 */	extsh r3, r0
/* 807C042C  4B BA 4C A5 */	bl abs
/* 807C0430  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807C0434  40 80 00 18 */	bge lbl_807C044C
/* 807C0438  7F C3 F3 78 */	mr r3, r30
/* 807C043C  38 80 00 01 */	li r4, 1
/* 807C0440  38 A0 00 00 */	li r5, 0
/* 807C0444  4B FF D7 A1 */	bl setActionMode__8daE_TT_cFii
/* 807C0448  48 00 00 D0 */	b lbl_807C0518
lbl_807C044C:
/* 807C044C  7F C3 F3 78 */	mr r3, r30
/* 807C0450  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807C0454  4B 85 A5 11 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C0458  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807C045C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C0460  40 81 00 18 */	ble lbl_807C0478
/* 807C0464  7F C3 F3 78 */	mr r3, r30
/* 807C0468  38 80 00 00 */	li r4, 0
/* 807C046C  38 A0 00 00 */	li r5, 0
/* 807C0470  4B FF D7 75 */	bl setActionMode__8daE_TT_cFii
/* 807C0474  48 00 00 A4 */	b lbl_807C0518
lbl_807C0478:
/* 807C0478  7F C3 F3 78 */	mr r3, r30
/* 807C047C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807C0480  4B 85 A4 E5 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C0484  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807C0488  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C048C  40 80 00 8C */	bge lbl_807C0518
/* 807C0490  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 807C0494  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 807C0498  40 82 00 80 */	bne lbl_807C0518
/* 807C049C  7F C3 F3 78 */	mr r3, r30
/* 807C04A0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807C04A4  4B 85 A2 6D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C04A8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807C04AC  A8 04 04 E6 */	lha r0, 0x4e6(r4)
/* 807C04B0  7C 03 00 50 */	subf r0, r3, r0
/* 807C04B4  7C 03 07 34 */	extsh r3, r0
/* 807C04B8  4B BA 4C 19 */	bl abs
/* 807C04BC  7C 60 07 34 */	extsh r0, r3
/* 807C04C0  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 807C04C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807C04C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C04CC  3C 00 43 30 */	lis r0, 0x4330
/* 807C04D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C04D4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 807C04D8  EC 20 08 28 */	fsubs f1, f0, f1
/* 807C04DC  3C 60 80 7C */	lis r3, l_HIO@ha /* 0x807C23EC@ha */
/* 807C04E0  38 63 23 EC */	addi r3, r3, l_HIO@l /* 0x807C23EC@l */
/* 807C04E4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807C04E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C04EC  40 81 00 2C */	ble lbl_807C0518
/* 807C04F0  3C 60 80 7C */	lis r3, m_attack_tt@ha /* 0x807C2404@ha */
/* 807C04F4  80 03 24 04 */	lwz r0, m_attack_tt@l(r3)  /* 0x807C2404@l */
/* 807C04F8  28 00 00 00 */	cmplwi r0, 0
/* 807C04FC  40 82 00 1C */	bne lbl_807C0518
/* 807C0500  7F C3 F3 78 */	mr r3, r30
/* 807C0504  38 80 00 02 */	li r4, 2
/* 807C0508  38 A0 00 00 */	li r5, 0
/* 807C050C  4B FF D6 D9 */	bl setActionMode__8daE_TT_cFii
/* 807C0510  3C 60 80 7C */	lis r3, m_attack_tt@ha /* 0x807C2404@ha */
/* 807C0514  93 C3 24 04 */	stw r30, m_attack_tt@l(r3)  /* 0x807C2404@l */
lbl_807C0518:
/* 807C0518  39 61 00 30 */	addi r11, r1, 0x30
/* 807C051C  4B BA 1D 0D */	bl _restgpr_29
/* 807C0520  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807C0524  7C 08 03 A6 */	mtlr r0
/* 807C0528  38 21 00 30 */	addi r1, r1, 0x30
/* 807C052C  4E 80 00 20 */	blr 
