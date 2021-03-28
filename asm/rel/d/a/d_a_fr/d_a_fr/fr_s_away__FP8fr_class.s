lbl_8051A620:
/* 8051A620  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051A624  7C 08 02 A6 */	mflr r0
/* 8051A628  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051A62C  39 61 00 20 */	addi r11, r1, 0x20
/* 8051A630  4B E4 7B AC */	b _savegpr_29
/* 8051A634  7C 7E 1B 78 */	mr r30, r3
/* 8051A638  3C 60 80 52 */	lis r3, lit_3649@ha
/* 8051A63C  3B E3 B9 C8 */	addi r31, r3, lit_3649@l
/* 8051A640  A8 7E 05 D4 */	lha r3, 0x5d4(r30)
/* 8051A644  2C 03 00 01 */	cmpwi r3, 1
/* 8051A648  41 82 00 4C */	beq lbl_8051A694
/* 8051A64C  40 80 01 BC */	bge lbl_8051A808
/* 8051A650  2C 03 00 00 */	cmpwi r3, 0
/* 8051A654  40 80 00 08 */	bge lbl_8051A65C
/* 8051A658  48 00 01 B0 */	b lbl_8051A808
lbl_8051A65C:
/* 8051A65C  38 03 00 01 */	addi r0, r3, 1
/* 8051A660  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8051A664  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8051A668  4B D4 D2 EC */	b cM_rndF__Ff
/* 8051A66C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8051A670  EC 40 08 2A */	fadds f2, f0, f1
/* 8051A674  7F C3 F3 78 */	mr r3, r30
/* 8051A678  38 80 00 0A */	li r4, 0xa
/* 8051A67C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8051A680  38 A0 00 02 */	li r5, 2
/* 8051A684  4B FF F2 C9 */	bl anm_init__FP8fr_classifUcf
/* 8051A688  38 00 00 00 */	li r0, 0
/* 8051A68C  98 1E 05 CC */	stb r0, 0x5cc(r30)
/* 8051A690  48 00 01 78 */	b lbl_8051A808
lbl_8051A694:
/* 8051A694  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8051A698  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8051A69C  FC 00 00 1E */	fctiwz f0, f0
/* 8051A6A0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051A6A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8051A6A8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8051A6AC  41 80 01 3C */	blt lbl_8051A7E8
/* 8051A6B0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051A6B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8051A6B8  2C 00 00 19 */	cmpwi r0, 0x19
/* 8051A6BC  41 81 01 2C */	bgt lbl_8051A7E8
/* 8051A6C0  3C 60 80 52 */	lis r3, l_HIO@ha
/* 8051A6C4  38 63 BC 20 */	addi r3, r3, l_HIO@l
/* 8051A6C8  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8051A6CC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8051A6D0  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8051A6D4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8051A6D8  EC 60 00 72 */	fmuls f3, f0, f1
/* 8051A6DC  4B D5 53 60 */	b cLib_addCalc2__FPffff
/* 8051A6E0  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8051A6E4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8051A6E8  FC 00 00 1E */	fctiwz f0, f0
/* 8051A6EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051A6F0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8051A6F4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8051A6F8  41 80 00 C8 */	blt lbl_8051A7C0
/* 8051A6FC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051A700  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8051A704  2C 00 00 0F */	cmpwi r0, 0xf
/* 8051A708  41 81 00 B8 */	bgt lbl_8051A7C0
/* 8051A70C  88 1E 05 CC */	lbz r0, 0x5cc(r30)
/* 8051A710  7C 00 07 75 */	extsb. r0, r0
/* 8051A714  40 82 00 AC */	bne lbl_8051A7C0
/* 8051A718  7F C3 F3 78 */	mr r3, r30
/* 8051A71C  4B FF F6 0D */	bl way_bg_check__FP8fr_class
/* 8051A720  2C 03 00 00 */	cmpwi r3, 0
/* 8051A724  41 82 00 18 */	beq lbl_8051A73C
/* 8051A728  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8051A72C  3C 63 00 01 */	addis r3, r3, 1
/* 8051A730  38 03 80 00 */	addi r0, r3, -32768
/* 8051A734  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8051A738  48 00 00 50 */	b lbl_8051A788
lbl_8051A73C:
/* 8051A73C  7F C3 F3 78 */	mr r3, r30
/* 8051A740  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8051A744  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8051A748  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8051A74C  4B AF FF C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8051A750  7C 7D 1B 78 */	mr r29, r3
/* 8051A754  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8051A758  4B D4 D2 34 */	b cM_rndFX__Ff
/* 8051A75C  FC 00 08 1E */	fctiwz f0, f1
/* 8051A760  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051A764  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8051A768  3C 1D 00 01 */	addis r0, r29, 1
/* 8051A76C  7C 60 1A 14 */	add r3, r0, r3
/* 8051A770  38 03 80 00 */	addi r0, r3, -32768
/* 8051A774  7C 04 07 34 */	extsh r4, r0
/* 8051A778  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8051A77C  38 A0 00 01 */	li r5, 1
/* 8051A780  38 C0 20 00 */	li r6, 0x2000
/* 8051A784  4B D5 5E 84 */	b cLib_addCalcAngleS2__FPssss
lbl_8051A788:
/* 8051A788  C0 5E 05 D8 */	lfs f2, 0x5d8(r30)
/* 8051A78C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8051A790  3C 60 80 52 */	lis r3, l_HIO@ha
/* 8051A794  38 63 BC 20 */	addi r3, r3, l_HIO@l
/* 8051A798  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8051A79C  EC 01 00 2A */	fadds f0, f1, f0
/* 8051A7A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8051A7A4  40 81 00 14 */	ble lbl_8051A7B8
/* 8051A7A8  38 00 00 14 */	li r0, 0x14
/* 8051A7AC  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
/* 8051A7B0  38 00 00 00 */	li r0, 0
/* 8051A7B4  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
lbl_8051A7B8:
/* 8051A7B8  38 00 00 01 */	li r0, 1
/* 8051A7BC  98 1E 05 CC */	stb r0, 0x5cc(r30)
lbl_8051A7C0:
/* 8051A7C0  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8051A7C4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8051A7C8  FC 00 00 1E */	fctiwz f0, f0
/* 8051A7CC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051A7D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8051A7D4  2C 00 00 14 */	cmpwi r0, 0x14
/* 8051A7D8  41 80 00 30 */	blt lbl_8051A808
/* 8051A7DC  38 00 00 00 */	li r0, 0
/* 8051A7E0  98 1E 05 CC */	stb r0, 0x5cc(r30)
/* 8051A7E4  48 00 00 24 */	b lbl_8051A808
lbl_8051A7E8:
/* 8051A7E8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8051A7EC  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8051A7F0  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 8051A7F4  3C 80 80 52 */	lis r4, l_HIO@ha
/* 8051A7F8  38 84 BC 20 */	addi r4, r4, l_HIO@l
/* 8051A7FC  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 8051A800  EC 42 00 32 */	fmuls f2, f2, f0
/* 8051A804  4B D5 52 7C */	b cLib_addCalc0__FPfff
lbl_8051A808:
/* 8051A808  39 61 00 20 */	addi r11, r1, 0x20
/* 8051A80C  4B E4 7A 1C */	b _restgpr_29
/* 8051A810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051A814  7C 08 03 A6 */	mtlr r0
/* 8051A818  38 21 00 20 */	addi r1, r1, 0x20
/* 8051A81C  4E 80 00 20 */	blr 
