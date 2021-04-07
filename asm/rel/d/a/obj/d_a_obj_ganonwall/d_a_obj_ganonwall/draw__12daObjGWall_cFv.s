lbl_80BF5168:
/* 80BF5168  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80BF516C  7C 08 02 A6 */	mflr r0
/* 80BF5170  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80BF5174  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80BF5178  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80BF517C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BF5180  4B 76 D0 59 */	bl _savegpr_28
/* 80BF5184  7C 7E 1B 78 */	mr r30, r3
/* 80BF5188  3C 80 80 BF */	lis r4, l_idx@ha /* 0x80BF55EC@ha */
/* 80BF518C  3B E4 55 EC */	addi r31, r4, l_idx@l /* 0x80BF55EC@l */
/* 80BF5190  4B FF FF 3D */	bl checkDraw__12daObjGWall_cFv
/* 80BF5194  2C 03 00 00 */	cmpwi r3, 0
/* 80BF5198  40 82 00 0C */	bne lbl_80BF51A4
/* 80BF519C  38 60 00 01 */	li r3, 1
/* 80BF51A0  48 00 03 70 */	b lbl_80BF5510
lbl_80BF51A4:
/* 80BF51A4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BF51A8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BF51AC  38 80 00 00 */	li r4, 0
/* 80BF51B0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BF51B4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BF51B8  4B 5A E6 0D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BF51BC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BF51C0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BF51C4  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80BF51C8  80 84 00 04 */	lwz r4, 4(r4)
/* 80BF51CC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BF51D0  4B 5A FB D1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BF51D4  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80BF51D8  80 83 00 04 */	lwz r4, 4(r3)
/* 80BF51DC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80BF51E0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BF51E4  38 84 00 58 */	addi r4, r4, 0x58
/* 80BF51E8  4B 41 84 F1 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80BF51EC  3B 80 00 00 */	li r28, 0
/* 80BF51F0  48 00 00 64 */	b lbl_80BF5254
lbl_80BF51F4:
/* 80BF51F4  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80BF51F8  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 80BF51FC  7F A3 00 2E */	lwzx r29, r3, r0
/* 80BF5200  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 80BF5204  81 83 00 00 */	lwz r12, 0(r3)
/* 80BF5208  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80BF520C  7D 89 03 A6 */	mtctr r12
/* 80BF5210  4E 80 04 21 */	bctrl 
/* 80BF5214  28 03 00 00 */	cmplwi r3, 0
/* 80BF5218  41 82 00 38 */	beq lbl_80BF5250
/* 80BF521C  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 80BF5220  81 83 00 00 */	lwz r12, 0(r3)
/* 80BF5224  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80BF5228  7D 89 03 A6 */	mtctr r12
/* 80BF522C  4E 80 04 21 */	bctrl 
/* 80BF5230  38 00 00 00 */	li r0, 0
/* 80BF5234  98 03 00 14 */	stb r0, 0x14(r3)
/* 80BF5238  98 03 00 15 */	stb r0, 0x15(r3)
/* 80BF523C  98 03 00 16 */	stb r0, 0x16(r3)
/* 80BF5240  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80BF5244  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BF5248  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80BF524C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80BF5250:
/* 80BF5250  3B 9C 00 01 */	addi r28, r28, 1
lbl_80BF5254:
/* 80BF5254  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80BF5258  80 83 00 04 */	lwz r4, 4(r3)
/* 80BF525C  A0 64 00 5C */	lhz r3, 0x5c(r4)
/* 80BF5260  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80BF5264  7C 00 18 40 */	cmplw r0, r3
/* 80BF5268  41 80 FF 8C */	blt lbl_80BF51F4
/* 80BF526C  4B 5A A7 A5 */	bl dKy_getdaytime_hour__Fv
/* 80BF5270  7C 7D 1B 78 */	mr r29, r3
/* 80BF5274  4B 5A A7 C9 */	bl dKy_getdaytime_minute__Fv
/* 80BF5278  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 80BF527C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80BF5280  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BF5284  3C 00 43 30 */	lis r0, 0x4330
/* 80BF5288  90 01 00 08 */	stw r0, 8(r1)
/* 80BF528C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BF5290  EF E0 08 28 */	fsubs f31, f0, f1
/* 80BF5294  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80BF5298  80 63 00 04 */	lwz r3, 4(r3)
/* 80BF529C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80BF52A0  A0 1E 05 7C */	lhz r0, 0x57c(r30)
/* 80BF52A4  54 00 10 3A */	slwi r0, r0, 2
/* 80BF52A8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BF52AC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80BF52B0  38 80 00 01 */	li r4, 1
/* 80BF52B4  81 83 00 00 */	lwz r12, 0(r3)
/* 80BF52B8  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80BF52BC  7D 89 03 A6 */	mtctr r12
/* 80BF52C0  4E 80 04 21 */	bctrl 
/* 80BF52C4  57 A0 10 3A */	slwi r0, r29, 2
/* 80BF52C8  38 9F 00 00 */	addi r4, r31, 0
/* 80BF52CC  7C A4 00 AE */	lbzx r5, r4, r0
/* 80BF52D0  7D 44 02 14 */	add r10, r4, r0
/* 80BF52D4  88 CA 00 01 */	lbz r6, 1(r10)
/* 80BF52D8  54 A0 10 3A */	slwi r0, r5, 2
/* 80BF52DC  39 3F 00 60 */	addi r9, r31, 0x60
/* 80BF52E0  7C 89 00 AE */	lbzx r4, r9, r0
/* 80BF52E4  C8 5F 00 E0 */	lfd f2, 0xe0(r31)
/* 80BF52E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BF52EC  3D 00 43 30 */	lis r8, 0x4330
/* 80BF52F0  91 01 00 10 */	stw r8, 0x10(r1)
/* 80BF52F4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BF52F8  EC C0 10 28 */	fsubs f6, f0, f2
/* 80BF52FC  54 CB 10 3A */	slwi r11, r6, 2
/* 80BF5300  7C E9 58 AE */	lbzx r7, r9, r11
/* 80BF5304  7C 84 38 50 */	subf r4, r4, r7
/* 80BF5308  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 80BF530C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80BF5310  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BF5314  91 01 00 18 */	stw r8, 0x18(r1)
/* 80BF5318  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BF531C  EC A0 08 28 */	fsubs f5, f0, f1
/* 80BF5320  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80BF5324  88 CA 00 03 */	lbz r6, 3(r10)
/* 80BF5328  90 C1 00 24 */	stw r6, 0x24(r1)
/* 80BF532C  91 01 00 20 */	stw r8, 0x20(r1)
/* 80BF5330  C8 61 00 20 */	lfd f3, 0x20(r1)
/* 80BF5334  EC 63 10 28 */	fsubs f3, f3, f2
/* 80BF5338  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80BF533C  EC 9F 18 2A */	fadds f4, f31, f3
/* 80BF5340  88 8A 00 02 */	lbz r4, 2(r10)
/* 80BF5344  38 84 00 01 */	addi r4, r4, 1
/* 80BF5348  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 80BF534C  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80BF5350  91 01 00 28 */	stw r8, 0x28(r1)
/* 80BF5354  C8 61 00 28 */	lfd f3, 0x28(r1)
/* 80BF5358  EC 63 08 28 */	fsubs f3, f3, f1
/* 80BF535C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80BF5360  EC 64 18 24 */	fdivs f3, f4, f3
/* 80BF5364  EC 65 00 F2 */	fmuls f3, f5, f3
/* 80BF5368  EC 66 18 2A */	fadds f3, f6, f3
/* 80BF536C  FC 60 18 1E */	fctiwz f3, f3
/* 80BF5370  D8 61 00 30 */	stfd f3, 0x30(r1)
/* 80BF5374  80 81 00 34 */	lwz r4, 0x34(r1)
/* 80BF5378  98 83 00 00 */	stb r4, 0(r3)
/* 80BF537C  38 89 00 01 */	addi r4, r9, 1
/* 80BF5380  7D 84 00 AE */	lbzx r12, r4, r0
/* 80BF5384  91 81 00 3C */	stw r12, 0x3c(r1)
/* 80BF5388  91 01 00 38 */	stw r8, 0x38(r1)
/* 80BF538C  C8 61 00 38 */	lfd f3, 0x38(r1)
/* 80BF5390  EC C3 10 28 */	fsubs f6, f3, f2
/* 80BF5394  7C 84 58 AE */	lbzx r4, r4, r11
/* 80BF5398  7C 8C 20 50 */	subf r4, r12, r4
/* 80BF539C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80BF53A0  90 81 00 44 */	stw r4, 0x44(r1)
/* 80BF53A4  91 01 00 40 */	stw r8, 0x40(r1)
/* 80BF53A8  C8 61 00 40 */	lfd f3, 0x40(r1)
/* 80BF53AC  EC A3 08 28 */	fsubs f5, f3, f1
/* 80BF53B0  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 80BF53B4  91 01 00 48 */	stw r8, 0x48(r1)
/* 80BF53B8  C8 61 00 48 */	lfd f3, 0x48(r1)
/* 80BF53BC  EC 63 10 28 */	fsubs f3, f3, f2
/* 80BF53C0  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80BF53C4  EC 9F 18 2A */	fadds f4, f31, f3
/* 80BF53C8  90 A1 00 54 */	stw r5, 0x54(r1)
/* 80BF53CC  91 01 00 50 */	stw r8, 0x50(r1)
/* 80BF53D0  C8 61 00 50 */	lfd f3, 0x50(r1)
/* 80BF53D4  EC 63 08 28 */	fsubs f3, f3, f1
/* 80BF53D8  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80BF53DC  EC 64 18 24 */	fdivs f3, f4, f3
/* 80BF53E0  EC 65 00 F2 */	fmuls f3, f5, f3
/* 80BF53E4  EC 66 18 2A */	fadds f3, f6, f3
/* 80BF53E8  FC 60 18 1E */	fctiwz f3, f3
/* 80BF53EC  D8 61 00 58 */	stfd f3, 0x58(r1)
/* 80BF53F0  80 81 00 5C */	lwz r4, 0x5c(r1)
/* 80BF53F4  98 83 00 01 */	stb r4, 1(r3)
/* 80BF53F8  38 CA 00 03 */	addi r6, r10, 3
/* 80BF53FC  38 AA 00 02 */	addi r5, r10, 2
/* 80BF5400  38 89 00 02 */	addi r4, r9, 2
/* 80BF5404  7D 44 00 AE */	lbzx r10, r4, r0
/* 80BF5408  91 41 00 64 */	stw r10, 0x64(r1)
/* 80BF540C  91 01 00 60 */	stw r8, 0x60(r1)
/* 80BF5410  C8 61 00 60 */	lfd f3, 0x60(r1)
/* 80BF5414  EC C3 10 28 */	fsubs f6, f3, f2
/* 80BF5418  7C 84 58 AE */	lbzx r4, r4, r11
/* 80BF541C  7C 8A 20 50 */	subf r4, r10, r4
/* 80BF5420  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80BF5424  90 81 00 6C */	stw r4, 0x6c(r1)
/* 80BF5428  91 01 00 68 */	stw r8, 0x68(r1)
/* 80BF542C  C8 61 00 68 */	lfd f3, 0x68(r1)
/* 80BF5430  EC A3 08 28 */	fsubs f5, f3, f1
/* 80BF5434  88 C6 00 00 */	lbz r6, 0(r6)
/* 80BF5438  90 C1 00 74 */	stw r6, 0x74(r1)
/* 80BF543C  91 01 00 70 */	stw r8, 0x70(r1)
/* 80BF5440  C8 61 00 70 */	lfd f3, 0x70(r1)
/* 80BF5444  EC 63 10 28 */	fsubs f3, f3, f2
/* 80BF5448  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80BF544C  EC 9F 18 2A */	fadds f4, f31, f3
/* 80BF5450  88 85 00 00 */	lbz r4, 0(r5)
/* 80BF5454  38 84 00 01 */	addi r4, r4, 1
/* 80BF5458  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 80BF545C  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 80BF5460  91 01 00 78 */	stw r8, 0x78(r1)
/* 80BF5464  C8 61 00 78 */	lfd f3, 0x78(r1)
/* 80BF5468  EC 63 08 28 */	fsubs f3, f3, f1
/* 80BF546C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80BF5470  EC 64 18 24 */	fdivs f3, f4, f3
/* 80BF5474  EC 65 00 F2 */	fmuls f3, f5, f3
/* 80BF5478  EC 66 18 2A */	fadds f3, f6, f3
/* 80BF547C  FC 60 18 1E */	fctiwz f3, f3
/* 80BF5480  D8 61 00 80 */	stfd f3, 0x80(r1)
/* 80BF5484  80 81 00 84 */	lwz r4, 0x84(r1)
/* 80BF5488  98 83 00 02 */	stb r4, 2(r3)
/* 80BF548C  7C 89 02 14 */	add r4, r9, r0
/* 80BF5490  88 04 00 03 */	lbz r0, 3(r4)
/* 80BF5494  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80BF5498  91 01 00 88 */	stw r8, 0x88(r1)
/* 80BF549C  C8 61 00 88 */	lfd f3, 0x88(r1)
/* 80BF54A0  EC A3 10 28 */	fsubs f5, f3, f2
/* 80BF54A4  7C 00 38 50 */	subf r0, r0, r7
/* 80BF54A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BF54AC  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BF54B0  91 01 00 90 */	stw r8, 0x90(r1)
/* 80BF54B4  C8 61 00 90 */	lfd f3, 0x90(r1)
/* 80BF54B8  EC 83 08 28 */	fsubs f4, f3, f1
/* 80BF54BC  90 C1 00 9C */	stw r6, 0x9c(r1)
/* 80BF54C0  91 01 00 98 */	stw r8, 0x98(r1)
/* 80BF54C4  C8 61 00 98 */	lfd f3, 0x98(r1)
/* 80BF54C8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80BF54CC  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80BF54D0  EC 7F 10 2A */	fadds f3, f31, f2
/* 80BF54D4  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 80BF54D8  91 01 00 A0 */	stw r8, 0xa0(r1)
/* 80BF54DC  C8 41 00 A0 */	lfd f2, 0xa0(r1)
/* 80BF54E0  EC 22 08 28 */	fsubs f1, f2, f1
/* 80BF54E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BF54E8  EC 03 00 24 */	fdivs f0, f3, f0
/* 80BF54EC  EC 04 00 32 */	fmuls f0, f4, f0
/* 80BF54F0  EC 05 00 2A */	fadds f0, f5, f0
/* 80BF54F4  FC 00 00 1E */	fctiwz f0, f0
/* 80BF54F8  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 80BF54FC  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80BF5500  98 03 00 03 */	stb r0, 3(r3)
/* 80BF5504  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80BF5508  4B 41 87 BD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BF550C  38 60 00 01 */	li r3, 1
lbl_80BF5510:
/* 80BF5510  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80BF5514  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80BF5518  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BF551C  4B 76 CD 09 */	bl _restgpr_28
/* 80BF5520  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80BF5524  7C 08 03 A6 */	mtlr r0
/* 80BF5528  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80BF552C  4E 80 00 20 */	blr 
