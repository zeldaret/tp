lbl_8067B378:
/* 8067B378  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8067B37C  7C 08 02 A6 */	mflr r0
/* 8067B380  90 01 00 54 */	stw r0, 0x54(r1)
/* 8067B384  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8067B388  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8067B38C  7C 7E 1B 78 */	mr r30, r3
/* 8067B390  3C 80 80 68 */	lis r4, lit_3789@ha
/* 8067B394  3B E4 C3 FC */	addi r31, r4, lit_3789@l
/* 8067B398  A8 83 06 8C */	lha r4, 0x68c(r3)
/* 8067B39C  38 04 00 01 */	addi r0, r4, 1
/* 8067B3A0  B0 03 06 8C */	sth r0, 0x68c(r3)
/* 8067B3A4  4B FF DE E1 */	bl setCcCylinder__10e_ai_classFv
/* 8067B3A8  38 60 00 00 */	li r3, 0
/* 8067B3AC  38 00 00 04 */	li r0, 4
/* 8067B3B0  7C 09 03 A6 */	mtctr r0
lbl_8067B3B4:
/* 8067B3B4  38 A3 06 B0 */	addi r5, r3, 0x6b0
/* 8067B3B8  7C 9E 2A AE */	lhax r4, r30, r5
/* 8067B3BC  2C 04 00 00 */	cmpwi r4, 0
/* 8067B3C0  41 82 00 0C */	beq lbl_8067B3CC
/* 8067B3C4  38 04 FF FF */	addi r0, r4, -1
/* 8067B3C8  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_8067B3CC:
/* 8067B3CC  38 63 00 02 */	addi r3, r3, 2
/* 8067B3D0  42 00 FF E4 */	bdnz lbl_8067B3B4
/* 8067B3D4  A8 7E 06 B8 */	lha r3, 0x6b8(r30)
/* 8067B3D8  2C 03 00 00 */	cmpwi r3, 0
/* 8067B3DC  41 82 00 0C */	beq lbl_8067B3E8
/* 8067B3E0  38 03 FF FF */	addi r0, r3, -1
/* 8067B3E4  B0 1E 06 B8 */	sth r0, 0x6b8(r30)
lbl_8067B3E8:
/* 8067B3E8  A8 7E 06 BC */	lha r3, 0x6bc(r30)
/* 8067B3EC  2C 03 00 00 */	cmpwi r3, 0
/* 8067B3F0  41 82 00 0C */	beq lbl_8067B3FC
/* 8067B3F4  38 03 FF FF */	addi r0, r3, -1
/* 8067B3F8  B0 1E 06 BC */	sth r0, 0x6bc(r30)
lbl_8067B3FC:
/* 8067B3FC  7F C3 F3 78 */	mr r3, r30
/* 8067B400  4B FF FC 25 */	bl action__10e_ai_classFv
/* 8067B404  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 8067B408  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8067B40C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8067B410  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8067B414  7F C3 F3 78 */	mr r3, r30
/* 8067B418  38 9E 05 D4 */	addi r4, r30, 0x5d4
/* 8067B41C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8067B420  38 C1 00 20 */	addi r6, r1, 0x20
/* 8067B424  48 00 0B B1 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8067B428  7F C3 F3 78 */	mr r3, r30
/* 8067B42C  4B FF FE F1 */	bl AttentionSet__10e_ai_classFv
/* 8067B430  A8 1E 06 8E */	lha r0, 0x68e(r30)
/* 8067B434  2C 00 00 00 */	cmpwi r0, 0
/* 8067B438  41 82 00 10 */	beq lbl_8067B448
/* 8067B43C  7F C3 F3 78 */	mr r3, r30
/* 8067B440  4B FF FE 71 */	bl PlayerWaySet__10e_ai_classFv
/* 8067B444  48 00 00 20 */	b lbl_8067B464
lbl_8067B448:
/* 8067B448  80 1E 0C 64 */	lwz r0, 0xc64(r30)
/* 8067B44C  60 00 00 01 */	ori r0, r0, 1
/* 8067B450  90 1E 0C 64 */	stw r0, 0xc64(r30)
/* 8067B454  38 00 00 02 */	li r0, 2
/* 8067B458  98 1E 0C 82 */	stb r0, 0xc82(r30)
/* 8067B45C  38 00 00 01 */	li r0, 1
/* 8067B460  98 1E 0D 28 */	stb r0, 0xd28(r30)
lbl_8067B464:
/* 8067B464  7F C3 F3 78 */	mr r3, r30
/* 8067B468  48 00 01 31 */	bl setBaseMtx__10e_ai_classFv
/* 8067B46C  88 1E 06 7C */	lbz r0, 0x67c(r30)
/* 8067B470  7C 00 07 75 */	extsb. r0, r0
/* 8067B474  41 82 00 C0 */	beq lbl_8067B534
/* 8067B478  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8067B47C  80 63 00 04 */	lwz r3, 4(r3)
/* 8067B480  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8067B484  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8067B488  38 63 00 60 */	addi r3, r3, 0x60
/* 8067B48C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8067B490  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8067B494  80 84 00 00 */	lwz r4, 0(r4)
/* 8067B498  4B CC B0 18 */	b PSMTXCopy
/* 8067B49C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8067B4A0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8067B4A4  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8067B4A8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8067B4AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067B4B0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8067B4B4  38 61 00 38 */	addi r3, r1, 0x38
/* 8067B4B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8067B4BC  4B BF 5A 30 */	b MtxPosition__FP4cXyzP4cXyz
/* 8067B4C0  38 7E 0A 7C */	addi r3, r30, 0xa7c
/* 8067B4C4  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8067B4C8  4B BF 42 40 */	b SetR__8cM3dGSphFf
/* 8067B4CC  38 7E 0A 7C */	addi r3, r30, 0xa7c
/* 8067B4D0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8067B4D4  4B BF 41 74 */	b SetC__8cM3dGSphFRC4cXyz
/* 8067B4D8  88 1E 06 7C */	lbz r0, 0x67c(r30)
/* 8067B4DC  2C 00 00 02 */	cmpwi r0, 2
/* 8067B4E0  40 82 00 48 */	bne lbl_8067B528
/* 8067B4E4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8067B4E8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8067B4EC  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8067B4F0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8067B4F4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067B4F8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8067B4FC  38 61 00 38 */	addi r3, r1, 0x38
/* 8067B500  38 81 00 2C */	addi r4, r1, 0x2c
/* 8067B504  4B BF 59 E8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8067B508  38 7E 0D 30 */	addi r3, r30, 0xd30
/* 8067B50C  38 9E 0D 38 */	addi r4, r30, 0xd38
/* 8067B510  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8067B514  38 DE 04 E4 */	addi r6, r30, 0x4e4
/* 8067B518  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067B51C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8067B520  39 00 00 01 */	li r8, 1
/* 8067B524  4B 9A 1A FC */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_8067B528:
/* 8067B528  38 00 00 00 */	li r0, 0
/* 8067B52C  98 1E 06 7C */	stb r0, 0x67c(r30)
/* 8067B530  48 00 00 38 */	b lbl_8067B568
lbl_8067B534:
/* 8067B534  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 8067B538  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8067B53C  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8067B540  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8067B544  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 8067B548  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8067B54C  38 61 00 08 */	addi r3, r1, 8
/* 8067B550  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8067B554  38 A1 00 14 */	addi r5, r1, 0x14
/* 8067B558  4B BE B5 8C */	b __pl__4cXyzCFRC3Vec
/* 8067B55C  38 7E 0A 7C */	addi r3, r30, 0xa7c
/* 8067B560  38 81 00 08 */	addi r4, r1, 8
/* 8067B564  4B BF 40 E4 */	b SetC__8cM3dGSphFRC4cXyz
lbl_8067B568:
/* 8067B568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067B56C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067B570  38 63 23 3C */	addi r3, r3, 0x233c
/* 8067B574  38 9E 09 58 */	addi r4, r30, 0x958
/* 8067B578  4B BE 96 30 */	b Set__4cCcSFP8cCcD_Obj
/* 8067B57C  38 60 00 01 */	li r3, 1
/* 8067B580  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8067B584  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8067B588  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8067B58C  7C 08 03 A6 */	mtlr r0
/* 8067B590  38 21 00 50 */	addi r1, r1, 0x50
/* 8067B594  4E 80 00 20 */	blr 
