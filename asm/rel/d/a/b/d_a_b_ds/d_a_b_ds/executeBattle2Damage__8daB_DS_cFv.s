lbl_805D52D4:
/* 805D52D4  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 805D52D8  7C 08 02 A6 */	mflr r0
/* 805D52DC  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 805D52E0  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 805D52E4  4B D8 CE EC */	b _savegpr_26
/* 805D52E8  7C 7B 1B 78 */	mr r27, r3
/* 805D52EC  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805D52F0  3B A3 CA 54 */	addi r29, r3, lit_3932@l
/* 805D52F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D52F8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 805D52FC  88 1E 5D B0 */	lbz r0, 0x5db0(r30)
/* 805D5300  7C 00 07 74 */	extsb r0, r0
/* 805D5304  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805D5308  7C 7E 02 14 */	add r3, r30, r0
/* 805D530C  83 83 5D 74 */	lwz r28, 0x5d74(r3)
/* 805D5310  83 5E 5D AC */	lwz r26, 0x5dac(r30)
/* 805D5314  38 61 01 38 */	addi r3, r1, 0x138
/* 805D5318  4B AA 29 50 */	b __ct__11dBgS_LinChkFv
/* 805D531C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805D5320  4B AA 22 5C */	b __ct__11dBgS_GndChkFv
/* 805D5324  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805D5328  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805D532C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805D5330  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805D5334  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805D5338  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 805D533C  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 805D5340  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 805D5344  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 805D5348  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 805D534C  C0 1D 02 EC */	lfs f0, 0x2ec(r29)
/* 805D5350  EC 01 00 2A */	fadds f0, f1, f0
/* 805D5354  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 805D5358  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805D535C  38 81 00 C0 */	addi r4, r1, 0xc0
/* 805D5360  4B C9 29 C8 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805D5364  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D5368  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D536C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 805D5370  7F E3 FB 78 */	mr r3, r31
/* 805D5374  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805D5378  4B A9 F1 28 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805D537C  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 805D5380  C0 5D 00 5C */	lfs f2, 0x5c(r29)
/* 805D5384  FC 00 08 18 */	frsp f0, f1
/* 805D5388  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805D538C  40 82 00 14 */	bne lbl_805D53A0
/* 805D5390  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 805D5394  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 805D5398  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D539C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
lbl_805D53A0:
/* 805D53A0  80 1B 06 84 */	lwz r0, 0x684(r27)
/* 805D53A4  2C 00 00 03 */	cmpwi r0, 3
/* 805D53A8  41 82 07 4C */	beq lbl_805D5AF4
/* 805D53AC  40 80 00 1C */	bge lbl_805D53C8
/* 805D53B0  2C 00 00 01 */	cmpwi r0, 1
/* 805D53B4  41 82 03 E0 */	beq lbl_805D5794
/* 805D53B8  40 80 05 C8 */	bge lbl_805D5980
/* 805D53BC  2C 00 00 00 */	cmpwi r0, 0
/* 805D53C0  40 80 00 18 */	bge lbl_805D53D8
/* 805D53C4  48 00 0B 88 */	b lbl_805D5F4C
lbl_805D53C8:
/* 805D53C8  2C 00 00 05 */	cmpwi r0, 5
/* 805D53CC  41 82 09 90 */	beq lbl_805D5D5C
/* 805D53D0  40 80 0B 7C */	bge lbl_805D5F4C
/* 805D53D4  48 00 07 BC */	b lbl_805D5B90
lbl_805D53D8:
/* 805D53D8  7F 63 DB 78 */	mr r3, r27
/* 805D53DC  4B FF 84 FD */	bl startDemoCheck__8daB_DS_cFv
/* 805D53E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D53E4  41 82 0B 68 */	beq lbl_805D5F4C
/* 805D53E8  38 61 00 A8 */	addi r3, r1, 0xa8
/* 805D53EC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 805D53F0  38 BB 04 A8 */	addi r5, r27, 0x4a8
/* 805D53F4  4B C9 17 40 */	b __mi__4cXyzCFRC3Vec
/* 805D53F8  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 805D53FC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 805D5400  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 805D5404  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 805D5408  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 805D540C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 805D5410  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805D5414  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 805D5418  38 61 00 CC */	addi r3, r1, 0xcc
/* 805D541C  4B C9 1D 0C */	b atan2sX_Z__4cXyzCFv
/* 805D5420  B0 7B 07 D2 */	sth r3, 0x7d2(r27)
/* 805D5424  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D5428  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D542C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D5430  A8 9B 07 D2 */	lha r4, 0x7d2(r27)
/* 805D5434  4B A3 6F A8 */	b mDoMtx_YrotS__FPA4_fs
/* 805D5438  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805D543C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 805D5440  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 805D5444  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D5448  3B E3 DA BC */	addi r31, r3, l_HIO@l
/* 805D544C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805D5450  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 805D5454  38 61 00 D8 */	addi r3, r1, 0xd8
/* 805D5458  38 81 00 CC */	addi r4, r1, 0xcc
/* 805D545C  4B C9 BA 90 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D5460  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 805D5464  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 805D5468  83 5E 5D AC */	lwz r26, 0x5dac(r30)
/* 805D546C  38 61 00 CC */	addi r3, r1, 0xcc
/* 805D5470  4B C9 1C B8 */	b atan2sX_Z__4cXyzCFv
/* 805D5474  7C 03 00 D0 */	neg r0, r3
/* 805D5478  7C 05 07 34 */	extsh r5, r0
/* 805D547C  7F 43 D3 78 */	mr r3, r26
/* 805D5480  38 81 00 CC */	addi r4, r1, 0xcc
/* 805D5484  38 C0 00 00 */	li r6, 0
/* 805D5488  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 805D548C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805D5490  7D 89 03 A6 */	mtctr r12
/* 805D5494  4E 80 04 21 */	bctrl 
/* 805D5498  38 00 00 00 */	li r0, 0
/* 805D549C  90 1B 06 A4 */	stw r0, 0x6a4(r27)
/* 805D54A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D54A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D54A8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805D54AC  38 63 02 10 */	addi r3, r3, 0x210
/* 805D54B0  80 9B 2E 14 */	lwz r4, 0x2e14(r27)
/* 805D54B4  4B A7 64 64 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 805D54B8  28 03 00 00 */	cmplwi r3, 0
/* 805D54BC  41 82 00 10 */	beq lbl_805D54CC
/* 805D54C0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 805D54C4  60 00 00 04 */	ori r0, r0, 4
/* 805D54C8  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_805D54CC:
/* 805D54CC  38 00 00 00 */	li r0, 0
/* 805D54D0  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 805D54D4  B0 1B 04 DC */	sth r0, 0x4dc(r27)
/* 805D54D8  7F 63 DB 78 */	mr r3, r27
/* 805D54DC  38 80 00 23 */	li r4, 0x23
/* 805D54E0  38 A0 00 00 */	li r5, 0
/* 805D54E4  C0 3D 03 B8 */	lfs f1, 0x3b8(r29)
/* 805D54E8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805D54EC  4B FF 65 DD */	bl setBck__8daB_DS_cFiUcff
/* 805D54F0  38 60 00 00 */	li r3, 0
/* 805D54F4  7C 65 1B 78 */	mr r5, r3
/* 805D54F8  7C 64 1B 78 */	mr r4, r3
/* 805D54FC  38 00 00 05 */	li r0, 5
/* 805D5500  7C 09 03 A6 */	mtctr r0
lbl_805D5504:
/* 805D5504  7C DB 1A 14 */	add r6, r27, r3
/* 805D5508  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805D550C  60 00 02 00 */	ori r0, r0, 0x200
/* 805D5510  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805D5514  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805D5518  60 00 01 00 */	ori r0, r0, 0x100
/* 805D551C  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805D5520  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805D5524  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805D5528  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805D552C  90 A6 0C 24 */	stw r5, 0xc24(r6)
/* 805D5530  98 86 0C B6 */	stb r4, 0xcb6(r6)
/* 805D5534  38 63 01 38 */	addi r3, r3, 0x138
/* 805D5538  42 00 FF CC */	bdnz lbl_805D5504
/* 805D553C  38 60 00 00 */	li r3, 0
/* 805D5540  B0 7B 04 E4 */	sth r3, 0x4e4(r27)
/* 805D5544  90 7B 08 18 */	stw r3, 0x818(r27)
/* 805D5548  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 805D554C  38 00 00 03 */	li r0, 3
/* 805D5550  B0 04 06 04 */	sth r0, 0x604(r4)
/* 805D5554  90 64 06 0C */	stw r3, 0x60c(r4)
/* 805D5558  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 805D555C  38 00 00 0E */	li r0, 0xe
/* 805D5560  90 04 06 14 */	stw r0, 0x614(r4)
/* 805D5564  90 64 06 0C */	stw r3, 0x60c(r4)
/* 805D5568  90 64 06 10 */	stw r3, 0x610(r4)
/* 805D556C  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 805D5570  38 61 00 9C */	addi r3, r1, 0x9c
/* 805D5574  38 9B 06 F4 */	addi r4, r27, 0x6f4
/* 805D5578  38 BB 04 A8 */	addi r5, r27, 0x4a8
/* 805D557C  4B C9 15 B8 */	b __mi__4cXyzCFRC3Vec
/* 805D5580  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 805D5584  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 805D5588  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 805D558C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 805D5590  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 805D5594  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 805D5598  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805D559C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 805D55A0  38 61 00 90 */	addi r3, r1, 0x90
/* 805D55A4  38 9B 04 A8 */	addi r4, r27, 0x4a8
/* 805D55A8  38 BB 06 F4 */	addi r5, r27, 0x6f4
/* 805D55AC  4B C9 15 88 */	b __mi__4cXyzCFRC3Vec
/* 805D55B0  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 805D55B4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 805D55B8  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 805D55BC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 805D55C0  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 805D55C4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 805D55C8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805D55CC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 805D55D0  38 61 00 D8 */	addi r3, r1, 0xd8
/* 805D55D4  4B C9 1B 54 */	b atan2sX_Z__4cXyzCFv
/* 805D55D8  B0 7B 04 DE */	sth r3, 0x4de(r27)
/* 805D55DC  38 61 00 CC */	addi r3, r1, 0xcc
/* 805D55E0  4B D7 1B 58 */	b PSVECSquareMag
/* 805D55E4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805D55E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D55EC  40 81 00 58 */	ble lbl_805D5644
/* 805D55F0  FC 00 08 34 */	frsqrte f0, f1
/* 805D55F4  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 805D55F8  FC 44 00 32 */	fmul f2, f4, f0
/* 805D55FC  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 805D5600  FC 00 00 32 */	fmul f0, f0, f0
/* 805D5604  FC 01 00 32 */	fmul f0, f1, f0
/* 805D5608  FC 03 00 28 */	fsub f0, f3, f0
/* 805D560C  FC 02 00 32 */	fmul f0, f2, f0
/* 805D5610  FC 44 00 32 */	fmul f2, f4, f0
/* 805D5614  FC 00 00 32 */	fmul f0, f0, f0
/* 805D5618  FC 01 00 32 */	fmul f0, f1, f0
/* 805D561C  FC 03 00 28 */	fsub f0, f3, f0
/* 805D5620  FC 02 00 32 */	fmul f0, f2, f0
/* 805D5624  FC 44 00 32 */	fmul f2, f4, f0
/* 805D5628  FC 00 00 32 */	fmul f0, f0, f0
/* 805D562C  FC 01 00 32 */	fmul f0, f1, f0
/* 805D5630  FC 03 00 28 */	fsub f0, f3, f0
/* 805D5634  FC 02 00 32 */	fmul f0, f2, f0
/* 805D5638  FC 21 00 32 */	fmul f1, f1, f0
/* 805D563C  FC 20 08 18 */	frsp f1, f1
/* 805D5640  48 00 00 88 */	b lbl_805D56C8
lbl_805D5644:
/* 805D5644  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 805D5648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D564C  40 80 00 10 */	bge lbl_805D565C
/* 805D5650  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805D5654  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805D5658  48 00 00 70 */	b lbl_805D56C8
lbl_805D565C:
/* 805D565C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805D5660  80 81 00 20 */	lwz r4, 0x20(r1)
/* 805D5664  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805D5668  3C 00 7F 80 */	lis r0, 0x7f80
/* 805D566C  7C 03 00 00 */	cmpw r3, r0
/* 805D5670  41 82 00 14 */	beq lbl_805D5684
/* 805D5674  40 80 00 40 */	bge lbl_805D56B4
/* 805D5678  2C 03 00 00 */	cmpwi r3, 0
/* 805D567C  41 82 00 20 */	beq lbl_805D569C
/* 805D5680  48 00 00 34 */	b lbl_805D56B4
lbl_805D5684:
/* 805D5684  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D5688  41 82 00 0C */	beq lbl_805D5694
/* 805D568C  38 00 00 01 */	li r0, 1
/* 805D5690  48 00 00 28 */	b lbl_805D56B8
lbl_805D5694:
/* 805D5694  38 00 00 02 */	li r0, 2
/* 805D5698  48 00 00 20 */	b lbl_805D56B8
lbl_805D569C:
/* 805D569C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D56A0  41 82 00 0C */	beq lbl_805D56AC
/* 805D56A4  38 00 00 05 */	li r0, 5
/* 805D56A8  48 00 00 10 */	b lbl_805D56B8
lbl_805D56AC:
/* 805D56AC  38 00 00 03 */	li r0, 3
/* 805D56B0  48 00 00 08 */	b lbl_805D56B8
lbl_805D56B4:
/* 805D56B4  38 00 00 04 */	li r0, 4
lbl_805D56B8:
/* 805D56B8  2C 00 00 01 */	cmpwi r0, 1
/* 805D56BC  40 82 00 0C */	bne lbl_805D56C8
/* 805D56C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805D56C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805D56C8:
/* 805D56C8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805D56CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D56D0  40 80 00 30 */	bge lbl_805D5700
/* 805D56D4  38 00 00 00 */	li r0, 0
/* 805D56D8  98 1B 08 4C */	stb r0, 0x84c(r27)
/* 805D56DC  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 805D56E0  3C 63 00 01 */	addis r3, r3, 1
/* 805D56E4  38 03 80 00 */	addi r0, r3, -32768
/* 805D56E8  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 805D56EC  38 61 00 CC */	addi r3, r1, 0xcc
/* 805D56F0  4B C9 1A 38 */	b atan2sX_Z__4cXyzCFv
/* 805D56F4  38 03 08 00 */	addi r0, r3, 0x800
/* 805D56F8  B0 1B 07 D2 */	sth r0, 0x7d2(r27)
/* 805D56FC  48 00 00 1C */	b lbl_805D5718
lbl_805D5700:
/* 805D5700  38 00 00 01 */	li r0, 1
/* 805D5704  98 1B 08 4C */	stb r0, 0x84c(r27)
/* 805D5708  38 61 00 CC */	addi r3, r1, 0xcc
/* 805D570C  4B C9 1A 1C */	b atan2sX_Z__4cXyzCFv
/* 805D5710  38 03 18 00 */	addi r0, r3, 0x1800
/* 805D5714  B0 1B 07 D2 */	sth r0, 0x7d2(r27)
lbl_805D5718:
/* 805D5718  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D571C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D5720  80 63 00 00 */	lwz r3, 0(r3)
/* 805D5724  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 805D5728  4B A3 6C B4 */	b mDoMtx_YrotS__FPA4_fs
/* 805D572C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805D5730  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 805D5734  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 805D5738  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805D573C  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 805D5740  38 61 00 D8 */	addi r3, r1, 0xd8
/* 805D5744  38 9B 07 9C */	addi r4, r27, 0x79c
/* 805D5748  4B C9 B7 A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D574C  C0 1D 02 EC */	lfs f0, 0x2ec(r29)
/* 805D5750  D0 1B 08 10 */	stfs f0, 0x810(r27)
/* 805D5754  38 7B 07 9C */	addi r3, r27, 0x79c
/* 805D5758  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805D575C  7C 65 1B 78 */	mr r5, r3
/* 805D5760  4B D7 19 30 */	b PSVECAdd
/* 805D5764  C0 3B 07 A0 */	lfs f1, 0x7a0(r27)
/* 805D5768  C0 1D 03 AC */	lfs f0, 0x3ac(r29)
/* 805D576C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D5770  40 81 00 0C */	ble lbl_805D577C
/* 805D5774  D0 1B 07 A0 */	stfs f0, 0x7a0(r27)
/* 805D5778  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
lbl_805D577C:
/* 805D577C  38 00 00 00 */	li r0, 0
/* 805D5780  90 1B 08 38 */	stw r0, 0x838(r27)
/* 805D5784  80 7B 06 84 */	lwz r3, 0x684(r27)
/* 805D5788  38 03 00 01 */	addi r0, r3, 1
/* 805D578C  90 1B 06 84 */	stw r0, 0x684(r27)
/* 805D5790  48 00 07 BC */	b lbl_805D5F4C
lbl_805D5794:
/* 805D5794  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D5798  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D579C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D57A0  A8 9B 07 D2 */	lha r4, 0x7d2(r27)
/* 805D57A4  4B A3 6C 38 */	b mDoMtx_YrotS__FPA4_fs
/* 805D57A8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805D57AC  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 805D57B0  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 805D57B4  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 805D57B8  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D57BC  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805D57C0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805D57C4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 805D57C8  38 61 00 D8 */	addi r3, r1, 0xd8
/* 805D57CC  38 9B 2D 14 */	addi r4, r27, 0x2d14
/* 805D57D0  4B C9 B7 1C */	b MtxPosition__FP4cXyzP4cXyz
/* 805D57D4  C0 3B 2D 18 */	lfs f1, 0x2d18(r27)
/* 805D57D8  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805D57DC  EC 01 00 2A */	fadds f0, f1, f0
/* 805D57E0  D0 1B 2D 18 */	stfs f0, 0x2d18(r27)
/* 805D57E4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805D57E8  D0 1B 2D 20 */	stfs f0, 0x2d20(r27)
/* 805D57EC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805D57F0  D0 1B 2D 24 */	stfs f0, 0x2d24(r27)
/* 805D57F4  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 805D57F8  D0 1B 2D 28 */	stfs f0, 0x2d28(r27)
/* 805D57FC  38 61 00 84 */	addi r3, r1, 0x84
/* 805D5800  38 9B 2D 14 */	addi r4, r27, 0x2d14
/* 805D5804  38 BB 2D 20 */	addi r5, r27, 0x2d20
/* 805D5808  4B C9 13 2C */	b __mi__4cXyzCFRC3Vec
/* 805D580C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 805D5810  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 805D5814  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 805D5818  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 805D581C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 805D5820  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 805D5824  38 61 00 CC */	addi r3, r1, 0xcc
/* 805D5828  4B C9 19 00 */	b atan2sX_Z__4cXyzCFv
/* 805D582C  B0 7B 04 E6 */	sth r3, 0x4e6(r27)
/* 805D5830  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 805D5834  38 9B 07 9C */	addi r4, r27, 0x79c
/* 805D5838  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 805D583C  C0 5D 02 F0 */	lfs f2, 0x2f0(r29)
/* 805D5840  C0 7D 00 90 */	lfs f3, 0x90(r29)
/* 805D5844  4B C9 A2 74 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805D5848  80 1B 08 DC */	lwz r0, 0x8dc(r27)
/* 805D584C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 805D5850  41 82 06 FC */	beq lbl_805D5F4C
/* 805D5854  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070520@ha */
/* 805D5858  38 03 05 20 */	addi r0, r3, 0x0520 /* 0x00070520@l */
/* 805D585C  90 01 00 30 */	stw r0, 0x30(r1)
/* 805D5860  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805D5864  38 81 00 30 */	addi r4, r1, 0x30
/* 805D5868  38 A0 00 00 */	li r5, 0
/* 805D586C  38 C0 FF FF */	li r6, -1
/* 805D5870  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805D5874  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D5878  7D 89 03 A6 */	mtctr r12
/* 805D587C  4E 80 04 21 */	bctrl 
/* 805D5880  A8 1B 04 E4 */	lha r0, 0x4e4(r27)
/* 805D5884  B0 01 00 34 */	sth r0, 0x34(r1)
/* 805D5888  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 805D588C  B0 01 00 36 */	sth r0, 0x36(r1)
/* 805D5890  A8 1B 04 E8 */	lha r0, 0x4e8(r27)
/* 805D5894  B0 01 00 38 */	sth r0, 0x38(r1)
/* 805D5898  38 00 40 00 */	li r0, 0x4000
/* 805D589C  B0 01 00 34 */	sth r0, 0x34(r1)
/* 805D58A0  38 80 00 00 */	li r4, 0
/* 805D58A4  B0 81 00 38 */	sth r4, 0x38(r1)
/* 805D58A8  C0 1B 07 00 */	lfs f0, 0x700(r27)
/* 805D58AC  D0 1B 06 D0 */	stfs f0, 0x6d0(r27)
/* 805D58B0  C0 1B 07 04 */	lfs f0, 0x704(r27)
/* 805D58B4  D0 1B 06 D4 */	stfs f0, 0x6d4(r27)
/* 805D58B8  C0 1B 07 08 */	lfs f0, 0x708(r27)
/* 805D58BC  D0 1B 06 D8 */	stfs f0, 0x6d8(r27)
/* 805D58C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D58C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D58C8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805D58CC  38 00 00 FF */	li r0, 0xff
/* 805D58D0  90 01 00 08 */	stw r0, 8(r1)
/* 805D58D4  90 81 00 0C */	stw r4, 0xc(r1)
/* 805D58D8  38 00 FF FF */	li r0, -1
/* 805D58DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D58E0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D58E4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D58E8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805D58EC  80 9B 2D EC */	lwz r4, 0x2dec(r27)
/* 805D58F0  38 A0 00 00 */	li r5, 0
/* 805D58F4  3C C0 80 5E */	lis r6, eff_smoke_id@ha
/* 805D58F8  38 C6 D4 70 */	addi r6, r6, eff_smoke_id@l
/* 805D58FC  A0 C6 00 02 */	lhz r6, 2(r6)
/* 805D5900  38 FB 06 D0 */	addi r7, r27, 0x6d0
/* 805D5904  39 00 00 00 */	li r8, 0
/* 805D5908  39 21 00 34 */	addi r9, r1, 0x34
/* 805D590C  39 41 00 B4 */	addi r10, r1, 0xb4
/* 805D5910  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805D5914  4B A7 7B B8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D5918  90 7B 2D EC */	stw r3, 0x2dec(r27)
/* 805D591C  38 00 00 05 */	li r0, 5
/* 805D5920  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 805D5924  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)
/* 805D5928  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805D592C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 805D5930  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805D5934  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805D5938  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 805D593C  38 7F 4C 9C */	addi r3, r31, 0x4c9c
/* 805D5940  38 80 00 07 */	li r4, 7
/* 805D5944  38 A0 00 1F */	li r5, 0x1f
/* 805D5948  38 C1 00 78 */	addi r6, r1, 0x78
/* 805D594C  4B A9 A0 D8 */	b StartShock__12dVibration_cFii4cXyz
/* 805D5950  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 805D5954  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 805D5958  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805D595C  D0 3B 05 2C */	stfs f1, 0x52c(r27)
/* 805D5960  38 00 00 00 */	li r0, 0
/* 805D5964  B0 1B 07 D0 */	sth r0, 0x7d0(r27)
/* 805D5968  C0 1D 04 DC */	lfs f0, 0x4dc(r29)
/* 805D596C  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 805D5970  D0 3B 07 E8 */	stfs f1, 0x7e8(r27)
/* 805D5974  80 7B 06 84 */	lwz r3, 0x684(r27)
/* 805D5978  38 03 00 01 */	addi r0, r3, 1
/* 805D597C  90 1B 06 84 */	stw r0, 0x684(r27)
lbl_805D5980:
/* 805D5980  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805D5984  D0 1B 2D 20 */	stfs f0, 0x2d20(r27)
/* 805D5988  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805D598C  D0 1B 2D 24 */	stfs f0, 0x2d24(r27)
/* 805D5990  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 805D5994  D0 1B 2D 28 */	stfs f0, 0x2d28(r27)
/* 805D5998  80 1B 08 DC */	lwz r0, 0x8dc(r27)
/* 805D599C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805D59A0  40 82 00 1C */	bne lbl_805D59BC
/* 805D59A4  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 805D59A8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805D59AC  EC 21 00 28 */	fsubs f1, f1, f0
/* 805D59B0  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 805D59B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D59B8  41 81 05 94 */	bgt lbl_805D5F4C
lbl_805D59BC:
/* 805D59BC  80 1B 06 8C */	lwz r0, 0x68c(r27)
/* 805D59C0  2C 00 00 26 */	cmpwi r0, 0x26
/* 805D59C4  41 82 00 1C */	beq lbl_805D59E0
/* 805D59C8  7F 63 DB 78 */	mr r3, r27
/* 805D59CC  38 80 00 26 */	li r4, 0x26
/* 805D59D0  38 A0 00 00 */	li r5, 0
/* 805D59D4  C0 3D 03 B8 */	lfs f1, 0x3b8(r29)
/* 805D59D8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805D59DC  4B FF 60 ED */	bl setBck__8daB_DS_cFiUcff
lbl_805D59E0:
/* 805D59E0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805D59E4  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 805D59E8  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 805D59EC  A8 1B 04 E4 */	lha r0, 0x4e4(r27)
/* 805D59F0  B0 01 00 34 */	sth r0, 0x34(r1)
/* 805D59F4  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 805D59F8  B0 01 00 36 */	sth r0, 0x36(r1)
/* 805D59FC  A8 1B 04 E8 */	lha r0, 0x4e8(r27)
/* 805D5A00  B0 01 00 38 */	sth r0, 0x38(r1)
/* 805D5A04  38 80 00 00 */	li r4, 0
/* 805D5A08  B0 81 00 38 */	sth r4, 0x38(r1)
/* 805D5A0C  B0 81 00 34 */	sth r4, 0x34(r1)
/* 805D5A10  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805D5A14  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 805D5A18  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805D5A1C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 805D5A20  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 805D5A24  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 805D5A28  C0 1B 09 48 */	lfs f0, 0x948(r27)
/* 805D5A2C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 805D5A30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D5A34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D5A38  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805D5A3C  38 00 00 FF */	li r0, 0xff
/* 805D5A40  90 01 00 08 */	stw r0, 8(r1)
/* 805D5A44  90 81 00 0C */	stw r4, 0xc(r1)
/* 805D5A48  38 00 FF FF */	li r0, -1
/* 805D5A4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D5A50  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D5A54  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D5A58  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805D5A5C  80 9B 2D F0 */	lwz r4, 0x2df0(r27)
/* 805D5A60  38 A0 00 00 */	li r5, 0
/* 805D5A64  3C C0 80 5E */	lis r6, eff_smoke_id@ha
/* 805D5A68  38 C6 D4 70 */	addi r6, r6, eff_smoke_id@l
/* 805D5A6C  A0 C6 00 02 */	lhz r6, 2(r6)
/* 805D5A70  38 E1 00 CC */	addi r7, r1, 0xcc
/* 805D5A74  39 00 00 00 */	li r8, 0
/* 805D5A78  39 21 00 34 */	addi r9, r1, 0x34
/* 805D5A7C  39 41 00 B4 */	addi r10, r1, 0xb4
/* 805D5A80  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805D5A84  4B A7 7A 48 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D5A88  90 7B 2D F0 */	stw r3, 0x2df0(r27)
/* 805D5A8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D5@ha */
/* 805D5A90  38 03 04 D5 */	addi r0, r3, 0x04D5 /* 0x000704D5@l */
/* 805D5A94  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805D5A98  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805D5A9C  38 81 00 2C */	addi r4, r1, 0x2c
/* 805D5AA0  38 A0 00 00 */	li r5, 0
/* 805D5AA4  38 C0 FF FF */	li r6, -1
/* 805D5AA8  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805D5AAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D5AB0  7D 89 03 A6 */	mtctr r12
/* 805D5AB4  4E 80 04 21 */	bctrl 
/* 805D5AB8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805D5ABC  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 805D5AC0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805D5AC4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805D5AC8  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 805D5ACC  38 7F 4C 9C */	addi r3, r31, 0x4c9c
/* 805D5AD0  38 80 00 03 */	li r4, 3
/* 805D5AD4  38 A0 00 4F */	li r5, 0x4f
/* 805D5AD8  38 C1 00 6C */	addi r6, r1, 0x6c
/* 805D5ADC  4B A9 9F 48 */	b StartShock__12dVibration_cFii4cXyz
/* 805D5AE0  38 00 00 32 */	li r0, 0x32
/* 805D5AE4  90 1B 08 1C */	stw r0, 0x81c(r27)
/* 805D5AE8  80 7B 06 84 */	lwz r3, 0x684(r27)
/* 805D5AEC  38 03 00 01 */	addi r0, r3, 1
/* 805D5AF0  90 1B 06 84 */	stw r0, 0x684(r27)
lbl_805D5AF4:
/* 805D5AF4  38 7B 08 1C */	addi r3, r27, 0x81c
/* 805D5AF8  48 00 6D ED */	bl func_805DC8E4
/* 805D5AFC  2C 03 00 00 */	cmpwi r3, 0
/* 805D5B00  40 82 04 4C */	bne lbl_805D5F4C
/* 805D5B04  C0 1B 2D 20 */	lfs f0, 0x2d20(r27)
/* 805D5B08  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805D5B0C  C0 1B 2D 24 */	lfs f0, 0x2d24(r27)
/* 805D5B10  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805D5B14  C0 1B 2D 28 */	lfs f0, 0x2d28(r27)
/* 805D5B18  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805D5B1C  C0 1B 2D 14 */	lfs f0, 0x2d14(r27)
/* 805D5B20  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D5B24  C0 1B 2D 18 */	lfs f0, 0x2d18(r27)
/* 805D5B28  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D5B2C  C0 1B 2D 1C */	lfs f0, 0x2d1c(r27)
/* 805D5B30  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805D5B34  38 7C 02 48 */	addi r3, r28, 0x248
/* 805D5B38  38 81 00 60 */	addi r4, r1, 0x60
/* 805D5B3C  38 A1 00 54 */	addi r5, r1, 0x54
/* 805D5B40  4B BA B0 D8 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 805D5B44  38 7C 02 48 */	addi r3, r28, 0x248
/* 805D5B48  4B B8 B9 64 */	b Start__9dCamera_cFv
/* 805D5B4C  38 7C 02 48 */	addi r3, r28, 0x248
/* 805D5B50  38 80 00 00 */	li r4, 0
/* 805D5B54  4B B8 D4 B8 */	b SetTrimSize__9dCamera_cFl
/* 805D5B58  38 7F 3F 90 */	addi r3, r31, 0x3f90
/* 805D5B5C  4B A6 C9 0C */	b reset__14dEvt_control_cFv
/* 805D5B60  38 00 00 16 */	li r0, 0x16
/* 805D5B64  98 1B 05 46 */	stb r0, 0x546(r27)
/* 805D5B68  80 1B 0A DC */	lwz r0, 0xadc(r27)
/* 805D5B6C  60 00 00 01 */	ori r0, r0, 1
/* 805D5B70  90 1B 0A DC */	stw r0, 0xadc(r27)
/* 805D5B74  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D5B78  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805D5B7C  A8 03 00 28 */	lha r0, 0x28(r3)
/* 805D5B80  90 1B 08 28 */	stw r0, 0x828(r27)
/* 805D5B84  80 7B 06 84 */	lwz r3, 0x684(r27)
/* 805D5B88  38 03 00 01 */	addi r0, r3, 1
/* 805D5B8C  90 1B 06 84 */	stw r0, 0x684(r27)
lbl_805D5B90:
/* 805D5B90  7F 63 DB 78 */	mr r3, r27
/* 805D5B94  48 00 44 61 */	bl mBattle2_damage_check__8daB_DS_cFv
/* 805D5B98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D5B9C  41 82 00 20 */	beq lbl_805D5BBC
/* 805D5BA0  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805D5BA4  38 80 FF FF */	li r4, -1
/* 805D5BA8  4B AA 1A 48 */	b __dt__11dBgS_GndChkFv
/* 805D5BAC  38 61 01 38 */	addi r3, r1, 0x138
/* 805D5BB0  38 80 FF FF */	li r4, -1
/* 805D5BB4  4B AA 21 28 */	b __dt__11dBgS_LinChkFv
/* 805D5BB8  48 00 04 EC */	b lbl_805D60A4
lbl_805D5BBC:
/* 805D5BBC  38 7B 0B E8 */	addi r3, r27, 0xbe8
/* 805D5BC0  38 9B 06 E8 */	addi r4, r27, 0x6e8
/* 805D5BC4  4B C9 9A 84 */	b SetC__8cM3dGSphFRC4cXyz
/* 805D5BC8  38 7B 0B E8 */	addi r3, r27, 0xbe8
/* 805D5BCC  C0 3D 04 E0 */	lfs f1, 0x4e0(r29)
/* 805D5BD0  4B C9 9B 38 */	b SetR__8cM3dGSphFf
/* 805D5BD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D5BD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D5BDC  38 63 23 3C */	addi r3, r3, 0x233c
/* 805D5BE0  38 9B 0A C4 */	addi r4, r27, 0xac4
/* 805D5BE4  4B C8 EF C4 */	b Set__4cCcSFP8cCcD_Obj
/* 805D5BE8  38 7B 08 28 */	addi r3, r27, 0x828
/* 805D5BEC  48 00 6C F9 */	bl func_805DC8E4
/* 805D5BF0  2C 03 00 00 */	cmpwi r3, 0
/* 805D5BF4  41 82 00 EC */	beq lbl_805D5CE0
/* 805D5BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D5BFC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 805D5C00  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 805D5C04  38 00 00 FF */	li r0, 0xff
/* 805D5C08  90 01 00 08 */	stw r0, 8(r1)
/* 805D5C0C  38 80 00 00 */	li r4, 0
/* 805D5C10  90 81 00 0C */	stw r4, 0xc(r1)
/* 805D5C14  38 00 FF FF */	li r0, -1
/* 805D5C18  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D5C1C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D5C20  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D5C24  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805D5C28  80 9B 2E 14 */	lwz r4, 0x2e14(r27)
/* 805D5C2C  38 A0 00 00 */	li r5, 0
/* 805D5C30  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008BF5@ha */
/* 805D5C34  38 C6 8B F5 */	addi r6, r6, 0x8BF5 /* 0x00008BF5@l */
/* 805D5C38  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 805D5C3C  39 00 00 00 */	li r8, 0
/* 805D5C40  39 3B 04 E4 */	addi r9, r27, 0x4e4
/* 805D5C44  39 40 00 00 */	li r10, 0
/* 805D5C48  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805D5C4C  4B A7 78 80 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D5C50  90 7B 2E 14 */	stw r3, 0x2e14(r27)
/* 805D5C54  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 805D5C58  38 63 02 10 */	addi r3, r3, 0x210
/* 805D5C5C  80 9B 2E 14 */	lwz r4, 0x2e14(r27)
/* 805D5C60  4B A7 5C B8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 805D5C64  7C 7E 1B 79 */	or. r30, r3, r3
/* 805D5C68  41 82 00 34 */	beq lbl_805D5C9C
/* 805D5C6C  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805D5C70  80 63 00 04 */	lwz r3, 4(r3)
/* 805D5C74  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805D5C78  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D5C7C  38 9E 00 68 */	addi r4, r30, 0x68
/* 805D5C80  38 BE 00 98 */	addi r5, r30, 0x98
/* 805D5C84  38 DE 00 A4 */	addi r6, r30, 0xa4
/* 805D5C88  4B CA AB 80 */	b func_80280808
/* 805D5C8C  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 805D5C90  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 805D5C94  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 805D5C98  D0 3E 00 B4 */	stfs f1, 0xb4(r30)
lbl_805D5C9C:
/* 805D5C9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070526@ha */
/* 805D5CA0  38 03 05 26 */	addi r0, r3, 0x0526 /* 0x00070526@l */
/* 805D5CA4  90 01 00 28 */	stw r0, 0x28(r1)
/* 805D5CA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805D5CAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805D5CB0  80 63 00 00 */	lwz r3, 0(r3)
/* 805D5CB4  38 81 00 28 */	addi r4, r1, 0x28
/* 805D5CB8  38 BB 06 E8 */	addi r5, r27, 0x6e8
/* 805D5CBC  38 C0 00 00 */	li r6, 0
/* 805D5CC0  38 E0 00 00 */	li r7, 0
/* 805D5CC4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805D5CC8  FC 40 08 90 */	fmr f2, f1
/* 805D5CCC  C0 7D 00 58 */	lfs f3, 0x58(r29)
/* 805D5CD0  FC 80 18 90 */	fmr f4, f3
/* 805D5CD4  39 00 00 00 */	li r8, 0
/* 805D5CD8  4B CD 68 34 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805D5CDC  48 00 02 70 */	b lbl_805D5F4C
lbl_805D5CE0:
/* 805D5CE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D5CE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D5CE8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805D5CEC  38 63 02 10 */	addi r3, r3, 0x210
/* 805D5CF0  80 9B 2E 14 */	lwz r4, 0x2e14(r27)
/* 805D5CF4  4B A7 5C 24 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 805D5CF8  28 03 00 00 */	cmplwi r3, 0
/* 805D5CFC  41 82 00 10 */	beq lbl_805D5D0C
/* 805D5D00  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 805D5D04  60 00 00 04 */	ori r0, r0, 4
/* 805D5D08  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_805D5D0C:
/* 805D5D0C  38 00 00 00 */	li r0, 0
/* 805D5D10  98 1B 05 46 */	stb r0, 0x546(r27)
/* 805D5D14  7F 63 DB 78 */	mr r3, r27
/* 805D5D18  38 80 00 28 */	li r4, 0x28
/* 805D5D1C  38 A0 00 00 */	li r5, 0
/* 805D5D20  C0 3D 03 B8 */	lfs f1, 0x3b8(r29)
/* 805D5D24  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805D5D28  4B FF 5D A1 */	bl setBck__8daB_DS_cFiUcff
/* 805D5D2C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805D5D30  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805D5D34  80 63 00 00 */	lwz r3, 0(r3)
/* 805D5D38  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805D5D3C  38 80 00 01 */	li r4, 1
/* 805D5D40  4B CD A2 4C */	b changeBgmStatus__8Z2SeqMgrFl
/* 805D5D44  80 1B 0A DC */	lwz r0, 0xadc(r27)
/* 805D5D48  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805D5D4C  90 1B 0A DC */	stw r0, 0xadc(r27)
/* 805D5D50  80 7B 06 84 */	lwz r3, 0x684(r27)
/* 805D5D54  38 03 00 01 */	addi r0, r3, 1
/* 805D5D58  90 1B 06 84 */	stw r0, 0x684(r27)
lbl_805D5D5C:
/* 805D5D5C  38 00 00 64 */	li r0, 0x64
/* 805D5D60  98 1B 08 4E */	stb r0, 0x84e(r27)
/* 805D5D64  7F 63 DB 78 */	mr r3, r27
/* 805D5D68  4B FF E2 29 */	bl mChkScreenIn__8daB_DS_cFv
/* 805D5D6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D5D70  40 82 00 90 */	bne lbl_805D5E00
/* 805D5D74  7F 63 DB 78 */	mr r3, r27
/* 805D5D78  4B FF E1 29 */	bl mSetFirstPos__8daB_DS_cFv
/* 805D5D7C  38 60 00 00 */	li r3, 0
/* 805D5D80  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 805D5D84  38 A4 FD FF */	addi r5, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 805D5D88  38 80 00 02 */	li r4, 2
/* 805D5D8C  38 00 00 05 */	li r0, 5
/* 805D5D90  7C 09 03 A6 */	mtctr r0
lbl_805D5D94:
/* 805D5D94  7C DB 1A 14 */	add r6, r27, r3
/* 805D5D98  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805D5D9C  60 00 00 01 */	ori r0, r0, 1
/* 805D5DA0  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805D5DA4  90 A6 0C 24 */	stw r5, 0xc24(r6)
/* 805D5DA8  98 86 0C B6 */	stb r4, 0xcb6(r6)
/* 805D5DAC  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805D5DB0  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 805D5DB4  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805D5DB8  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805D5DBC  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 805D5DC0  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805D5DC4  38 63 01 38 */	addi r3, r3, 0x138
/* 805D5DC8  42 00 FF CC */	bdnz lbl_805D5D94
/* 805D5DCC  38 00 00 64 */	li r0, 0x64
/* 805D5DD0  98 1B 08 4E */	stb r0, 0x84e(r27)
/* 805D5DD4  7F 63 DB 78 */	mr r3, r27
/* 805D5DD8  38 80 00 01 */	li r4, 1
/* 805D5DDC  38 A0 00 00 */	li r5, 0
/* 805D5DE0  4B FF 5D 95 */	bl setActionMode__8daB_DS_cFii
/* 805D5DE4  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805D5DE8  38 80 FF FF */	li r4, -1
/* 805D5DEC  4B AA 18 04 */	b __dt__11dBgS_GndChkFv
/* 805D5DF0  38 61 01 38 */	addi r3, r1, 0x138
/* 805D5DF4  38 80 FF FF */	li r4, -1
/* 805D5DF8  4B AA 1E E4 */	b __dt__11dBgS_LinChkFv
/* 805D5DFC  48 00 02 A8 */	b lbl_805D60A4
lbl_805D5E00:
/* 805D5E00  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805D5E04  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805D5E08  FC 00 00 1E */	fctiwz f0, f0
/* 805D5E0C  D8 01 01 A8 */	stfd f0, 0x1a8(r1)
/* 805D5E10  80 01 01 AC */	lwz r0, 0x1ac(r1)
/* 805D5E14  2C 00 00 14 */	cmpwi r0, 0x14
/* 805D5E18  41 80 01 34 */	blt lbl_805D5F4C
/* 805D5E1C  38 63 00 0C */	addi r3, r3, 0xc
/* 805D5E20  C0 3D 02 B4 */	lfs f1, 0x2b4(r29)
/* 805D5E24  4B D5 26 08 */	b checkPass__12J3DFrameCtrlFf
/* 805D5E28  2C 03 00 00 */	cmpwi r3, 0
/* 805D5E2C  41 82 00 30 */	beq lbl_805D5E5C
/* 805D5E30  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D6@ha */
/* 805D5E34  38 03 04 D6 */	addi r0, r3, 0x04D6 /* 0x000704D6@l */
/* 805D5E38  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D5E3C  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805D5E40  38 81 00 24 */	addi r4, r1, 0x24
/* 805D5E44  38 A0 00 00 */	li r5, 0
/* 805D5E48  38 C0 FF FF */	li r6, -1
/* 805D5E4C  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805D5E50  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D5E54  7D 89 03 A6 */	mtctr r12
/* 805D5E58  4E 80 04 21 */	bctrl 
lbl_805D5E5C:
/* 805D5E5C  38 7B 08 10 */	addi r3, r27, 0x810
/* 805D5E60  C0 3D 00 70 */	lfs f1, 0x70(r29)
/* 805D5E64  C0 5D 00 7C */	lfs f2, 0x7c(r29)
/* 805D5E68  C0 7D 02 BC */	lfs f3, 0x2bc(r29)
/* 805D5E6C  4B C9 9B D0 */	b cLib_addCalc2__FPffff
/* 805D5E70  38 7B 04 E8 */	addi r3, r27, 0x4e8
/* 805D5E74  38 80 00 00 */	li r4, 0
/* 805D5E78  38 A0 00 04 */	li r5, 4
/* 805D5E7C  38 C0 04 00 */	li r6, 0x400
/* 805D5E80  4B C9 A7 88 */	b cLib_addCalcAngleS2__FPssss
/* 805D5E84  38 7B 07 E8 */	addi r3, r27, 0x7e8
/* 805D5E88  C0 3D 00 4C */	lfs f1, 0x4c(r29)
/* 805D5E8C  C0 5D 00 7C */	lfs f2, 0x7c(r29)
/* 805D5E90  C0 7D 01 90 */	lfs f3, 0x190(r29)
/* 805D5E94  4B C9 9B A8 */	b cLib_addCalc2__FPffff
/* 805D5E98  7F 63 DB 78 */	mr r3, r27
/* 805D5E9C  38 80 00 01 */	li r4, 1
/* 805D5EA0  4B FF DB 05 */	bl mFuwafuwaSet__8daB_DS_cFb
/* 805D5EA4  C0 3B 07 E8 */	lfs f1, 0x7e8(r27)
/* 805D5EA8  C0 1D 02 C8 */	lfs f0, 0x2c8(r29)
/* 805D5EAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D5EB0  40 81 00 9C */	ble lbl_805D5F4C
/* 805D5EB4  A8 1B 04 E8 */	lha r0, 0x4e8(r27)
/* 805D5EB8  2C 00 01 00 */	cmpwi r0, 0x100
/* 805D5EBC  40 80 00 90 */	bge lbl_805D5F4C
/* 805D5EC0  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 805D5EC4  D0 1B 07 E8 */	stfs f0, 0x7e8(r27)
/* 805D5EC8  38 00 00 00 */	li r0, 0
/* 805D5ECC  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 805D5ED0  38 60 00 00 */	li r3, 0
/* 805D5ED4  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 805D5ED8  38 A4 FD FF */	addi r5, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 805D5EDC  38 80 00 02 */	li r4, 2
/* 805D5EE0  38 00 00 05 */	li r0, 5
/* 805D5EE4  7C 09 03 A6 */	mtctr r0
lbl_805D5EE8:
/* 805D5EE8  7C DB 1A 14 */	add r6, r27, r3
/* 805D5EEC  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805D5EF0  60 00 00 01 */	ori r0, r0, 1
/* 805D5EF4  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805D5EF8  90 A6 0C 24 */	stw r5, 0xc24(r6)
/* 805D5EFC  98 86 0C B6 */	stb r4, 0xcb6(r6)
/* 805D5F00  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805D5F04  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 805D5F08  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805D5F0C  80 06 0C 98 */	lwz r0, 0xc98(r6)
/* 805D5F10  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 805D5F14  90 06 0C 98 */	stw r0, 0xc98(r6)
/* 805D5F18  38 63 01 38 */	addi r3, r3, 0x138
/* 805D5F1C  42 00 FF CC */	bdnz lbl_805D5EE8
/* 805D5F20  7F 63 DB 78 */	mr r3, r27
/* 805D5F24  38 80 00 01 */	li r4, 1
/* 805D5F28  38 A0 00 00 */	li r5, 0
/* 805D5F2C  4B FF 5C 49 */	bl setActionMode__8daB_DS_cFii
/* 805D5F30  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805D5F34  38 80 FF FF */	li r4, -1
/* 805D5F38  4B AA 16 B8 */	b __dt__11dBgS_GndChkFv
/* 805D5F3C  38 61 01 38 */	addi r3, r1, 0x138
/* 805D5F40  38 80 FF FF */	li r4, -1
/* 805D5F44  4B AA 1D 98 */	b __dt__11dBgS_LinChkFv
/* 805D5F48  48 00 01 5C */	b lbl_805D60A4
lbl_805D5F4C:
/* 805D5F4C  80 1B 06 84 */	lwz r0, 0x684(r27)
/* 805D5F50  2C 00 00 01 */	cmpwi r0, 1
/* 805D5F54  41 80 00 5C */	blt lbl_805D5FB0
/* 805D5F58  2C 00 00 03 */	cmpwi r0, 3
/* 805D5F5C  41 81 00 54 */	bgt lbl_805D5FB0
/* 805D5F60  C0 1B 2D 20 */	lfs f0, 0x2d20(r27)
/* 805D5F64  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805D5F68  C0 1B 2D 24 */	lfs f0, 0x2d24(r27)
/* 805D5F6C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805D5F70  C0 1B 2D 28 */	lfs f0, 0x2d28(r27)
/* 805D5F74  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805D5F78  C0 1B 2D 14 */	lfs f0, 0x2d14(r27)
/* 805D5F7C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805D5F80  C0 1B 2D 18 */	lfs f0, 0x2d18(r27)
/* 805D5F84  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805D5F88  C0 1B 2D 1C */	lfs f0, 0x2d1c(r27)
/* 805D5F8C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805D5F90  38 7C 02 48 */	addi r3, r28, 0x248
/* 805D5F94  38 81 00 48 */	addi r4, r1, 0x48
/* 805D5F98  38 A1 00 3C */	addi r5, r1, 0x3c
/* 805D5F9C  4B BA AB 0C */	b Set__9dCamera_cF4cXyz4cXyz
/* 805D5FA0  38 7B 07 E8 */	addi r3, r27, 0x7e8
/* 805D5FA4  C0 3D 00 7C */	lfs f1, 0x7c(r29)
/* 805D5FA8  C0 5D 01 90 */	lfs f2, 0x190(r29)
/* 805D5FAC  4B C9 9A D4 */	b cLib_addCalc0__FPfff
lbl_805D5FB0:
/* 805D5FB0  80 1B 06 84 */	lwz r0, 0x684(r27)
/* 805D5FB4  2C 00 00 02 */	cmpwi r0, 2
/* 805D5FB8  41 80 00 30 */	blt lbl_805D5FE8
/* 805D5FBC  2C 00 00 03 */	cmpwi r0, 3
/* 805D5FC0  41 81 00 28 */	bgt lbl_805D5FE8
/* 805D5FC4  38 80 32 C8 */	li r4, 0x32c8
/* 805D5FC8  88 1B 08 4C */	lbz r0, 0x84c(r27)
/* 805D5FCC  28 00 00 00 */	cmplwi r0, 0
/* 805D5FD0  40 82 00 08 */	bne lbl_805D5FD8
/* 805D5FD4  38 80 CD 38 */	li r4, -13000
lbl_805D5FD8:
/* 805D5FD8  38 7B 04 E8 */	addi r3, r27, 0x4e8
/* 805D5FDC  38 A0 00 04 */	li r5, 4
/* 805D5FE0  38 C0 04 00 */	li r6, 0x400
/* 805D5FE4  4B C9 A6 24 */	b cLib_addCalcAngleS2__FPssss
lbl_805D5FE8:
/* 805D5FE8  80 BB 08 28 */	lwz r5, 0x828(r27)
/* 805D5FEC  2C 05 00 00 */	cmpwi r5, 0
/* 805D5FF0  41 82 00 9C */	beq lbl_805D608C
/* 805D5FF4  C8 3D 00 98 */	lfd f1, 0x98(r29)
/* 805D5FF8  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 805D5FFC  90 01 01 AC */	stw r0, 0x1ac(r1)
/* 805D6000  3C 80 43 30 */	lis r4, 0x4330
/* 805D6004  90 81 01 A8 */	stw r4, 0x1a8(r1)
/* 805D6008  C8 01 01 A8 */	lfd f0, 0x1a8(r1)
/* 805D600C  EC 40 08 28 */	fsubs f2, f0, f1
/* 805D6010  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D6014  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805D6018  A8 03 00 28 */	lha r0, 0x28(r3)
/* 805D601C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6020  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 805D6024  90 81 01 B0 */	stw r4, 0x1b0(r1)
/* 805D6028  C8 01 01 B0 */	lfd f0, 0x1b0(r1)
/* 805D602C  EC 20 08 28 */	fsubs f1, f0, f1
/* 805D6030  C0 1D 03 B8 */	lfs f0, 0x3b8(r29)
/* 805D6034  EC 01 00 24 */	fdivs f0, f1, f0
/* 805D6038  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805D603C  40 81 00 20 */	ble lbl_805D605C
/* 805D6040  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805D6044  38 80 FF FF */	li r4, -1
/* 805D6048  4B AA 15 A8 */	b __dt__11dBgS_GndChkFv
/* 805D604C  38 61 01 38 */	addi r3, r1, 0x138
/* 805D6050  38 80 FF FF */	li r4, -1
/* 805D6054  4B AA 1C 88 */	b __dt__11dBgS_LinChkFv
/* 805D6058  48 00 00 4C */	b lbl_805D60A4
lbl_805D605C:
/* 805D605C  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 805D6060  40 82 00 18 */	bne lbl_805D6078
/* 805D6064  38 7B 07 E8 */	addi r3, r27, 0x7e8
/* 805D6068  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 805D606C  C0 5D 01 90 */	lfs f2, 0x190(r29)
/* 805D6070  4B C9 9A 10 */	b cLib_addCalc0__FPfff
/* 805D6074  48 00 00 18 */	b lbl_805D608C
lbl_805D6078:
/* 805D6078  38 7B 07 E8 */	addi r3, r27, 0x7e8
/* 805D607C  C0 3D 00 4C */	lfs f1, 0x4c(r29)
/* 805D6080  C0 5D 00 84 */	lfs f2, 0x84(r29)
/* 805D6084  C0 7D 01 90 */	lfs f3, 0x190(r29)
/* 805D6088  4B C9 99 B4 */	b cLib_addCalc2__FPffff
lbl_805D608C:
/* 805D608C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 805D6090  38 80 FF FF */	li r4, -1
/* 805D6094  4B AA 15 5C */	b __dt__11dBgS_GndChkFv
/* 805D6098  38 61 01 38 */	addi r3, r1, 0x138
/* 805D609C  38 80 FF FF */	li r4, -1
/* 805D60A0  4B AA 1C 3C */	b __dt__11dBgS_LinChkFv
lbl_805D60A4:
/* 805D60A4  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 805D60A8  4B D8 C1 74 */	b _restgpr_26
/* 805D60AC  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 805D60B0  7C 08 03 A6 */	mtlr r0
/* 805D60B4  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 805D60B8  4E 80 00 20 */	blr 
