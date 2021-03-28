lbl_80B2E2C4:
/* 80B2E2C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B2E2C8  7C 08 02 A6 */	mflr r0
/* 80B2E2CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B2E2D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B2E2D4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B2E2D8  7C 7E 1B 78 */	mr r30, r3
/* 80B2E2DC  3C 60 80 B3 */	lis r3, lit_3717@ha
/* 80B2E2E0  3B E3 F0 80 */	addi r31, r3, lit_3717@l
/* 80B2E2E4  A8 1E 05 A8 */	lha r0, 0x5a8(r30)
/* 80B2E2E8  2C 00 00 00 */	cmpwi r0, 0
/* 80B2E2EC  41 82 00 98 */	beq lbl_80B2E384
/* 80B2E2F0  40 80 00 10 */	bge lbl_80B2E300
/* 80B2E2F4  2C 00 FF FF */	cmpwi r0, -1
/* 80B2E2F8  40 80 00 14 */	bge lbl_80B2E30C
/* 80B2E2FC  48 00 02 08 */	b lbl_80B2E504
lbl_80B2E300:
/* 80B2E300  2C 00 00 02 */	cmpwi r0, 2
/* 80B2E304  40 80 02 00 */	bge lbl_80B2E504
/* 80B2E308  48 00 01 1C */	b lbl_80B2E424
lbl_80B2E30C:
/* 80B2E30C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B2E310  4B 73 96 44 */	b cM_rndF__Ff
/* 80B2E314  FC 00 08 1E */	fctiwz f0, f1
/* 80B2E318  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B2E31C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B2E320  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B2E324  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80B2E328  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B2E32C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B2E330  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80B2E334  4B 73 96 20 */	b cM_rndF__Ff
/* 80B2E338  FC 00 08 50 */	fneg f0, f1
/* 80B2E33C  FC 00 00 1E */	fctiwz f0, f0
/* 80B2E340  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B2E344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2E348  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80B2E34C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80B2E350  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80B2E354  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80B2E358  4B 73 95 FC */	b cM_rndF__Ff
/* 80B2E35C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B2E360  EC 00 08 2A */	fadds f0, f0, f1
/* 80B2E364  FC 00 00 1E */	fctiwz f0, f0
/* 80B2E368  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B2E36C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B2E370  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80B2E374  38 00 00 01 */	li r0, 1
/* 80B2E378  B0 1E 05 A8 */	sth r0, 0x5a8(r30)
/* 80B2E37C  98 1E 05 E6 */	stb r0, 0x5e6(r30)
/* 80B2E380  48 00 01 84 */	b lbl_80B2E504
lbl_80B2E384:
/* 80B2E384  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B2E388  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80B2E38C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B2E390  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B2E394  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B2E398  4B 73 95 BC */	b cM_rndF__Ff
/* 80B2E39C  FC 00 08 1E */	fctiwz f0, f1
/* 80B2E3A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B2E3A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B2E3A8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B2E3AC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80B2E3B0  4B 73 95 A4 */	b cM_rndF__Ff
/* 80B2E3B4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80B2E3B8  EC 00 08 2A */	fadds f0, f0, f1
/* 80B2E3BC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B2E3C0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80B2E3C4  4B 73 95 90 */	b cM_rndF__Ff
/* 80B2E3C8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80B2E3CC  EC 00 08 2A */	fadds f0, f0, f1
/* 80B2E3D0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B2E3D4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80B2E3D8  4B 73 95 7C */	b cM_rndF__Ff
/* 80B2E3DC  FC 00 08 50 */	fneg f0, f1
/* 80B2E3E0  FC 00 00 1E */	fctiwz f0, f0
/* 80B2E3E4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B2E3E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2E3EC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80B2E3F0  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80B2E3F4  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80B2E3F8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80B2E3FC  4B 73 95 58 */	b cM_rndF__Ff
/* 80B2E400  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B2E404  EC 00 08 2A */	fadds f0, f0, f1
/* 80B2E408  FC 00 00 1E */	fctiwz f0, f0
/* 80B2E40C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B2E410  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B2E414  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80B2E418  38 00 00 01 */	li r0, 1
/* 80B2E41C  B0 1E 05 A8 */	sth r0, 0x5a8(r30)
/* 80B2E420  98 1E 05 E6 */	stb r0, 0x5e6(r30)
lbl_80B2E424:
/* 80B2E424  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B2E428  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80B2E42C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2E430  4C 40 13 82 */	cror 2, 0, 2
/* 80B2E434  40 82 00 64 */	bne lbl_80B2E498
/* 80B2E438  A8 1E 05 E8 */	lha r0, 0x5e8(r30)
/* 80B2E43C  2C 00 00 00 */	cmpwi r0, 0
/* 80B2E440  40 82 00 58 */	bne lbl_80B2E498
/* 80B2E444  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80B2E448  4B 73 95 44 */	b cM_rndFX__Ff
/* 80B2E44C  FC 00 08 1E */	fctiwz f0, f1
/* 80B2E450  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B2E454  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80B2E458  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B2E45C  7C 00 1A 14 */	add r0, r0, r3
/* 80B2E460  B0 1E 05 CA */	sth r0, 0x5ca(r30)
/* 80B2E464  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80B2E468  4B 73 94 EC */	b cM_rndF__Ff
/* 80B2E46C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80B2E470  EC 00 08 2A */	fadds f0, f0, f1
/* 80B2E474  FC 00 00 1E */	fctiwz f0, f0
/* 80B2E478  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B2E47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2E480  B0 1E 05 E8 */	sth r0, 0x5e8(r30)
/* 80B2E484  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80B2E488  4B 73 94 CC */	b cM_rndF__Ff
/* 80B2E48C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80B2E490  EC 00 08 2A */	fadds f0, f0, f1
/* 80B2E494  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80B2E498:
/* 80B2E498  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80B2E49C  28 00 00 06 */	cmplwi r0, 6
/* 80B2E4A0  40 82 00 10 */	bne lbl_80B2E4B0
/* 80B2E4A4  7F C3 F3 78 */	mr r3, r30
/* 80B2E4A8  4B 4E B7 D4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80B2E4AC  48 00 00 3C */	b lbl_80B2E4E8
lbl_80B2E4B0:
/* 80B2E4B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B2E4B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B2E4B8  38 63 5B 54 */	addi r3, r3, 0x5b54
/* 80B2E4BC  7F C4 F3 78 */	mr r4, r30
/* 80B2E4C0  38 A0 00 74 */	li r5, 0x74
/* 80B2E4C4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80B2E4C8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80B2E4CC  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 80B2E4D0  38 C0 50 00 */	li r6, 0x5000
/* 80B2E4D4  38 E0 00 01 */	li r7, 1
/* 80B2E4D8  4B 54 55 30 */	b request__11dAttCatch_cFP10fopAc_ac_cUcfffsi
/* 80B2E4DC  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80B2E4E0  60 00 00 40 */	ori r0, r0, 0x40
/* 80B2E4E4  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_80B2E4E8:
/* 80B2E4E8  A8 1E 05 EA */	lha r0, 0x5ea(r30)
/* 80B2E4EC  2C 00 00 00 */	cmpwi r0, 0
/* 80B2E4F0  40 82 00 14 */	bne lbl_80B2E504
/* 80B2E4F4  38 00 00 02 */	li r0, 2
/* 80B2E4F8  B0 1E 05 A6 */	sth r0, 0x5a6(r30)
/* 80B2E4FC  38 00 00 00 */	li r0, 0
/* 80B2E500  B0 1E 05 A8 */	sth r0, 0x5a8(r30)
lbl_80B2E504:
/* 80B2E504  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80B2E508  A8 9E 05 CA */	lha r4, 0x5ca(r30)
/* 80B2E50C  38 A0 00 04 */	li r5, 4
/* 80B2E510  38 C0 04 00 */	li r6, 0x400
/* 80B2E514  4B 74 20 F4 */	b cLib_addCalcAngleS2__FPssss
/* 80B2E518  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80B2E51C  38 80 00 00 */	li r4, 0
/* 80B2E520  38 A0 00 02 */	li r5, 2
/* 80B2E524  38 C0 08 00 */	li r6, 0x800
/* 80B2E528  4B 74 20 E0 */	b cLib_addCalcAngleS2__FPssss
/* 80B2E52C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B2E530  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B2E534  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B2E538  7C 08 03 A6 */	mtlr r0
/* 80B2E53C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B2E540  4E 80 00 20 */	blr 
