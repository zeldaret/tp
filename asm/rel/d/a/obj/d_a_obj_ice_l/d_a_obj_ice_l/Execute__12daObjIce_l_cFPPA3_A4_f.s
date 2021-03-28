lbl_80C203C4:
/* 80C203C4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C203C8  7C 08 02 A6 */	mflr r0
/* 80C203CC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C203D0  39 61 00 80 */	addi r11, r1, 0x80
/* 80C203D4  4B 74 1E 08 */	b _savegpr_29
/* 80C203D8  7C 7D 1B 78 */	mr r29, r3
/* 80C203DC  7C 9E 23 78 */	mr r30, r4
/* 80C203E0  3C 60 80 C2 */	lis r3, lit_3675@ha
/* 80C203E4  3B E3 07 8C */	addi r31, r3, lit_3675@l
/* 80C203E8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80C203EC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C203F0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C203F4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C203F8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C203FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C20400  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C20404  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C20408  38 7D 05 A4 */	addi r3, r29, 0x5a4
/* 80C2040C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C20410  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80C20414  4B 65 03 2C */	b cLib_chaseF__FPfff
/* 80C20418  A8 1D 05 D4 */	lha r0, 0x5d4(r29)
/* 80C2041C  C8 9F 00 08 */	lfd f4, 8(r31)
/* 80C20420  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C20424  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C20428  3C 60 43 30 */	lis r3, 0x4330
/* 80C2042C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C20430  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C20434  EC 20 20 28 */	fsubs f1, f0, f4
/* 80C20438  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80C2043C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80C20440  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80C20444  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C20448  EC 03 00 2A */	fadds f0, f3, f0
/* 80C2044C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C20450  FC 00 00 1E */	fctiwz f0, f0
/* 80C20454  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C20458  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C2045C  B0 1D 05 D4 */	sth r0, 0x5d4(r29)
/* 80C20460  A8 1D 05 D6 */	lha r0, 0x5d6(r29)
/* 80C20464  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C20468  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C2046C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80C20470  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C20474  EC 20 20 28 */	fsubs f1, f0, f4
/* 80C20478  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80C2047C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C20480  EC 03 00 2A */	fadds f0, f3, f0
/* 80C20484  EC 01 00 2A */	fadds f0, f1, f0
/* 80C20488  FC 00 00 1E */	fctiwz f0, f0
/* 80C2048C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C20490  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C20494  B0 1D 05 D6 */	sth r0, 0x5d6(r29)
/* 80C20498  A8 7D 05 D6 */	lha r3, 0x5d6(r29)
/* 80C2049C  A8 1D 05 E4 */	lha r0, 0x5e4(r29)
/* 80C204A0  7C 03 02 14 */	add r0, r3, r0
/* 80C204A4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C204A8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C204AC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C204B0  7C 83 04 2E */	lfsx f4, r3, r0
/* 80C204B4  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80C204B8  C0 7D 05 E0 */	lfs f3, 0x5e0(r29)
/* 80C204BC  C0 5D 05 C0 */	lfs f2, 0x5c0(r29)
/* 80C204C0  C0 3D 05 A4 */	lfs f1, 0x5a4(r29)
/* 80C204C4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80C204C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C204CC  EC 22 00 2A */	fadds f1, f2, f0
/* 80C204D0  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80C204D4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80C204D8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C204DC  EC 23 00 2A */	fadds f1, f3, f0
/* 80C204E0  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80C204E4  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80C204E8  FC 80 10 90 */	fmr f4, f2
/* 80C204EC  4B 64 F4 90 */	b cLib_addCalc__FPfffff
/* 80C204F0  A8 7D 05 D4 */	lha r3, 0x5d4(r29)
/* 80C204F4  A8 1D 05 E4 */	lha r0, 0x5e4(r29)
/* 80C204F8  7C 63 02 14 */	add r3, r3, r0
/* 80C204FC  38 03 20 00 */	addi r0, r3, 0x2000
/* 80C20500  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C20504  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C20508  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C2050C  7C 83 04 2E */	lfsx f4, r3, r0
/* 80C20510  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80C20514  A8 1D 05 D8 */	lha r0, 0x5d8(r29)
/* 80C20518  C8 7F 00 08 */	lfd f3, 8(r31)
/* 80C2051C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C20520  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C20524  3C 80 43 30 */	lis r4, 0x4330
/* 80C20528  90 81 00 38 */	stw r4, 0x38(r1)
/* 80C2052C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80C20530  EC 40 18 28 */	fsubs f2, f0, f3
/* 80C20534  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80C20538  A8 1D 05 AC */	lha r0, 0x5ac(r29)
/* 80C2053C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C20540  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C20544  90 81 00 40 */	stw r4, 0x40(r1)
/* 80C20548  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80C2054C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C20550  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C20554  EC 00 01 32 */	fmuls f0, f0, f4
/* 80C20558  EC 02 00 2A */	fadds f0, f2, f0
/* 80C2055C  FC 00 00 1E */	fctiwz f0, f0
/* 80C20560  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C20564  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 80C20568  38 A0 00 02 */	li r5, 2
/* 80C2056C  38 C0 01 00 */	li r6, 0x100
/* 80C20570  38 E0 00 01 */	li r7, 1
/* 80C20574  4B 64 FF CC */	b cLib_addCalcAngleS__FPsssss
/* 80C20578  A8 7D 05 D6 */	lha r3, 0x5d6(r29)
/* 80C2057C  A8 1D 05 E4 */	lha r0, 0x5e4(r29)
/* 80C20580  7C 03 02 14 */	add r0, r3, r0
/* 80C20584  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C20588  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C2058C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C20590  7C 83 04 2E */	lfsx f4, r3, r0
/* 80C20594  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 80C20598  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 80C2059C  C8 7F 00 08 */	lfd f3, 8(r31)
/* 80C205A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C205A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C205A8  3C 80 43 30 */	lis r4, 0x4330
/* 80C205AC  90 81 00 50 */	stw r4, 0x50(r1)
/* 80C205B0  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80C205B4  EC 40 18 28 */	fsubs f2, f0, f3
/* 80C205B8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80C205BC  A8 1D 05 AC */	lha r0, 0x5ac(r29)
/* 80C205C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C205C4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C205C8  90 81 00 58 */	stw r4, 0x58(r1)
/* 80C205CC  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80C205D0  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C205D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C205D8  EC 00 01 32 */	fmuls f0, f0, f4
/* 80C205DC  EC 02 00 2A */	fadds f0, f2, f0
/* 80C205E0  FC 00 00 1E */	fctiwz f0, f0
/* 80C205E4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80C205E8  80 81 00 64 */	lwz r4, 0x64(r1)
/* 80C205EC  38 A0 00 02 */	li r5, 2
/* 80C205F0  38 C0 01 00 */	li r6, 0x100
/* 80C205F4  38 E0 00 01 */	li r7, 1
/* 80C205F8  4B 64 FF 48 */	b cLib_addCalcAngleS__FPsssss
/* 80C205FC  88 1D 05 E6 */	lbz r0, 0x5e6(r29)
/* 80C20600  28 00 00 00 */	cmplwi r0, 0
/* 80C20604  40 82 00 74 */	bne lbl_80C20678
/* 80C20608  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 80C2060C  38 80 00 00 */	li r4, 0
/* 80C20610  38 A0 00 02 */	li r5, 2
/* 80C20614  38 C0 01 00 */	li r6, 0x100
/* 80C20618  38 E0 00 01 */	li r7, 1
/* 80C2061C  4B 64 FF 24 */	b cLib_addCalcAngleS__FPsssss
/* 80C20620  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 80C20624  38 80 00 00 */	li r4, 0
/* 80C20628  38 A0 00 02 */	li r5, 2
/* 80C2062C  38 C0 01 00 */	li r6, 0x100
/* 80C20630  38 E0 00 01 */	li r7, 1
/* 80C20634  4B 64 FF 0C */	b cLib_addCalcAngleS__FPsssss
/* 80C20638  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 80C2063C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C20640  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80C20644  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80C20648  FC 80 08 90 */	fmr f4, f1
/* 80C2064C  4B 64 F3 30 */	b cLib_addCalc__FPfffff
/* 80C20650  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80C20654  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C20658  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 80C2065C  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80C20660  FC 80 08 90 */	fmr f4, f1
/* 80C20664  4B 64 F3 18 */	b cLib_addCalc__FPfffff
/* 80C20668  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80C2066C  38 80 01 20 */	li r4, 0x120
/* 80C20670  38 A0 00 10 */	li r5, 0x10
/* 80C20674  4B 65 05 1C */	b cLib_chaseAngleS__FPsss
lbl_80C20678:
/* 80C20678  38 00 00 00 */	li r0, 0
/* 80C2067C  98 1D 05 E6 */	stb r0, 0x5e6(r29)
/* 80C20680  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80C20684  90 1E 00 00 */	stw r0, 0(r30)
/* 80C20688  7F A3 EB 78 */	mr r3, r29
/* 80C2068C  4B FF F6 6D */	bl setBaseMtx__12daObjIce_l_cFv
/* 80C20690  38 60 00 01 */	li r3, 1
/* 80C20694  39 61 00 80 */	addi r11, r1, 0x80
/* 80C20698  4B 74 1B 90 */	b _restgpr_29
/* 80C2069C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C206A0  7C 08 03 A6 */	mtlr r0
/* 80C206A4  38 21 00 80 */	addi r1, r1, 0x80
/* 80C206A8  4E 80 00 20 */	blr 
