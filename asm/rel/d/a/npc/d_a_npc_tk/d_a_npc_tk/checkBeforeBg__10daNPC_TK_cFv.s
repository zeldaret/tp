lbl_80B016D4:
/* 80B016D4  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80B016D8  7C 08 02 A6 */	mflr r0
/* 80B016DC  90 01 01 04 */	stw r0, 0x104(r1)
/* 80B016E0  39 61 01 00 */	addi r11, r1, 0x100
/* 80B016E4  4B 86 0A F5 */	bl _savegpr_28
/* 80B016E8  7C 7C 1B 78 */	mr r28, r3
/* 80B016EC  3C 60 80 B1 */	lis r3, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B016F0  3B E3 C1 C4 */	addi r31, r3, lit_3999@l /* 0x80B0C1C4@l */
/* 80B016F4  3B A0 00 00 */	li r29, 0
/* 80B016F8  38 61 00 74 */	addi r3, r1, 0x74
/* 80B016FC  4B 57 65 6D */	bl __ct__11dBgS_LinChkFv
/* 80B01700  C0 5C 04 D0 */	lfs f2, 0x4d0(r28)
/* 80B01704  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80B01708  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B0170C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B01710  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80B01714  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B01718  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B0171C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B01720  38 83 00 04 */	addi r4, r3, 4
/* 80B01724  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 80B01728  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0172C  7C 64 04 2E */	lfsx f3, r4, r0
/* 80B01730  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80B01734  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80B01738  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80B0173C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B01740  7C 03 04 2E */	lfsx f0, r3, r0
/* 80B01744  EC 03 00 32 */	fmuls f0, f3, f0
/* 80B01748  EC 02 00 2A */	fadds f0, f2, f0
/* 80B0174C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B01750  7C 04 04 2E */	lfsx f0, r4, r0
/* 80B01754  EC 03 00 32 */	fmuls f0, f3, f0
/* 80B01758  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0175C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B01760  38 61 00 74 */	addi r3, r1, 0x74
/* 80B01764  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B01768  38 A1 00 14 */	addi r5, r1, 0x14
/* 80B0176C  38 C0 00 00 */	li r6, 0
/* 80B01770  4B 57 65 F5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80B01774  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B01778  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0177C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80B01780  7F C3 F3 78 */	mr r3, r30
/* 80B01784  38 81 00 74 */	addi r4, r1, 0x74
/* 80B01788  4B 57 2C 2D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80B0178C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B01790  41 82 00 08 */	beq lbl_80B01798
/* 80B01794  3B A0 00 01 */	li r29, 1
lbl_80B01798:
/* 80B01798  38 61 00 20 */	addi r3, r1, 0x20
/* 80B0179C  4B 57 5D E1 */	bl __ct__11dBgS_GndChkFv
/* 80B017A0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B017A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B017A8  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80B017AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B017B0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B017B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B017B8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B017BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80B017C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B017C4  38 61 00 20 */	addi r3, r1, 0x20
/* 80B017C8  38 81 00 08 */	addi r4, r1, 8
/* 80B017CC  4B 76 65 5D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80B017D0  7F C3 F3 78 */	mr r3, r30
/* 80B017D4  38 81 00 20 */	addi r4, r1, 0x20
/* 80B017D8  4B 57 2C C9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80B017DC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B017E0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80B017E4  FC 20 08 18 */	frsp f1, f1
/* 80B017E8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B017EC  41 82 00 58 */	beq lbl_80B01844
/* 80B017F0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B017F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B017F8  40 80 00 20 */	bge lbl_80B01818
/* 80B017FC  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80B01800  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B01804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B01808  40 80 00 08 */	bge lbl_80B01810
/* 80B0180C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_80B01810:
/* 80B01810  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B01814  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
lbl_80B01818:
/* 80B01818  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80B0181C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B01820  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B01824  40 80 00 20 */	bge lbl_80B01844
/* 80B01828  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80B0182C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80B01830  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B01834  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B01838  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0183C  40 80 00 08 */	bge lbl_80B01844
/* 80B01840  3B A0 00 02 */	li r29, 2
lbl_80B01844:
/* 80B01844  38 61 00 20 */	addi r3, r1, 0x20
/* 80B01848  38 80 FF FF */	li r4, -1
/* 80B0184C  4B 57 5D A5 */	bl __dt__11dBgS_GndChkFv
/* 80B01850  38 61 00 74 */	addi r3, r1, 0x74
/* 80B01854  38 80 FF FF */	li r4, -1
/* 80B01858  4B 57 64 85 */	bl __dt__11dBgS_LinChkFv
/* 80B0185C  7F A3 EB 78 */	mr r3, r29
/* 80B01860  39 61 01 00 */	addi r11, r1, 0x100
/* 80B01864  4B 86 09 C1 */	bl _restgpr_28
/* 80B01868  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80B0186C  7C 08 03 A6 */	mtlr r0
/* 80B01870  38 21 01 00 */	addi r1, r1, 0x100
/* 80B01874  4E 80 00 20 */	blr 
