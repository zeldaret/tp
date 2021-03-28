lbl_8083F3B0:
/* 8083F3B0  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8083F3B4  7C 08 02 A6 */	mflr r0
/* 8083F3B8  90 01 01 14 */	stw r0, 0x114(r1)
/* 8083F3BC  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8083F3C0  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 8083F3C4  39 61 01 00 */	addi r11, r1, 0x100
/* 8083F3C8  4B B2 2D F4 */	b _savegpr_21
/* 8083F3CC  7C 7D 1B 78 */	mr r29, r3
/* 8083F3D0  3C 60 80 84 */	lis r3, lit_3894@ha
/* 8083F3D4  3B 63 54 AC */	addi r27, r3, lit_3894@l
/* 8083F3D8  3B E0 00 04 */	li r31, 4
/* 8083F3DC  83 9D 05 70 */	lwz r28, 0x570(r29)
/* 8083F3E0  38 60 00 00 */	li r3, 0
/* 8083F3E4  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8083F3E8  FC 00 02 10 */	fabs f0, f0
/* 8083F3EC  FC 20 00 18 */	frsp f1, f0
/* 8083F3F0  C0 1B 01 CC */	lfs f0, 0x1cc(r27)
/* 8083F3F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083F3F8  40 80 00 14 */	bge lbl_8083F40C
/* 8083F3FC  88 1D 16 B4 */	lbz r0, 0x16b4(r29)
/* 8083F400  28 00 00 03 */	cmplwi r0, 3
/* 8083F404  41 82 00 08 */	beq lbl_8083F40C
/* 8083F408  38 60 00 01 */	li r3, 1
lbl_8083F40C:
/* 8083F40C  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 8083F410  3A FD 13 24 */	addi r23, r29, 0x1324
/* 8083F414  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 8083F418  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083F41C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083F420  38 63 01 20 */	addi r3, r3, 0x120
/* 8083F424  3C 80 80 84 */	lis r4, l_frontFootOffset@ha
/* 8083F428  38 84 5C 04 */	addi r4, r4, l_frontFootOffset@l
/* 8083F42C  38 BD 13 30 */	addi r5, r29, 0x1330
/* 8083F430  4B B0 79 3C */	b PSMTXMultVec
/* 8083F434  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 8083F438  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083F43C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083F440  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8083F444  3C 80 80 84 */	lis r4, l_frontFootOffset@ha
/* 8083F448  38 84 5C 04 */	addi r4, r4, l_frontFootOffset@l
/* 8083F44C  38 BD 14 14 */	addi r5, r29, 0x1414
/* 8083F450  4B B0 79 1C */	b PSMTXMultVec
/* 8083F454  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 8083F458  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083F45C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083F460  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 8083F464  3C 80 80 84 */	lis r4, l_backFootOffset@ha
/* 8083F468  38 84 5C 1C */	addi r4, r4, l_backFootOffset@l
/* 8083F46C  38 BD 14 F8 */	addi r5, r29, 0x14f8
/* 8083F470  4B B0 78 FC */	b PSMTXMultVec
/* 8083F474  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 8083F478  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083F47C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083F480  38 63 06 60 */	addi r3, r3, 0x660
/* 8083F484  3C 80 80 84 */	lis r4, l_backFootOffset@ha
/* 8083F488  38 84 5C 1C */	addi r4, r4, l_backFootOffset@l
/* 8083F48C  38 BD 15 DC */	addi r5, r29, 0x15dc
/* 8083F490  4B B0 78 DC */	b PSMTXMultVec
/* 8083F494  38 61 00 68 */	addi r3, r1, 0x68
/* 8083F498  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8083F49C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 8083F4A0  4B A2 76 94 */	b __mi__4cXyzCFRC3Vec
/* 8083F4A4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8083F4A8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8083F4AC  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8083F4B0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8083F4B4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8083F4B8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8083F4BC  38 E0 00 00 */	li r7, 0
/* 8083F4C0  38 60 00 00 */	li r3, 0
/* 8083F4C4  38 A0 00 00 */	li r5, 0
lbl_8083F4C8:
/* 8083F4C8  38 80 00 00 */	li r4, 0
/* 8083F4CC  38 C1 00 AC */	addi r6, r1, 0xac
/* 8083F4D0  7C C6 1A 14 */	add r6, r6, r3
/* 8083F4D4  38 00 00 04 */	li r0, 4
/* 8083F4D8  7C 09 03 A6 */	mtctr r0
lbl_8083F4DC:
/* 8083F4DC  7C A6 23 2E */	sthx r5, r6, r4
/* 8083F4E0  38 84 00 02 */	addi r4, r4, 2
/* 8083F4E4  42 00 FF F8 */	bdnz lbl_8083F4DC
/* 8083F4E8  38 E7 00 01 */	addi r7, r7, 1
/* 8083F4EC  2C 07 00 04 */	cmpwi r7, 4
/* 8083F4F0  38 63 00 08 */	addi r3, r3, 8
/* 8083F4F4  41 80 FF D4 */	blt lbl_8083F4C8
/* 8083F4F8  3B 00 00 00 */	li r24, 0
/* 8083F4FC  3A C0 00 00 */	li r22, 0
/* 8083F500  3C 60 80 3F */	lis r3, mGndCheck__11fopAcM_gc_c@ha
/* 8083F504  38 63 1C C4 */	addi r3, r3, mGndCheck__11fopAcM_gc_c@l
/* 8083F508  3B 43 00 14 */	addi r26, r3, 0x14
/* 8083F50C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8083F510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083F514  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 8083F518  C3 FB 02 98 */	lfs f31, 0x298(r27)
lbl_8083F51C:
/* 8083F51C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8083F520  38 97 00 0C */	addi r4, r23, 0xc
/* 8083F524  38 B7 00 18 */	addi r5, r23, 0x18
/* 8083F528  4B A2 76 0C */	b __mi__4cXyzCFRC3Vec
/* 8083F52C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8083F530  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8083F534  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8083F538  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8083F53C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8083F540  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8083F544  38 77 00 0C */	addi r3, r23, 0xc
/* 8083F548  38 81 00 80 */	addi r4, r1, 0x80
/* 8083F54C  7C 65 1B 78 */	mr r5, r3
/* 8083F550  4B B0 7B 40 */	b PSVECAdd
/* 8083F554  A0 1D 16 C4 */	lhz r0, 0x16c4(r29)
/* 8083F558  28 00 00 1E */	cmplwi r0, 0x1e
/* 8083F55C  40 82 00 20 */	bne lbl_8083F57C
/* 8083F560  C0 17 00 18 */	lfs f0, 0x18(r23)
/* 8083F564  D0 17 00 0C */	stfs f0, 0xc(r23)
/* 8083F568  C0 17 00 1C */	lfs f0, 0x1c(r23)
/* 8083F56C  D0 17 00 10 */	stfs f0, 0x10(r23)
/* 8083F570  C0 17 00 20 */	lfs f0, 0x20(r23)
/* 8083F574  D0 17 00 14 */	stfs f0, 0x14(r23)
/* 8083F578  48 00 00 84 */	b lbl_8083F5FC
lbl_8083F57C:
/* 8083F57C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8083F580  D0 01 00 08 */	stfs f0, 8(r1)
/* 8083F584  C0 1B 01 50 */	lfs f0, 0x150(r27)
/* 8083F588  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8083F58C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8083F590  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8083F594  38 61 00 08 */	addi r3, r1, 8
/* 8083F598  4B B0 7B A0 */	b PSVECSquareMag
/* 8083F59C  C0 1B 01 88 */	lfs f0, 0x188(r27)
/* 8083F5A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083F5A4  40 80 00 50 */	bge lbl_8083F5F4
/* 8083F5A8  28 1E 00 00 */	cmplwi r30, 0
/* 8083F5AC  41 82 00 48 */	beq lbl_8083F5F4
/* 8083F5B0  88 77 00 01 */	lbz r3, 1(r23)
/* 8083F5B4  28 03 00 00 */	cmplwi r3, 0
/* 8083F5B8  41 82 00 10 */	beq lbl_8083F5C8
/* 8083F5BC  38 03 FF FF */	addi r0, r3, -1
/* 8083F5C0  98 17 00 01 */	stb r0, 1(r23)
/* 8083F5C4  48 00 00 38 */	b lbl_8083F5FC
lbl_8083F5C8:
/* 8083F5C8  38 61 00 50 */	addi r3, r1, 0x50
/* 8083F5CC  38 97 00 18 */	addi r4, r23, 0x18
/* 8083F5D0  38 A1 00 80 */	addi r5, r1, 0x80
/* 8083F5D4  4B A2 75 10 */	b __pl__4cXyzCFRC3Vec
/* 8083F5D8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8083F5DC  D0 17 00 0C */	stfs f0, 0xc(r23)
/* 8083F5E0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8083F5E4  D0 17 00 10 */	stfs f0, 0x10(r23)
/* 8083F5E8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8083F5EC  D0 17 00 14 */	stfs f0, 0x14(r23)
/* 8083F5F0  48 00 00 0C */	b lbl_8083F5FC
lbl_8083F5F4:
/* 8083F5F4  38 00 00 05 */	li r0, 5
/* 8083F5F8  98 17 00 01 */	stb r0, 1(r23)
lbl_8083F5FC:
/* 8083F5FC  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 8083F600  D0 17 00 18 */	stfs f0, 0x18(r23)
/* 8083F604  C0 17 00 10 */	lfs f0, 0x10(r23)
/* 8083F608  D0 17 00 1C */	stfs f0, 0x1c(r23)
/* 8083F60C  C0 17 00 14 */	lfs f0, 0x14(r23)
/* 8083F610  D0 17 00 20 */	stfs f0, 0x20(r23)
/* 8083F614  C0 17 00 10 */	lfs f0, 0x10(r23)
/* 8083F618  EC 00 F8 2A */	fadds f0, f0, f31
/* 8083F61C  D0 17 00 10 */	stfs f0, 0x10(r23)
/* 8083F620  38 77 00 0C */	addi r3, r23, 0xc
/* 8083F624  4B 7D E6 98 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8083F628  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083F62C  41 82 00 88 */	beq lbl_8083F6B4
/* 8083F630  C0 37 00 10 */	lfs f1, 0x10(r23)
/* 8083F634  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 8083F638  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 8083F63C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8083F640  C0 1B 01 A4 */	lfs f0, 0x1a4(r27)
/* 8083F644  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083F648  40 80 00 6C */	bge lbl_8083F6B4
/* 8083F64C  AA BD 04 E6 */	lha r21, 0x4e6(r29)
/* 8083F650  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 8083F654  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083F658  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8083F65C  7F 23 CB 78 */	mr r3, r25
/* 8083F660  7F 44 D3 78 */	mr r4, r26
/* 8083F664  38 A1 00 98 */	addi r5, r1, 0x98
/* 8083F668  4B 83 50 DC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8083F66C  38 61 00 98 */	addi r3, r1, 0x98
/* 8083F670  7E A4 AB 78 */	mr r4, r21
/* 8083F674  4B 7D E5 64 */	b fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 8083F678  3C 80 80 84 */	lis r4, __vt__8cM3dGPla@ha
/* 8083F67C  38 04 5B A0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 8083F680  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8083F684  38 81 00 AC */	addi r4, r1, 0xac
/* 8083F688  38 B6 00 06 */	addi r5, r22, 6
/* 8083F68C  7C 64 2B 2E */	sthx r3, r4, r5
/* 8083F690  7C 04 2A AE */	lhax r0, r4, r5
/* 8083F694  2C 00 00 00 */	cmpwi r0, 0
/* 8083F698  40 80 00 0C */	bge lbl_8083F6A4
/* 8083F69C  38 00 00 00 */	li r0, 0
/* 8083F6A0  7C 04 2B 2E */	sthx r0, r4, r5
lbl_8083F6A4:
/* 8083F6A4  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 8083F6A8  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 8083F6AC  D0 17 00 10 */	stfs f0, 0x10(r23)
/* 8083F6B0  48 00 00 0C */	b lbl_8083F6BC
lbl_8083F6B4:
/* 8083F6B4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8083F6B8  D0 17 00 10 */	stfs f0, 0x10(r23)
lbl_8083F6BC:
/* 8083F6BC  3B 18 00 01 */	addi r24, r24, 1
/* 8083F6C0  2C 18 00 04 */	cmpwi r24, 4
/* 8083F6C4  3A D6 00 08 */	addi r22, r22, 8
/* 8083F6C8  3A F7 00 E4 */	addi r23, r23, 0xe4
/* 8083F6CC  41 80 FE 50 */	blt lbl_8083F51C
/* 8083F6D0  80 1D 06 E8 */	lwz r0, 0x6e8(r29)
/* 8083F6D4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8083F6D8  41 82 00 10 */	beq lbl_8083F6E8
/* 8083F6DC  88 1D 16 B4 */	lbz r0, 0x16b4(r29)
/* 8083F6E0  28 00 00 07 */	cmplwi r0, 7
/* 8083F6E4  40 82 00 0C */	bne lbl_8083F6F0
lbl_8083F6E8:
/* 8083F6E8  3B E0 00 04 */	li r31, 4
/* 8083F6EC  48 00 00 60 */	b lbl_8083F74C
lbl_8083F6F0:
/* 8083F6F0  C0 3B 02 9C */	lfs f1, 0x29c(r27)
/* 8083F6F4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8083F6F8  EC 21 00 2A */	fadds f1, f1, f0
/* 8083F6FC  80 1D 17 48 */	lwz r0, 0x1748(r29)
/* 8083F700  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8083F704  41 82 00 0C */	beq lbl_8083F710
/* 8083F708  38 80 00 02 */	li r4, 2
/* 8083F70C  48 00 00 08 */	b lbl_8083F714
lbl_8083F710:
/* 8083F710  38 80 00 00 */	li r4, 0
lbl_8083F714:
/* 8083F714  1C 64 00 E4 */	mulli r3, r4, 0xe4
/* 8083F718  20 04 00 04 */	subfic r0, r4, 4
/* 8083F71C  7C 09 03 A6 */	mtctr r0
/* 8083F720  2C 04 00 04 */	cmpwi r4, 4
/* 8083F724  40 80 00 28 */	bge lbl_8083F74C
lbl_8083F728:
/* 8083F728  38 03 13 34 */	addi r0, r3, 0x1334
/* 8083F72C  7C 1D 04 2E */	lfsx f0, r29, r0
/* 8083F730  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083F734  40 81 00 0C */	ble lbl_8083F740
/* 8083F738  FC 20 00 90 */	fmr f1, f0
/* 8083F73C  7C 9F 23 78 */	mr r31, r4
lbl_8083F740:
/* 8083F740  38 84 00 01 */	addi r4, r4, 1
/* 8083F744  38 63 00 E4 */	addi r3, r3, 0xe4
/* 8083F748  42 00 FF E0 */	bdnz lbl_8083F728
lbl_8083F74C:
/* 8083F74C  A0 1D 16 C4 */	lhz r0, 0x16c4(r29)
/* 8083F750  28 00 00 1E */	cmplwi r0, 0x1e
/* 8083F754  41 82 00 2C */	beq lbl_8083F780
/* 8083F758  C0 3D 13 34 */	lfs f1, 0x1334(r29)
/* 8083F75C  C0 1D 14 18 */	lfs f0, 0x1418(r29)
/* 8083F760  EC 01 00 28 */	fsubs f0, f1, f0
/* 8083F764  FC 00 02 10 */	fabs f0, f0
/* 8083F768  FC 20 00 18 */	frsp f1, f0
/* 8083F76C  C0 1B 02 A0 */	lfs f0, 0x2a0(r27)
/* 8083F770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083F774  40 81 00 0C */	ble lbl_8083F780
/* 8083F778  3A E0 00 01 */	li r23, 1
/* 8083F77C  48 00 00 08 */	b lbl_8083F784
lbl_8083F780:
/* 8083F780  3A E0 00 00 */	li r23, 0
lbl_8083F784:
/* 8083F784  88 1D 16 B4 */	lbz r0, 0x16b4(r29)
/* 8083F788  28 00 00 04 */	cmplwi r0, 4
/* 8083F78C  41 82 00 0C */	beq lbl_8083F798
/* 8083F790  28 00 00 07 */	cmplwi r0, 7
/* 8083F794  40 82 00 10 */	bne lbl_8083F7A4
lbl_8083F798:
/* 8083F798  38 00 00 00 */	li r0, 0
/* 8083F79C  B0 1D 17 14 */	sth r0, 0x1714(r29)
/* 8083F7A0  48 00 00 78 */	b lbl_8083F818
lbl_8083F7A4:
/* 8083F7A4  38 61 00 44 */	addi r3, r1, 0x44
/* 8083F7A8  38 9D 13 30 */	addi r4, r29, 0x1330
/* 8083F7AC  38 BD 14 14 */	addi r5, r29, 0x1414
/* 8083F7B0  4B A2 73 34 */	b __pl__4cXyzCFRC3Vec
/* 8083F7B4  38 61 00 38 */	addi r3, r1, 0x38
/* 8083F7B8  38 81 00 44 */	addi r4, r1, 0x44
/* 8083F7BC  C0 3B 01 C0 */	lfs f1, 0x1c0(r27)
/* 8083F7C0  4B A2 73 C4 */	b __ml__4cXyzCFf
/* 8083F7C4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8083F7C8  38 9D 14 F8 */	addi r4, r29, 0x14f8
/* 8083F7CC  38 BD 15 DC */	addi r5, r29, 0x15dc
/* 8083F7D0  4B A2 73 14 */	b __pl__4cXyzCFRC3Vec
/* 8083F7D4  38 61 00 20 */	addi r3, r1, 0x20
/* 8083F7D8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8083F7DC  C0 3B 01 C0 */	lfs f1, 0x1c0(r27)
/* 8083F7E0  4B A2 73 A4 */	b __ml__4cXyzCFf
/* 8083F7E4  38 61 00 14 */	addi r3, r1, 0x14
/* 8083F7E8  38 81 00 38 */	addi r4, r1, 0x38
/* 8083F7EC  38 A1 00 20 */	addi r5, r1, 0x20
/* 8083F7F0  4B A2 73 44 */	b __mi__4cXyzCFRC3Vec
/* 8083F7F4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8083F7F8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8083F7FC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8083F800  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8083F804  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8083F808  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8083F80C  38 61 00 74 */	addi r3, r1, 0x74
/* 8083F810  4B A2 79 40 */	b atan2sY_XZ__4cXyzCFv
/* 8083F814  B0 7D 17 14 */	sth r3, 0x1714(r29)
lbl_8083F818:
/* 8083F818  80 1D 17 48 */	lwz r0, 0x1748(r29)
/* 8083F81C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8083F820  41 82 00 0C */	beq lbl_8083F82C
/* 8083F824  38 80 00 00 */	li r4, 0
/* 8083F828  48 00 00 24 */	b lbl_8083F84C
lbl_8083F82C:
/* 8083F82C  A8 9D 17 14 */	lha r4, 0x1714(r29)
/* 8083F830  2C 04 1C 72 */	cmpwi r4, 0x1c72
/* 8083F834  40 81 00 0C */	ble lbl_8083F840
/* 8083F838  38 80 1C 72 */	li r4, 0x1c72
/* 8083F83C  48 00 00 10 */	b lbl_8083F84C
lbl_8083F840:
/* 8083F840  2C 04 E3 8E */	cmpwi r4, -7282
/* 8083F844  40 80 00 08 */	bge lbl_8083F84C
/* 8083F848  38 80 E3 8E */	li r4, -7282
lbl_8083F84C:
/* 8083F84C  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8083F850  38 A0 00 0A */	li r5, 0xa
/* 8083F854  38 C0 07 D0 */	li r6, 0x7d0
/* 8083F858  38 E0 00 B6 */	li r7, 0xb6
/* 8083F85C  4B A3 0C E4 */	b cLib_addCalcAngleS__FPsssss
/* 8083F860  2C 1F 00 04 */	cmpwi r31, 4
/* 8083F864  41 82 00 CC */	beq lbl_8083F930
/* 8083F868  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8083F86C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8083F870  A8 1D 16 E8 */	lha r0, 0x16e8(r29)
/* 8083F874  7C 00 00 D0 */	neg r0, r0
/* 8083F878  7C 04 07 34 */	extsh r4, r0
/* 8083F87C  4B 7C CB 60 */	b mDoMtx_YrotS__FPA4_fs
/* 8083F880  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 8083F884  FC 20 00 50 */	fneg f1, f0
/* 8083F888  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 8083F88C  FC 40 00 50 */	fneg f2, f0
/* 8083F890  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 8083F894  FC 60 00 50 */	fneg f3, f0
/* 8083F898  4B 7C D5 04 */	b transM__14mDoMtx_stack_cFfff
/* 8083F89C  7F A3 EB 78 */	mr r3, r29
/* 8083F8A0  1C 1F 00 E4 */	mulli r0, r31, 0xe4
/* 8083F8A4  7C 9D 02 14 */	add r4, r29, r0
/* 8083F8A8  C0 24 13 34 */	lfs f1, 0x1334(r4)
/* 8083F8AC  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8083F8B0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8083F8B4  7F E4 FB 78 */	mr r4, r31
/* 8083F8B8  7E E5 BB 78 */	mr r5, r23
/* 8083F8BC  57 E0 18 38 */	slwi r0, r31, 3
/* 8083F8C0  38 C1 00 AC */	addi r6, r1, 0xac
/* 8083F8C4  7C C6 02 14 */	add r6, r6, r0
/* 8083F8C8  4B FF F4 C1 */	bl setLegAngle__9daHorse_cFfiiPs
/* 8083F8CC  3A A0 00 00 */	li r21, 0
/* 8083F8D0  3B 00 00 00 */	li r24, 0
/* 8083F8D4  3B 20 00 00 */	li r25, 0
/* 8083F8D8  C3 FB 01 50 */	lfs f31, 0x150(r27)
lbl_8083F8DC:
/* 8083F8DC  7C 15 F8 00 */	cmpw r21, r31
/* 8083F8E0  41 82 00 3C */	beq lbl_8083F91C
/* 8083F8E4  38 19 13 34 */	addi r0, r25, 0x1334
/* 8083F8E8  7C 3D 04 2E */	lfsx f1, r29, r0
/* 8083F8EC  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8083F8F0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8083F8F4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8083F8F8  41 81 00 0C */	bgt lbl_8083F904
/* 8083F8FC  28 1E 00 00 */	cmplwi r30, 0
/* 8083F900  41 82 00 1C */	beq lbl_8083F91C
lbl_8083F904:
/* 8083F904  7F A3 EB 78 */	mr r3, r29
/* 8083F908  7E A4 AB 78 */	mr r4, r21
/* 8083F90C  7E E5 BB 78 */	mr r5, r23
/* 8083F910  38 C1 00 AC */	addi r6, r1, 0xac
/* 8083F914  7C C6 C2 14 */	add r6, r6, r24
/* 8083F918  4B FF F4 71 */	bl setLegAngle__9daHorse_cFfiiPs
lbl_8083F91C:
/* 8083F91C  3A B5 00 01 */	addi r21, r21, 1
/* 8083F920  2C 15 00 04 */	cmpwi r21, 4
/* 8083F924  3B 18 00 08 */	addi r24, r24, 8
/* 8083F928  3B 39 00 E4 */	addi r25, r25, 0xe4
/* 8083F92C  41 80 FF B0 */	blt lbl_8083F8DC
lbl_8083F930:
/* 8083F930  3A DD 13 24 */	addi r22, r29, 0x1324
/* 8083F934  3B 20 00 00 */	li r25, 0
/* 8083F938  3A E0 00 00 */	li r23, 0
lbl_8083F93C:
/* 8083F93C  3B 40 00 00 */	li r26, 0
/* 8083F940  3B 00 00 00 */	li r24, 0
/* 8083F944  3A A1 00 AC */	addi r21, r1, 0xac
/* 8083F948  7E B5 BA 14 */	add r21, r21, r23
lbl_8083F94C:
/* 8083F94C  38 78 00 04 */	addi r3, r24, 4
/* 8083F950  7C 76 1A 14 */	add r3, r22, r3
/* 8083F954  7C 95 C2 AE */	lhax r4, r21, r24
/* 8083F958  38 A0 00 02 */	li r5, 2
/* 8083F95C  38 C0 18 00 */	li r6, 0x1800
/* 8083F960  38 E0 00 10 */	li r7, 0x10
/* 8083F964  4B A3 0B DC */	b cLib_addCalcAngleS__FPsssss
/* 8083F968  3B 5A 00 01 */	addi r26, r26, 1
/* 8083F96C  2C 1A 00 04 */	cmpwi r26, 4
/* 8083F970  3B 18 00 02 */	addi r24, r24, 2
/* 8083F974  41 80 FF D8 */	blt lbl_8083F94C
/* 8083F978  3B 39 00 01 */	addi r25, r25, 1
/* 8083F97C  2C 19 00 04 */	cmpwi r25, 4
/* 8083F980  3A F7 00 08 */	addi r23, r23, 8
/* 8083F984  3A D6 00 E4 */	addi r22, r22, 0xe4
/* 8083F988  41 80 FF B4 */	blt lbl_8083F93C
/* 8083F98C  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 8083F990  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8083F994  39 61 01 00 */	addi r11, r1, 0x100
/* 8083F998  4B B2 28 70 */	b _restgpr_21
/* 8083F99C  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8083F9A0  7C 08 03 A6 */	mtlr r0
/* 8083F9A4  38 21 01 10 */	addi r1, r1, 0x110
/* 8083F9A8  4E 80 00 20 */	blr 
