lbl_80740318:
/* 80740318  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8074031C  7C 08 02 A6 */	mflr r0
/* 80740320  90 01 00 44 */	stw r0, 0x44(r1)
/* 80740324  39 61 00 40 */	addi r11, r1, 0x40
/* 80740328  4B C2 1E B5 */	bl _savegpr_29
/* 8074032C  7C 7D 1B 78 */	mr r29, r3
/* 80740330  3C 60 80 74 */	lis r3, lit_3767@ha /* 0x80741BF4@ha */
/* 80740334  3B C3 1B F4 */	addi r30, r3, lit_3767@l /* 0x80741BF4@l */
/* 80740338  88 1D 05 B0 */	lbz r0, 0x5b0(r29)
/* 8074033C  2C 00 00 02 */	cmpwi r0, 2
/* 80740340  41 82 01 5C */	beq lbl_8074049C
/* 80740344  40 80 00 14 */	bge lbl_80740358
/* 80740348  2C 00 00 00 */	cmpwi r0, 0
/* 8074034C  41 82 00 1C */	beq lbl_80740368
/* 80740350  40 80 00 8C */	bge lbl_807403DC
/* 80740354  48 00 03 A8 */	b lbl_807406FC
lbl_80740358:
/* 80740358  2C 00 00 04 */	cmpwi r0, 4
/* 8074035C  41 82 02 E8 */	beq lbl_80740644
/* 80740360  40 80 03 9C */	bge lbl_807406FC
/* 80740364  48 00 02 00 */	b lbl_80740564
lbl_80740368:
/* 80740368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074036C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80740370  38 80 00 10 */	li r4, 0x10
/* 80740374  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80740378  7C 05 07 74 */	extsb r5, r0
/* 8074037C  4B 8F 4F E5 */	bl isSwitch__10dSv_info_cCFii
/* 80740380  2C 03 00 00 */	cmpwi r3, 0
/* 80740384  41 82 00 4C */	beq lbl_807403D0
/* 80740388  88 7D 05 B0 */	lbz r3, 0x5b0(r29)
/* 8074038C  38 03 00 01 */	addi r0, r3, 1
/* 80740390  98 1D 05 B0 */	stb r0, 0x5b0(r29)
/* 80740394  38 00 00 64 */	li r0, 0x64
/* 80740398  90 1D 06 28 */	stw r0, 0x628(r29)
/* 8074039C  38 00 00 32 */	li r0, 0x32
/* 807403A0  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 807403A4  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 807403A8  28 00 00 04 */	cmplwi r0, 4
/* 807403AC  40 82 00 24 */	bne lbl_807403D0
/* 807403B0  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807403B4  4B B2 75 A1 */	bl cM_rndF__Ff
/* 807403B8  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 807403BC  EC 00 08 2A */	fadds f0, f0, f1
/* 807403C0  FC 00 00 1E */	fctiwz f0, f0
/* 807403C4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807403C8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807403CC  B0 1D 05 EC */	sth r0, 0x5ec(r29)
lbl_807403D0:
/* 807403D0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807403D4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807403D8  48 00 03 24 */	b lbl_807406FC
lbl_807403DC:
/* 807403DC  A8 1D 05 EC */	lha r0, 0x5ec(r29)
/* 807403E0  2C 00 00 00 */	cmpwi r0, 0
/* 807403E4  40 82 00 24 */	bne lbl_80740408
/* 807403E8  80 1D 06 28 */	lwz r0, 0x628(r29)
/* 807403EC  2C 00 00 04 */	cmpwi r0, 4
/* 807403F0  41 82 00 18 */	beq lbl_80740408
/* 807403F4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807403F8  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 807403FC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80740400  38 00 00 04 */	li r0, 4
/* 80740404  90 1D 06 28 */	stw r0, 0x628(r29)
lbl_80740408:
/* 80740408  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 8074040C  38 63 00 0C */	addi r3, r3, 0xc
/* 80740410  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80740414  4B BE 80 19 */	bl checkPass__12J3DFrameCtrlFf
/* 80740418  2C 03 00 00 */	cmpwi r3, 0
/* 8074041C  41 82 00 50 */	beq lbl_8074046C
/* 80740420  80 1D 06 28 */	lwz r0, 0x628(r29)
/* 80740424  2C 00 00 04 */	cmpwi r0, 4
/* 80740428  40 82 00 44 */	bne lbl_8074046C
/* 8074042C  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80740430  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80740434  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070580@ha */
/* 80740438  38 03 05 80 */	addi r0, r3, 0x0580 /* 0x00070580@l */
/* 8074043C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80740440  38 7D 06 74 */	addi r3, r29, 0x674
/* 80740444  38 81 00 20 */	addi r4, r1, 0x20
/* 80740448  38 A0 00 00 */	li r5, 0
/* 8074044C  38 C0 FF FF */	li r6, -1
/* 80740450  81 9D 06 74 */	lwz r12, 0x674(r29)
/* 80740454  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80740458  7D 89 03 A6 */	mtctr r12
/* 8074045C  4E 80 04 21 */	bctrl 
/* 80740460  88 7D 05 B0 */	lbz r3, 0x5b0(r29)
/* 80740464  38 03 00 01 */	addi r0, r3, 1
/* 80740468  98 1D 05 B0 */	stb r0, 0x5b0(r29)
lbl_8074046C:
/* 8074046C  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 80740470  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80740474  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80740478  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074047C  40 81 02 80 */	ble lbl_807406FC
/* 80740480  80 1D 06 28 */	lwz r0, 0x628(r29)
/* 80740484  2C 00 00 04 */	cmpwi r0, 4
/* 80740488  40 82 02 74 */	bne lbl_807406FC
/* 8074048C  7F A3 EB 78 */	mr r3, r29
/* 80740490  38 80 20 00 */	li r4, 0x2000
/* 80740494  4B FF FB 91 */	bl SetHeadAngle__8daE_PH_cFs
/* 80740498  48 00 02 64 */	b lbl_807406FC
lbl_8074049C:
/* 8074049C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 807404A0  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 807404A4  EC 01 00 2A */	fadds f0, f1, f0
/* 807404A8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807404AC  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 807404B0  38 80 00 01 */	li r4, 1
/* 807404B4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807404B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807404BC  40 82 00 18 */	bne lbl_807404D4
/* 807404C0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807404C4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807404C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807404CC  41 82 00 08 */	beq lbl_807404D4
/* 807404D0  38 80 00 00 */	li r4, 0
lbl_807404D4:
/* 807404D4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807404D8  41 82 00 30 */	beq lbl_80740508
/* 807404DC  88 7D 05 B0 */	lbz r3, 0x5b0(r29)
/* 807404E0  38 03 00 01 */	addi r0, r3, 1
/* 807404E4  98 1D 05 B0 */	stb r0, 0x5b0(r29)
/* 807404E8  38 00 00 32 */	li r0, 0x32
/* 807404EC  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 807404F0  7F A3 EB 78 */	mr r3, r29
/* 807404F4  38 80 00 0E */	li r4, 0xe
/* 807404F8  38 A0 00 02 */	li r5, 2
/* 807404FC  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80740500  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80740504  4B FF D6 25 */	bl SetAnm__8daE_PH_cFiiff
lbl_80740508:
/* 80740508  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8074050C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80740510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80740514  4C 40 13 82 */	cror 2, 0, 2
/* 80740518  40 82 00 3C */	bne lbl_80740554
/* 8074051C  7F A3 EB 78 */	mr r3, r29
/* 80740520  38 80 10 00 */	li r4, 0x1000
/* 80740524  4B FF FB 01 */	bl SetHeadAngle__8daE_PH_cFs
/* 80740528  38 7D 06 12 */	addi r3, r29, 0x612
/* 8074052C  38 80 10 00 */	li r4, 0x1000
/* 80740530  38 A0 00 10 */	li r5, 0x10
/* 80740534  38 C0 10 00 */	li r6, 0x1000
/* 80740538  4B B3 00 D1 */	bl cLib_addCalcAngleS2__FPssss
/* 8074053C  38 7D 06 12 */	addi r3, r29, 0x612
/* 80740540  38 80 10 00 */	li r4, 0x1000
/* 80740544  38 A0 00 10 */	li r5, 0x10
/* 80740548  38 C0 10 00 */	li r6, 0x1000
/* 8074054C  4B B3 00 BD */	bl cLib_addCalcAngleS2__FPssss
/* 80740550  48 00 01 AC */	b lbl_807406FC
lbl_80740554:
/* 80740554  7F A3 EB 78 */	mr r3, r29
/* 80740558  38 80 20 00 */	li r4, 0x2000
/* 8074055C  4B FF FA C9 */	bl SetHeadAngle__8daE_PH_cFs
/* 80740560  48 00 01 9C */	b lbl_807406FC
lbl_80740564:
/* 80740564  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80740568  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 8074056C  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 80740570  C0 7E 01 04 */	lfs f3, 0x104(r30)
/* 80740574  4B B2 F4 C9 */	bl cLib_addCalc2__FPffff
/* 80740578  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 8074057C  28 00 00 05 */	cmplwi r0, 5
/* 80740580  40 82 00 64 */	bne lbl_807405E4
/* 80740584  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80740588  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8074058C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80740590  4C 41 13 82 */	cror 2, 1, 2
/* 80740594  40 82 00 2C */	bne lbl_807405C0
/* 80740598  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8074059C  7F A3 EB 78 */	mr r3, r29
/* 807405A0  38 80 10 00 */	li r4, 0x1000
/* 807405A4  4B FF FA 81 */	bl SetHeadAngle__8daE_PH_cFs
/* 807405A8  38 7D 06 12 */	addi r3, r29, 0x612
/* 807405AC  38 80 10 00 */	li r4, 0x1000
/* 807405B0  38 A0 00 10 */	li r5, 0x10
/* 807405B4  38 C0 10 00 */	li r6, 0x1000
/* 807405B8  4B B3 00 51 */	bl cLib_addCalcAngleS2__FPssss
/* 807405BC  48 00 00 34 */	b lbl_807405F0
lbl_807405C0:
/* 807405C0  7F A3 EB 78 */	mr r3, r29
/* 807405C4  38 80 10 00 */	li r4, 0x1000
/* 807405C8  4B FF FA 5D */	bl SetHeadAngle__8daE_PH_cFs
/* 807405CC  38 7D 06 12 */	addi r3, r29, 0x612
/* 807405D0  38 80 10 00 */	li r4, 0x1000
/* 807405D4  38 A0 00 10 */	li r5, 0x10
/* 807405D8  38 C0 10 00 */	li r6, 0x1000
/* 807405DC  4B B3 00 2D */	bl cLib_addCalcAngleS2__FPssss
/* 807405E0  48 00 00 10 */	b lbl_807405F0
lbl_807405E4:
/* 807405E4  7F A3 EB 78 */	mr r3, r29
/* 807405E8  38 80 15 00 */	li r4, 0x1500
/* 807405EC  4B FF FA 39 */	bl SetHeadAngle__8daE_PH_cFs
lbl_807405F0:
/* 807405F0  A8 1D 05 EC */	lha r0, 0x5ec(r29)
/* 807405F4  2C 00 00 00 */	cmpwi r0, 0
/* 807405F8  40 82 00 2C */	bne lbl_80740624
/* 807405FC  88 7D 05 B0 */	lbz r3, 0x5b0(r29)
/* 80740600  38 03 00 01 */	addi r0, r3, 1
/* 80740604  98 1D 05 B0 */	stb r0, 0x5b0(r29)
/* 80740608  88 7D 05 B1 */	lbz r3, 0x5b1(r29)
/* 8074060C  38 03 00 01 */	addi r0, r3, 1
/* 80740610  98 1D 05 B1 */	stb r0, 0x5b1(r29)
/* 80740614  38 00 01 2C */	li r0, 0x12c
/* 80740618  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 8074061C  38 00 01 68 */	li r0, 0x168
/* 80740620  B0 1D 05 EE */	sth r0, 0x5ee(r29)
lbl_80740624:
/* 80740624  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80740628  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8074062C  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80740630  EC 01 00 24 */	fdivs f0, f1, f0
/* 80740634  EC 02 00 2A */	fadds f0, f2, f0
/* 80740638  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 8074063C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80740640  48 00 00 BC */	b lbl_807406FC
lbl_80740644:
/* 80740644  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80740648  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 8074064C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80740650  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 80740654  4B B2 F3 E9 */	bl cLib_addCalc2__FPffff
/* 80740658  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 8074065C  28 00 00 05 */	cmplwi r0, 5
/* 80740660  40 82 00 4C */	bne lbl_807406AC
/* 80740664  A8 1D 05 EC */	lha r0, 0x5ec(r29)
/* 80740668  2C 00 00 DC */	cmpwi r0, 0xdc
/* 8074066C  40 81 00 30 */	ble lbl_8074069C
/* 80740670  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80740674  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80740678  7F A3 EB 78 */	mr r3, r29
/* 8074067C  38 80 10 00 */	li r4, 0x1000
/* 80740680  4B FF F9 A5 */	bl SetHeadAngle__8daE_PH_cFs
/* 80740684  38 7D 06 12 */	addi r3, r29, 0x612
/* 80740688  38 80 10 00 */	li r4, 0x1000
/* 8074068C  38 A0 00 10 */	li r5, 0x10
/* 80740690  38 C0 10 00 */	li r6, 0x1000
/* 80740694  4B B2 FF 75 */	bl cLib_addCalcAngleS2__FPssss
/* 80740698  48 00 00 20 */	b lbl_807406B8
lbl_8074069C:
/* 8074069C  7F A3 EB 78 */	mr r3, r29
/* 807406A0  38 80 15 00 */	li r4, 0x1500
/* 807406A4  4B FF F9 81 */	bl SetHeadAngle__8daE_PH_cFs
/* 807406A8  48 00 00 10 */	b lbl_807406B8
lbl_807406AC:
/* 807406AC  7F A3 EB 78 */	mr r3, r29
/* 807406B0  38 80 15 00 */	li r4, 0x1500
/* 807406B4  4B FF F9 71 */	bl SetHeadAngle__8daE_PH_cFs
lbl_807406B8:
/* 807406B8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807406BC  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 807406C0  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 807406C4  EC 01 00 24 */	fdivs f0, f1, f0
/* 807406C8  EC 02 00 2A */	fadds f0, f2, f0
/* 807406CC  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 807406D0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807406D4  A8 1D 05 EE */	lha r0, 0x5ee(r29)
/* 807406D8  2C 00 00 00 */	cmpwi r0, 0
/* 807406DC  41 82 00 18 */	beq lbl_807406F4
/* 807406E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807406E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807406E8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 807406EC  28 00 00 00 */	cmplwi r0, 0
/* 807406F0  40 82 00 0C */	bne lbl_807406FC
lbl_807406F4:
/* 807406F4  7F A3 EB 78 */	mr r3, r29
/* 807406F8  4B 8D 95 85 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_807406FC:
/* 807406FC  34 7D 09 38 */	addic. r3, r29, 0x938
/* 80740700  41 82 00 34 */	beq lbl_80740734
/* 80740704  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80740708  C0 03 00 00 */	lfs f0, 0(r3)
/* 8074070C  EC 01 00 2A */	fadds f0, f1, f0
/* 80740710  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80740714  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80740718  C0 03 00 04 */	lfs f0, 4(r3)
/* 8074071C  EC 01 00 2A */	fadds f0, f1, f0
/* 80740720  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80740724  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80740728  C0 03 00 08 */	lfs f0, 8(r3)
/* 8074072C  EC 01 00 2A */	fadds f0, f1, f0
/* 80740730  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_80740734:
/* 80740734  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80740738  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 8074073C  EC 01 00 2A */	fadds f0, f1, f0
/* 80740740  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80740744  80 1D 06 28 */	lwz r0, 0x628(r29)
/* 80740748  2C 00 00 04 */	cmpwi r0, 4
/* 8074074C  40 82 01 5C */	bne lbl_807408A8
/* 80740750  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80740754  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80740758  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8074075C  38 00 00 FF */	li r0, 0xff
/* 80740760  90 01 00 08 */	stw r0, 8(r1)
/* 80740764  38 80 00 00 */	li r4, 0
/* 80740768  90 81 00 0C */	stw r4, 0xc(r1)
/* 8074076C  38 00 FF FF */	li r0, -1
/* 80740770  90 01 00 10 */	stw r0, 0x10(r1)
/* 80740774  90 81 00 14 */	stw r4, 0x14(r1)
/* 80740778  90 81 00 18 */	stw r4, 0x18(r1)
/* 8074077C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80740780  80 9D 06 00 */	lwz r4, 0x600(r29)
/* 80740784  38 A0 00 00 */	li r5, 0
/* 80740788  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008C6F@ha */
/* 8074078C  38 C6 8C 6F */	addi r6, r6, 0x8C6F /* 0x00008C6F@l */
/* 80740790  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80740794  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80740798  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 8074079C  39 40 00 00 */	li r10, 0
/* 807407A0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807407A4  4B 90 CD 29 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807407A8  90 7D 06 00 */	stw r3, 0x600(r29)
/* 807407AC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807407B0  38 00 00 FF */	li r0, 0xff
/* 807407B4  90 01 00 08 */	stw r0, 8(r1)
/* 807407B8  38 80 00 00 */	li r4, 0
/* 807407BC  90 81 00 0C */	stw r4, 0xc(r1)
/* 807407C0  38 00 FF FF */	li r0, -1
/* 807407C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807407C8  90 81 00 14 */	stw r4, 0x14(r1)
/* 807407CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 807407D0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807407D4  80 9D 06 04 */	lwz r4, 0x604(r29)
/* 807407D8  38 A0 00 00 */	li r5, 0
/* 807407DC  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008C70@ha */
/* 807407E0  38 C6 8C 70 */	addi r6, r6, 0x8C70 /* 0x00008C70@l */
/* 807407E4  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 807407E8  39 1D 01 0C */	addi r8, r29, 0x10c
/* 807407EC  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 807407F0  39 40 00 00 */	li r10, 0
/* 807407F4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807407F8  4B 90 CC D5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807407FC  90 7D 06 04 */	stw r3, 0x604(r29)
/* 80740800  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80740804  38 00 00 FF */	li r0, 0xff
/* 80740808  90 01 00 08 */	stw r0, 8(r1)
/* 8074080C  38 80 00 00 */	li r4, 0
/* 80740810  90 81 00 0C */	stw r4, 0xc(r1)
/* 80740814  38 00 FF FF */	li r0, -1
/* 80740818  90 01 00 10 */	stw r0, 0x10(r1)
/* 8074081C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80740820  90 81 00 18 */	stw r4, 0x18(r1)
/* 80740824  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80740828  80 9D 06 08 */	lwz r4, 0x608(r29)
/* 8074082C  38 A0 00 00 */	li r5, 0
/* 80740830  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008C71@ha */
/* 80740834  38 C6 8C 71 */	addi r6, r6, 0x8C71 /* 0x00008C71@l */
/* 80740838  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 8074083C  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80740840  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 80740844  39 40 00 00 */	li r10, 0
/* 80740848  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8074084C  4B 90 CC 81 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80740850  90 7D 06 08 */	stw r3, 0x608(r29)
/* 80740854  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80740858  38 00 00 FF */	li r0, 0xff
/* 8074085C  90 01 00 08 */	stw r0, 8(r1)
/* 80740860  38 80 00 00 */	li r4, 0
/* 80740864  90 81 00 0C */	stw r4, 0xc(r1)
/* 80740868  38 00 FF FF */	li r0, -1
/* 8074086C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80740870  90 81 00 14 */	stw r4, 0x14(r1)
/* 80740874  90 81 00 18 */	stw r4, 0x18(r1)
/* 80740878  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8074087C  80 9D 06 0C */	lwz r4, 0x60c(r29)
/* 80740880  38 A0 00 00 */	li r5, 0
/* 80740884  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008C72@ha */
/* 80740888  38 C6 8C 72 */	addi r6, r6, 0x8C72 /* 0x00008C72@l */
/* 8074088C  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80740890  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80740894  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 80740898  39 40 00 00 */	li r10, 0
/* 8074089C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807408A0  4B 90 CC 2D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807408A4  90 7D 06 0C */	stw r3, 0x60c(r29)
lbl_807408A8:
/* 807408A8  39 61 00 40 */	addi r11, r1, 0x40
/* 807408AC  4B C2 19 7D */	bl _restgpr_29
/* 807408B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807408B4  7C 08 03 A6 */	mtlr r0
/* 807408B8  38 21 00 40 */	addi r1, r1, 0x40
/* 807408BC  4E 80 00 20 */	blr 
