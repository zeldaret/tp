lbl_806703E4:
/* 806703E4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806703E8  7C 08 02 A6 */	mflr r0
/* 806703EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 806703F0  39 61 00 50 */	addi r11, r1, 0x50
/* 806703F4  4B CF 1D E8 */	b _savegpr_29
/* 806703F8  7C 7F 1B 78 */	mr r31, r3
/* 806703FC  3C 60 80 67 */	lis r3, lit_3726@ha
/* 80670400  3B C3 09 14 */	addi r30, r3, lit_3726@l
/* 80670404  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80670408  4B BF 7D CC */	b ChkUsed__9cBgW_BgIdCFv
/* 8067040C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80670410  40 82 00 1C */	bne lbl_8067042C
/* 80670414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80670418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067041C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80670420  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 80670424  7F E5 FB 78 */	mr r5, r31
/* 80670428  4B A0 45 E0 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_8067042C:
/* 8067042C  38 00 00 00 */	li r0, 0
/* 80670430  98 1F 05 81 */	stb r0, 0x581(r31)
/* 80670434  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80670438  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8067043C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80670440  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80670444  7C 64 02 14 */	add r3, r4, r0
/* 80670448  C0 23 00 04 */	lfs f1, 4(r3)
/* 8067044C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80670450  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80670454  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80670458  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8067045C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80670460  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80670464  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80670468  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8067046C  38 61 00 08 */	addi r3, r1, 8
/* 80670470  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80670474  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80670478  4B BF 66 BC */	b __mi__4cXyzCFRC3Vec
/* 8067047C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80670480  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80670484  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80670488  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8067048C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80670490  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80670494  C0 C1 00 2C */	lfs f6, 0x2c(r1)
/* 80670498  EC 21 01 B2 */	fmuls f1, f1, f6
/* 8067049C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 806704A0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806704A4  EC 81 00 2A */	fadds f4, f1, f0
/* 806704A8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 806704AC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 806704B0  40 80 00 0C */	bge lbl_806704BC
/* 806704B4  C0 BE 00 68 */	lfs f5, 0x68(r30)
/* 806704B8  48 00 00 08 */	b lbl_806704C0
lbl_806704BC:
/* 806704BC  C0 BE 00 6C */	lfs f5, 0x6c(r30)
lbl_806704C0:
/* 806704C0  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 806704C4  EC 05 00 B2 */	fmuls f0, f5, f2
/* 806704C8  EC 61 00 28 */	fsubs f3, f1, f0
/* 806704CC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806704D0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806704D4  EC 05 01 B2 */	fmuls f0, f5, f6
/* 806704D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 806704DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806704E0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 806704E4  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 806704E8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806704EC  7C 06 07 74 */	extsb r6, r0
/* 806704F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806704F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806704F8  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 806704FC  38 81 00 14 */	addi r4, r1, 0x14
/* 80670500  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80670504  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80670508  40 81 00 0C */	ble lbl_80670514
/* 8067050C  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80670510  48 00 00 14 */	b lbl_80670524
lbl_80670514:
/* 80670514  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80670518  3C A5 00 01 */	addis r5, r5, 1
/* 8067051C  38 05 80 00 */	addi r0, r5, -32768
/* 80670520  7C 05 07 34 */	extsh r5, r0
lbl_80670524:
/* 80670524  4B 9C 4A 5C */	b setRoom__13dSv_restart_cFRC4cXyzsSc
/* 80670528  38 60 00 01 */	li r3, 1
/* 8067052C  39 61 00 50 */	addi r11, r1, 0x50
/* 80670530  4B CF 1C F8 */	b _restgpr_29
/* 80670534  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80670538  7C 08 03 A6 */	mtlr r0
/* 8067053C  38 21 00 50 */	addi r1, r1, 0x50
/* 80670540  4E 80 00 20 */	blr 
