lbl_809B0360:
/* 809B0360  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809B0364  7C 08 02 A6 */	mflr r0
/* 809B0368  90 01 00 44 */	stw r0, 0x44(r1)
/* 809B036C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 809B0370  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 809B0374  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 809B0378  93 C1 00 28 */	stw r30, 0x28(r1)
/* 809B037C  7C 7E 1B 78 */	mr r30, r3
/* 809B0380  3C 60 80 9B */	lis r3, lit_3762@ha
/* 809B0384  3B E3 18 48 */	addi r31, r3, lit_3762@l
/* 809B0388  C3 FF 00 04 */	lfs f31, 4(r31)
/* 809B038C  38 61 00 08 */	addi r3, r1, 8
/* 809B0390  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809B0394  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809B0398  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809B039C  80 A5 5D AC */	lwz r5, 0x5dac(r5)
/* 809B03A0  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 809B03A4  4B 8B 67 90 */	b __mi__4cXyzCFRC3Vec
/* 809B03A8  C0 01 00 08 */	lfs f0, 8(r1)
/* 809B03AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809B03B0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809B03B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809B03B8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 809B03BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809B03C0  A8 1E 05 D0 */	lha r0, 0x5d0(r30)
/* 809B03C4  2C 00 00 01 */	cmpwi r0, 1
/* 809B03C8  41 82 00 40 */	beq lbl_809B0408
/* 809B03CC  40 80 00 CC */	bge lbl_809B0498
/* 809B03D0  2C 00 00 00 */	cmpwi r0, 0
/* 809B03D4  40 80 00 08 */	bge lbl_809B03DC
/* 809B03D8  48 00 00 C0 */	b lbl_809B0498
lbl_809B03DC:
/* 809B03DC  7F C3 F3 78 */	mr r3, r30
/* 809B03E0  38 80 00 07 */	li r4, 7
/* 809B03E4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 809B03E8  38 A0 00 02 */	li r5, 2
/* 809B03EC  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 809B03F0  4B FF F9 81 */	bl anm_init__FP12npc_du_classifUcf
/* 809B03F4  A8 7E 05 D0 */	lha r3, 0x5d0(r30)
/* 809B03F8  38 03 00 01 */	addi r0, r3, 1
/* 809B03FC  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 809B0400  38 00 00 14 */	li r0, 0x14
/* 809B0404  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
lbl_809B0408:
/* 809B0408  C3 FF 00 44 */	lfs f31, 0x44(r31)
/* 809B040C  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 809B0410  2C 00 00 00 */	cmpwi r0, 0
/* 809B0414  40 82 00 20 */	bne lbl_809B0434
/* 809B0418  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 809B041C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 809B0420  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809B0424  40 81 00 10 */	ble lbl_809B0434
/* 809B0428  38 00 00 00 */	li r0, 0
/* 809B042C  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 809B0430  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
lbl_809B0434:
/* 809B0434  A8 1E 05 DA */	lha r0, 0x5da(r30)
/* 809B0438  2C 00 00 00 */	cmpwi r0, 0
/* 809B043C  40 82 00 5C */	bne lbl_809B0498
/* 809B0440  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 809B0444  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 809B0448  4B 8B 72 2C */	b cM_atan2s__Fff
/* 809B044C  B0 7E 09 7A */	sth r3, 0x97a(r30)
/* 809B0450  7F C3 F3 78 */	mr r3, r30
/* 809B0454  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 809B0458  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 809B045C  4B 66 CA 74 */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 809B0460  2C 03 00 00 */	cmpwi r3, 0
/* 809B0464  41 82 00 34 */	beq lbl_809B0498
/* 809B0468  38 00 00 1E */	li r0, 0x1e
/* 809B046C  B0 1E 05 DA */	sth r0, 0x5da(r30)
/* 809B0470  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 809B0474  4B 8B 75 18 */	b cM_rndFX__Ff
/* 809B0478  FC 00 08 1E */	fctiwz f0, f1
/* 809B047C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809B0480  80 81 00 24 */	lwz r4, 0x24(r1)
/* 809B0484  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 809B0488  3C 03 00 01 */	addis r0, r3, 1
/* 809B048C  7C 60 22 14 */	add r3, r0, r4
/* 809B0490  38 03 80 00 */	addi r0, r3, -32768
/* 809B0494  B0 1E 09 7A */	sth r0, 0x97a(r30)
lbl_809B0498:
/* 809B0498  38 7E 05 2C */	addi r3, r30, 0x52c
/* 809B049C  FC 20 F8 90 */	fmr f1, f31
/* 809B04A0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 809B04A4  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 809B04A8  4B 8B F5 94 */	b cLib_addCalc2__FPffff
/* 809B04AC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 809B04B0  A8 9E 09 7A */	lha r4, 0x97a(r30)
/* 809B04B4  38 A0 00 02 */	li r5, 2
/* 809B04B8  38 C0 18 00 */	li r6, 0x1800
/* 809B04BC  4B 8C 01 4C */	b cLib_addCalcAngleS2__FPssss
/* 809B04C0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 809B04C4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 809B04C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809B04CC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 809B04D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809B04D4  7C 08 03 A6 */	mtlr r0
/* 809B04D8  38 21 00 40 */	addi r1, r1, 0x40
/* 809B04DC  4E 80 00 20 */	blr 
