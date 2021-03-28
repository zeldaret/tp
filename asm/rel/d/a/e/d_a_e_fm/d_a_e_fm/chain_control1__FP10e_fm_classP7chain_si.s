lbl_804F5148:
/* 804F5148  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 804F514C  7C 08 02 A6 */	mflr r0
/* 804F5150  90 01 01 54 */	stw r0, 0x154(r1)
/* 804F5154  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 804F5158  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 804F515C  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 804F5160  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 804F5164  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 804F5168  F3 A1 01 28 */	psq_st f29, 296(r1), 0, 0 /* qr0 */
/* 804F516C  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 804F5170  F3 81 01 18 */	psq_st f28, 280(r1), 0, 0 /* qr0 */
/* 804F5174  DB 61 01 00 */	stfd f27, 0x100(r1)
/* 804F5178  F3 61 01 08 */	psq_st f27, 264(r1), 0, 0 /* qr0 */
/* 804F517C  DB 41 00 F0 */	stfd f26, 0xf0(r1)
/* 804F5180  F3 41 00 F8 */	psq_st f26, 248(r1), 0, 0 /* qr0 */
/* 804F5184  DB 21 00 E0 */	stfd f25, 0xe0(r1)
/* 804F5188  F3 21 00 E8 */	psq_st f25, 232(r1), 0, 0 /* qr0 */
/* 804F518C  DB 01 00 D0 */	stfd f24, 0xd0(r1)
/* 804F5190  F3 01 00 D8 */	psq_st f24, 216(r1), 0, 0 /* qr0 */
/* 804F5194  DA E1 00 C0 */	stfd f23, 0xc0(r1)
/* 804F5198  F2 E1 00 C8 */	psq_st f23, 200(r1), 0, 0 /* qr0 */
/* 804F519C  DA C1 00 B0 */	stfd f22, 0xb0(r1)
/* 804F51A0  F2 C1 00 B8 */	psq_st f22, 184(r1), 0, 0 /* qr0 */
/* 804F51A4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804F51A8  4B E6 D0 10 */	b _savegpr_20
/* 804F51AC  7C 76 1B 78 */	mr r22, r3
/* 804F51B0  7C 97 23 78 */	mr r23, r4
/* 804F51B4  7C B8 2B 78 */	mr r24, r5
/* 804F51B8  3C 60 80 50 */	lis r3, lit_3777@ha
/* 804F51BC  3B C3 A6 BC */	addi r30, r3, lit_3777@l
/* 804F51C0  C0 04 00 68 */	lfs f0, 0x68(r4)
/* 804F51C4  D0 04 00 74 */	stfs f0, 0x74(r4)
/* 804F51C8  C0 04 00 6C */	lfs f0, 0x6c(r4)
/* 804F51CC  D0 04 00 78 */	stfs f0, 0x78(r4)
/* 804F51D0  C0 04 00 70 */	lfs f0, 0x70(r4)
/* 804F51D4  D0 04 00 7C */	stfs f0, 0x7c(r4)
/* 804F51D8  3B 77 00 80 */	addi r27, r23, 0x80
/* 804F51DC  3B 57 02 F0 */	addi r26, r23, 0x2f0
/* 804F51E0  3B 37 04 22 */	addi r25, r23, 0x422
/* 804F51E4  38 61 00 2C */	addi r3, r1, 0x2c
/* 804F51E8  38 97 60 88 */	addi r4, r23, 0x6088
/* 804F51EC  38 B7 60 94 */	addi r5, r23, 0x6094
/* 804F51F0  4B D7 19 44 */	b __mi__4cXyzCFRC3Vec
/* 804F51F4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804F51F8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804F51FC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804F5200  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804F5204  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804F5208  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804F520C  38 61 00 50 */	addi r3, r1, 0x50
/* 804F5210  4B E5 1F 28 */	b PSVECSquareMag
/* 804F5214  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F5218  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F521C  40 81 00 58 */	ble lbl_804F5274
/* 804F5220  FC 00 08 34 */	frsqrte f0, f1
/* 804F5224  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 804F5228  FC 44 00 32 */	fmul f2, f4, f0
/* 804F522C  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 804F5230  FC 00 00 32 */	fmul f0, f0, f0
/* 804F5234  FC 01 00 32 */	fmul f0, f1, f0
/* 804F5238  FC 03 00 28 */	fsub f0, f3, f0
/* 804F523C  FC 02 00 32 */	fmul f0, f2, f0
/* 804F5240  FC 44 00 32 */	fmul f2, f4, f0
/* 804F5244  FC 00 00 32 */	fmul f0, f0, f0
/* 804F5248  FC 01 00 32 */	fmul f0, f1, f0
/* 804F524C  FC 03 00 28 */	fsub f0, f3, f0
/* 804F5250  FC 02 00 32 */	fmul f0, f2, f0
/* 804F5254  FC 44 00 32 */	fmul f2, f4, f0
/* 804F5258  FC 00 00 32 */	fmul f0, f0, f0
/* 804F525C  FC 01 00 32 */	fmul f0, f1, f0
/* 804F5260  FC 03 00 28 */	fsub f0, f3, f0
/* 804F5264  FC 02 00 32 */	fmul f0, f2, f0
/* 804F5268  FC 21 00 32 */	fmul f1, f1, f0
/* 804F526C  FC 20 08 18 */	frsp f1, f1
/* 804F5270  48 00 00 88 */	b lbl_804F52F8
lbl_804F5274:
/* 804F5274  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 804F5278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F527C  40 80 00 10 */	bge lbl_804F528C
/* 804F5280  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804F5284  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804F5288  48 00 00 70 */	b lbl_804F52F8
lbl_804F528C:
/* 804F528C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804F5290  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804F5294  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804F5298  3C 00 7F 80 */	lis r0, 0x7f80
/* 804F529C  7C 03 00 00 */	cmpw r3, r0
/* 804F52A0  41 82 00 14 */	beq lbl_804F52B4
/* 804F52A4  40 80 00 40 */	bge lbl_804F52E4
/* 804F52A8  2C 03 00 00 */	cmpwi r3, 0
/* 804F52AC  41 82 00 20 */	beq lbl_804F52CC
/* 804F52B0  48 00 00 34 */	b lbl_804F52E4
lbl_804F52B4:
/* 804F52B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804F52B8  41 82 00 0C */	beq lbl_804F52C4
/* 804F52BC  38 00 00 01 */	li r0, 1
/* 804F52C0  48 00 00 28 */	b lbl_804F52E8
lbl_804F52C4:
/* 804F52C4  38 00 00 02 */	li r0, 2
/* 804F52C8  48 00 00 20 */	b lbl_804F52E8
lbl_804F52CC:
/* 804F52CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804F52D0  41 82 00 0C */	beq lbl_804F52DC
/* 804F52D4  38 00 00 05 */	li r0, 5
/* 804F52D8  48 00 00 10 */	b lbl_804F52E8
lbl_804F52DC:
/* 804F52DC  38 00 00 03 */	li r0, 3
/* 804F52E0  48 00 00 08 */	b lbl_804F52E8
lbl_804F52E4:
/* 804F52E4  38 00 00 04 */	li r0, 4
lbl_804F52E8:
/* 804F52E8  2C 00 00 01 */	cmpwi r0, 1
/* 804F52EC  40 82 00 0C */	bne lbl_804F52F8
/* 804F52F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804F52F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804F52F8:
/* 804F52F8  FF 60 08 90 */	fmr f27, f1
/* 804F52FC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F5300  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804F5304  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804F5308  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804F530C  FF 40 00 90 */	fmr f26, f0
/* 804F5310  88 17 61 7E */	lbz r0, 0x617e(r23)
/* 804F5314  7C 00 07 75 */	extsb. r0, r0
/* 804F5318  40 82 00 28 */	bne lbl_804F5340
/* 804F531C  88 17 61 7C */	lbz r0, 0x617c(r23)
/* 804F5320  7C 00 07 75 */	extsb. r0, r0
/* 804F5324  41 82 00 F0 */	beq lbl_804F5414
/* 804F5328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F532C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F5330  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804F5334  80 03 05 70 */	lwz r0, 0x570(r3)
/* 804F5338  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804F533C  41 82 00 D8 */	beq lbl_804F5414
lbl_804F5340:
/* 804F5340  C0 37 61 74 */	lfs f1, 0x6174(r23)
/* 804F5344  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 804F5348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F534C  40 81 00 C8 */	ble lbl_804F5414
/* 804F5350  EE C1 00 28 */	fsubs f22, f1, f0
/* 804F5354  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 804F5358  FC 16 00 40 */	fcmpo cr0, f22, f0
/* 804F535C  40 81 00 08 */	ble lbl_804F5364
/* 804F5360  FE C0 00 90 */	fmr f22, f0
lbl_804F5364:
/* 804F5364  38 61 00 20 */	addi r3, r1, 0x20
/* 804F5368  38 97 61 80 */	addi r4, r23, 0x6180
/* 804F536C  38 B7 00 68 */	addi r5, r23, 0x68
/* 804F5370  4B D7 17 C4 */	b __mi__4cXyzCFRC3Vec
/* 804F5374  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804F5378  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 804F537C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804F5380  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804F5384  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 804F5388  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 804F538C  4B D7 22 E8 */	b cM_atan2s__Fff
/* 804F5390  7C 64 1B 78 */	mr r4, r3
/* 804F5394  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F5398  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F539C  80 63 00 00 */	lwz r3, 0(r3)
/* 804F53A0  4B B1 70 3C */	b mDoMtx_YrotS__FPA4_fs
/* 804F53A4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 804F53A8  EC 20 00 32 */	fmuls f1, f0, f0
/* 804F53AC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 804F53B0  EC 00 00 32 */	fmuls f0, f0, f0
/* 804F53B4  EC 41 00 2A */	fadds f2, f1, f0
/* 804F53B8  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F53BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804F53C0  40 81 00 0C */	ble lbl_804F53CC
/* 804F53C4  FC 00 10 34 */	frsqrte f0, f2
/* 804F53C8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804F53CC:
/* 804F53CC  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 804F53D0  4B D7 22 A4 */	b cM_atan2s__Fff
/* 804F53D4  7C 03 00 D0 */	neg r0, r3
/* 804F53D8  7C 04 07 34 */	extsh r4, r0
/* 804F53DC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F53E0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F53E4  80 63 00 00 */	lwz r3, 0(r3)
/* 804F53E8  4B B1 6F B4 */	b mDoMtx_XrotM__FPA4_fs
/* 804F53EC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F53F0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804F53F4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804F53F8  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 804F53FC  EC 00 05 B2 */	fmuls f0, f0, f22
/* 804F5400  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 804F5404  38 61 00 68 */	addi r3, r1, 0x68
/* 804F5408  38 81 00 44 */	addi r4, r1, 0x44
/* 804F540C  4B D7 BA E0 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F5410  48 00 00 B4 */	b lbl_804F54C4
lbl_804F5414:
/* 804F5414  C0 36 07 9C */	lfs f1, 0x79c(r22)
/* 804F5418  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804F541C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F5420  40 81 00 A4 */	ble lbl_804F54C4
/* 804F5424  A8 16 07 A2 */	lha r0, 0x7a2(r22)
/* 804F5428  2C 00 00 0C */	cmpwi r0, 0xc
/* 804F542C  40 82 00 28 */	bne lbl_804F5454
/* 804F5430  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F5434  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F5438  80 63 00 00 */	lwz r3, 0(r3)
/* 804F543C  A8 96 04 E6 */	lha r4, 0x4e6(r22)
/* 804F5440  3C 84 00 01 */	addis r4, r4, 1
/* 804F5444  38 04 80 00 */	addi r0, r4, -32768
/* 804F5448  7C 04 07 34 */	extsh r4, r0
/* 804F544C  4B B1 6F 90 */	b mDoMtx_YrotS__FPA4_fs
/* 804F5450  48 00 00 54 */	b lbl_804F54A4
lbl_804F5454:
/* 804F5454  38 61 00 14 */	addi r3, r1, 0x14
/* 804F5458  80 97 61 D0 */	lwz r4, 0x61d0(r23)
/* 804F545C  38 04 FF FF */	addi r0, r4, -1
/* 804F5460  1C 80 00 0C */	mulli r4, r0, 0xc
/* 804F5464  38 84 00 74 */	addi r4, r4, 0x74
/* 804F5468  7C 97 22 14 */	add r4, r23, r4
/* 804F546C  38 B6 04 D0 */	addi r5, r22, 0x4d0
/* 804F5470  4B D7 16 C4 */	b __mi__4cXyzCFRC3Vec
/* 804F5474  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804F5478  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 804F547C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804F5480  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804F5484  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 804F5488  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 804F548C  4B D7 21 E8 */	b cM_atan2s__Fff
/* 804F5490  7C 64 1B 78 */	mr r4, r3
/* 804F5494  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F5498  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F549C  80 63 00 00 */	lwz r3, 0(r3)
/* 804F54A0  4B B1 6F 3C */	b mDoMtx_YrotS__FPA4_fs
lbl_804F54A4:
/* 804F54A4  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F54A8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804F54AC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804F54B0  C0 16 07 9C */	lfs f0, 0x79c(r22)
/* 804F54B4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 804F54B8  38 61 00 68 */	addi r3, r1, 0x68
/* 804F54BC  38 81 00 44 */	addi r4, r1, 0x44
/* 804F54C0  4B D7 BA 2C */	b MtxPosition__FP4cXyzP4cXyz
lbl_804F54C4:
/* 804F54C4  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F54C8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804F54CC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804F54D0  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804F54D4  38 63 AE A4 */	addi r3, r3, l_HIO@l
/* 804F54D8  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 804F54DC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 804F54E0  C3 1E 01 E0 */	lfs f24, 0x1e0(r30)
/* 804F54E4  88 17 61 7C */	lbz r0, 0x617c(r23)
/* 804F54E8  7C 00 07 75 */	extsb. r0, r0
/* 804F54EC  41 82 00 24 */	beq lbl_804F5510
/* 804F54F0  C3 3E 01 E4 */	lfs f25, 0x1e4(r30)
/* 804F54F4  88 16 18 29 */	lbz r0, 0x1829(r22)
/* 804F54F8  7C 00 07 75 */	extsb. r0, r0
/* 804F54FC  41 82 00 0C */	beq lbl_804F5508
/* 804F5500  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 804F5504  EF 39 00 2A */	fadds f25, f25, f0
lbl_804F5508:
/* 804F5508  C3 1E 01 E0 */	lfs f24, 0x1e0(r30)
/* 804F550C  48 00 00 1C */	b lbl_804F5528
lbl_804F5510:
/* 804F5510  C3 3E 01 EC */	lfs f25, 0x1ec(r30)
/* 804F5514  88 16 18 29 */	lbz r0, 0x1829(r22)
/* 804F5518  7C 00 07 75 */	extsb. r0, r0
/* 804F551C  41 82 00 0C */	beq lbl_804F5528
/* 804F5520  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 804F5524  EF 39 00 2A */	fadds f25, f25, f0
lbl_804F5528:
/* 804F5528  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 804F552C  C0 16 08 E4 */	lfs f0, 0x8e4(r22)
/* 804F5530  EE E1 00 2A */	fadds f23, f1, f0
/* 804F5534  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 804F5538  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804F553C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804F5540  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804F5544  3B A0 00 01 */	li r29, 1
/* 804F5548  3A A0 F4 48 */	li r21, -3000
/* 804F554C  C3 DE 00 00 */	lfs f30, 0(r30)
/* 804F5550  C3 FE 00 3C */	lfs f31, 0x3c(r30)
/* 804F5554  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F5558  3B E3 07 68 */	addi r31, r3, calc_mtx@l
/* 804F555C  48 00 03 84 */	b lbl_804F58E0
lbl_804F5560:
/* 804F5560  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 804F5564  C0 5A 00 00 */	lfs f2, 0(r26)
/* 804F5568  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804F556C  C0 1B FF F4 */	lfs f0, -0xc(r27)
/* 804F5570  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F5574  EC 02 00 2A */	fadds f0, f2, f0
/* 804F5578  EF A3 00 2A */	fadds f29, f3, f0
/* 804F557C  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 804F5580  C0 5A 00 08 */	lfs f2, 8(r26)
/* 804F5584  C0 3B 00 08 */	lfs f1, 8(r27)
/* 804F5588  C0 1B FF FC */	lfs f0, -4(r27)
/* 804F558C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F5590  EC 02 00 2A */	fadds f0, f2, f0
/* 804F5594  EF 83 00 2A */	fadds f28, f3, f0
/* 804F5598  C0 76 07 9C */	lfs f3, 0x79c(r22)
/* 804F559C  FC 03 F0 40 */	fcmpo cr0, f3, f30
/* 804F55A0  40 81 00 34 */	ble lbl_804F55D4
/* 804F55A4  A8 16 07 A0 */	lha r0, 0x7a0(r22)
/* 804F55A8  1C 00 17 70 */	mulli r0, r0, 0x1770
/* 804F55AC  7C 00 AA 14 */	add r0, r0, r21
/* 804F55B0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804F55B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804F55B8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804F55BC  7C 03 04 2E */	lfsx f0, r3, r0
/* 804F55C0  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 804F55C4  EC 22 00 F2 */	fmuls f1, f2, f3
/* 804F55C8  EC 03 00 32 */	fmuls f0, f3, f0
/* 804F55CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804F55D0  EF 41 00 2A */	fadds f26, f1, f0
lbl_804F55D4:
/* 804F55D4  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 804F55D8  C0 3B 00 04 */	lfs f1, 4(r27)
/* 804F55DC  C0 1A 00 04 */	lfs f0, 4(r26)
/* 804F55E0  EC 01 00 2A */	fadds f0, f1, f0
/* 804F55E4  EC 18 00 2A */	fadds f0, f24, f0
/* 804F55E8  EC 02 00 2A */	fadds f0, f2, f0
/* 804F55EC  EE DA 00 2A */	fadds f22, f26, f0
/* 804F55F0  FC 16 B8 40 */	fcmpo cr0, f22, f23
/* 804F55F4  4C 40 13 82 */	cror 2, 0, 2
/* 804F55F8  40 82 00 7C */	bne lbl_804F5674
/* 804F55FC  FE C0 B8 90 */	fmr f22, f23
/* 804F5600  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 804F5604  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 804F5608  4C 41 13 82 */	cror 2, 1, 2
/* 804F560C  40 82 00 68 */	bne lbl_804F5674
/* 804F5610  A8 16 07 B2 */	lha r0, 0x7b2(r22)
/* 804F5614  2C 00 00 00 */	cmpwi r0, 0
/* 804F5618  40 82 00 5C */	bne lbl_804F5674
/* 804F561C  7C 80 0E 70 */	srawi r0, r4, 1
/* 804F5620  7C 00 01 94 */	addze r0, r0
/* 804F5624  7C 1D 00 00 */	cmpw r29, r0
/* 804F5628  40 82 00 4C */	bne lbl_804F5674
/* 804F562C  C0 1E 01 F4 */	lfs f0, 0x1f4(r30)
/* 804F5630  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 804F5634  40 81 00 08 */	ble lbl_804F563C
/* 804F5638  FF 60 00 90 */	fmr f27, f0
lbl_804F563C:
/* 804F563C  88 16 04 E2 */	lbz r0, 0x4e2(r22)
/* 804F5640  7C 03 07 74 */	extsb r3, r0
/* 804F5644  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070005@ha */
/* 804F5648  38 04 00 05 */	addi r0, r4, 0x0005 /* 0x00070005@l */
/* 804F564C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F5650  4B B3 7A 1C */	b dComIfGp_getReverb__Fi
/* 804F5654  7C 67 1B 78 */	mr r7, r3
/* 804F5658  38 76 06 3C */	addi r3, r22, 0x63c
/* 804F565C  38 81 00 10 */	addi r4, r1, 0x10
/* 804F5660  57 05 06 3E */	clrlwi r5, r24, 0x18
/* 804F5664  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 804F5668  EC 3B 00 28 */	fsubs f1, f27, f0
/* 804F566C  38 C0 00 00 */	li r6, 0
/* 804F5670  4B DC CC 20 */	b startChainSoundLevel__12Z2CreatureFMF10JAISoundIDUcfUlSc
lbl_804F5674:
/* 804F5674  C0 1B FF F8 */	lfs f0, -8(r27)
/* 804F5678  EE D6 00 28 */	fsubs f22, f22, f0
/* 804F567C  FC 20 E8 90 */	fmr f1, f29
/* 804F5680  FC 40 E0 90 */	fmr f2, f28
/* 804F5684  4B D7 1F F0 */	b cM_atan2s__Fff
/* 804F5688  7C 7C 07 34 */	extsh r28, r3
/* 804F568C  EC 3D 07 72 */	fmuls f1, f29, f29
/* 804F5690  EC 1C 07 32 */	fmuls f0, f28, f28
/* 804F5694  EC 41 00 2A */	fadds f2, f1, f0
/* 804F5698  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 804F569C  40 81 00 0C */	ble lbl_804F56A8
/* 804F56A0  FC 00 10 34 */	frsqrte f0, f2
/* 804F56A4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804F56A8:
/* 804F56A8  FC 20 B0 90 */	fmr f1, f22
/* 804F56AC  4B D7 1F C8 */	b cM_atan2s__Fff
/* 804F56B0  7C 03 00 D0 */	neg r0, r3
/* 804F56B4  7C 14 07 34 */	extsh r20, r0
/* 804F56B8  80 7F 00 00 */	lwz r3, 0(r31)
/* 804F56BC  7F 84 E3 78 */	mr r4, r28
/* 804F56C0  4B B1 6D 1C */	b mDoMtx_YrotS__FPA4_fs
/* 804F56C4  80 7F 00 00 */	lwz r3, 0(r31)
/* 804F56C8  7E 84 A3 78 */	mr r4, r20
/* 804F56CC  4B B1 6C D0 */	b mDoMtx_XrotM__FPA4_fs
/* 804F56D0  38 61 00 68 */	addi r3, r1, 0x68
/* 804F56D4  38 81 00 5C */	addi r4, r1, 0x5c
/* 804F56D8  4B D7 B8 14 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F56DC  C0 1B 00 00 */	lfs f0, 0(r27)
/* 804F56E0  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804F56E4  C0 1B 00 04 */	lfs f0, 4(r27)
/* 804F56E8  D0 1A 00 04 */	stfs f0, 4(r26)
/* 804F56EC  C0 1B 00 08 */	lfs f0, 8(r27)
/* 804F56F0  D0 1A 00 08 */	stfs f0, 8(r26)
/* 804F56F4  C0 3B FF F4 */	lfs f1, -0xc(r27)
/* 804F56F8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804F56FC  EC 01 00 2A */	fadds f0, f1, f0
/* 804F5700  D0 1B 00 00 */	stfs f0, 0(r27)
/* 804F5704  C0 3B FF F8 */	lfs f1, -8(r27)
/* 804F5708  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804F570C  EC 01 00 2A */	fadds f0, f1, f0
/* 804F5710  D0 1B 00 04 */	stfs f0, 4(r27)
/* 804F5714  C0 3B FF FC */	lfs f1, -4(r27)
/* 804F5718  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 804F571C  EC 01 00 2A */	fadds f0, f1, f0
/* 804F5720  D0 1B 00 08 */	stfs f0, 8(r27)
/* 804F5724  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804F5728  C0 1A 00 00 */	lfs f0, 0(r26)
/* 804F572C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F5730  EC 19 00 32 */	fmuls f0, f25, f0
/* 804F5734  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804F5738  C0 3B 00 04 */	lfs f1, 4(r27)
/* 804F573C  C0 1A 00 04 */	lfs f0, 4(r26)
/* 804F5740  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F5744  EC 19 00 32 */	fmuls f0, f25, f0
/* 804F5748  D0 1A 00 04 */	stfs f0, 4(r26)
/* 804F574C  C0 3B 00 08 */	lfs f1, 8(r27)
/* 804F5750  C0 1A 00 08 */	lfs f0, 8(r26)
/* 804F5754  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F5758  EC 19 00 32 */	fmuls f0, f25, f0
/* 804F575C  D0 1A 00 08 */	stfs f0, 8(r26)
/* 804F5760  88 17 61 7C */	lbz r0, 0x617c(r23)
/* 804F5764  7C 00 07 75 */	extsb. r0, r0
/* 804F5768  40 82 01 64 */	bne lbl_804F58CC
/* 804F576C  B2 99 FF FA */	sth r20, -6(r25)
/* 804F5770  7F 43 D3 78 */	mr r3, r26
/* 804F5774  4B E5 19 C4 */	b PSVECSquareMag
/* 804F5778  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F577C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F5780  40 81 00 58 */	ble lbl_804F57D8
/* 804F5784  FC 00 08 34 */	frsqrte f0, f1
/* 804F5788  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 804F578C  FC 44 00 32 */	fmul f2, f4, f0
/* 804F5790  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 804F5794  FC 00 00 32 */	fmul f0, f0, f0
/* 804F5798  FC 01 00 32 */	fmul f0, f1, f0
/* 804F579C  FC 03 00 28 */	fsub f0, f3, f0
/* 804F57A0  FC 02 00 32 */	fmul f0, f2, f0
/* 804F57A4  FC 44 00 32 */	fmul f2, f4, f0
/* 804F57A8  FC 00 00 32 */	fmul f0, f0, f0
/* 804F57AC  FC 01 00 32 */	fmul f0, f1, f0
/* 804F57B0  FC 03 00 28 */	fsub f0, f3, f0
/* 804F57B4  FC 02 00 32 */	fmul f0, f2, f0
/* 804F57B8  FC 44 00 32 */	fmul f2, f4, f0
/* 804F57BC  FC 00 00 32 */	fmul f0, f0, f0
/* 804F57C0  FC 01 00 32 */	fmul f0, f1, f0
/* 804F57C4  FC 03 00 28 */	fsub f0, f3, f0
/* 804F57C8  FC 02 00 32 */	fmul f0, f2, f0
/* 804F57CC  FC 21 00 32 */	fmul f1, f1, f0
/* 804F57D0  FC 20 08 18 */	frsp f1, f1
/* 804F57D4  48 00 00 88 */	b lbl_804F585C
lbl_804F57D8:
/* 804F57D8  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 804F57DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F57E0  40 80 00 10 */	bge lbl_804F57F0
/* 804F57E4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804F57E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804F57EC  48 00 00 70 */	b lbl_804F585C
lbl_804F57F0:
/* 804F57F0  D0 21 00 08 */	stfs f1, 8(r1)
/* 804F57F4  80 81 00 08 */	lwz r4, 8(r1)
/* 804F57F8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804F57FC  3C 00 7F 80 */	lis r0, 0x7f80
/* 804F5800  7C 03 00 00 */	cmpw r3, r0
/* 804F5804  41 82 00 14 */	beq lbl_804F5818
/* 804F5808  40 80 00 40 */	bge lbl_804F5848
/* 804F580C  2C 03 00 00 */	cmpwi r3, 0
/* 804F5810  41 82 00 20 */	beq lbl_804F5830
/* 804F5814  48 00 00 34 */	b lbl_804F5848
lbl_804F5818:
/* 804F5818  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804F581C  41 82 00 0C */	beq lbl_804F5828
/* 804F5820  38 00 00 01 */	li r0, 1
/* 804F5824  48 00 00 28 */	b lbl_804F584C
lbl_804F5828:
/* 804F5828  38 00 00 02 */	li r0, 2
/* 804F582C  48 00 00 20 */	b lbl_804F584C
lbl_804F5830:
/* 804F5830  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804F5834  41 82 00 0C */	beq lbl_804F5840
/* 804F5838  38 00 00 05 */	li r0, 5
/* 804F583C  48 00 00 10 */	b lbl_804F584C
lbl_804F5840:
/* 804F5840  38 00 00 03 */	li r0, 3
/* 804F5844  48 00 00 08 */	b lbl_804F584C
lbl_804F5848:
/* 804F5848  38 00 00 04 */	li r0, 4
lbl_804F584C:
/* 804F584C  2C 00 00 01 */	cmpwi r0, 1
/* 804F5850  40 82 00 0C */	bne lbl_804F585C
/* 804F5854  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804F5858  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804F585C:
/* 804F585C  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 804F5860  EC 20 00 72 */	fmuls f1, f0, f1
/* 804F5864  C0 1E 01 FC */	lfs f0, 0x1fc(r30)
/* 804F5868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F586C  40 81 00 0C */	ble lbl_804F5878
/* 804F5870  B3 99 FF FC */	sth r28, -4(r25)
/* 804F5874  48 00 00 58 */	b lbl_804F58CC
lbl_804F5878:
/* 804F5878  C0 1E 02 00 */	lfs f0, 0x200(r30)
/* 804F587C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F5880  40 80 00 30 */	bge lbl_804F58B0
/* 804F5884  3C 60 80 50 */	lis r3, demo_stop@ha
/* 804F5888  80 03 AF 7C */	lwz r0, demo_stop@l(r3)
/* 804F588C  2C 00 00 00 */	cmpwi r0, 0
/* 804F5890  41 82 00 0C */	beq lbl_804F589C
/* 804F5894  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 804F5898  48 00 00 08 */	b lbl_804F58A0
lbl_804F589C:
/* 804F589C  FC 20 00 90 */	fmr f1, f0
lbl_804F58A0:
/* 804F58A0  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F58A4  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804F58A8  D0 1A 00 04 */	stfs f0, 4(r26)
/* 804F58AC  D0 1A 00 08 */	stfs f0, 8(r26)
lbl_804F58B0:
/* 804F58B0  38 79 FF FC */	addi r3, r25, -4
/* 804F58B4  7F 84 E3 78 */	mr r4, r28
/* 804F58B8  38 A0 00 02 */	li r5, 2
/* 804F58BC  FC 00 08 1E */	fctiwz f0, f1
/* 804F58C0  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 804F58C4  80 C1 00 7C */	lwz r6, 0x7c(r1)
/* 804F58C8  4B D7 AD 40 */	b cLib_addCalcAngleS2__FPssss
lbl_804F58CC:
/* 804F58CC  3B BD 00 01 */	addi r29, r29, 1
/* 804F58D0  3A B5 F4 48 */	addi r21, r21, -3000
/* 804F58D4  3B 7B 00 0C */	addi r27, r27, 0xc
/* 804F58D8  3B 39 00 06 */	addi r25, r25, 6
/* 804F58DC  3B 5A 00 0C */	addi r26, r26, 0xc
lbl_804F58E0:
/* 804F58E0  80 97 61 D0 */	lwz r4, 0x61d0(r23)
/* 804F58E4  7C 1D 20 00 */	cmpw r29, r4
/* 804F58E8  41 80 FC 78 */	blt lbl_804F5560
/* 804F58EC  38 A0 00 00 */	li r5, 0
/* 804F58F0  38 60 00 00 */	li r3, 0
/* 804F58F4  48 00 00 28 */	b lbl_804F591C
lbl_804F58F8:
/* 804F58F8  7C 97 1A 14 */	add r4, r23, r3
/* 804F58FC  C0 04 00 74 */	lfs f0, 0x74(r4)
/* 804F5900  D0 04 01 AC */	stfs f0, 0x1ac(r4)
/* 804F5904  C0 04 00 78 */	lfs f0, 0x78(r4)
/* 804F5908  D0 04 01 B0 */	stfs f0, 0x1b0(r4)
/* 804F590C  C0 04 00 7C */	lfs f0, 0x7c(r4)
/* 804F5910  D0 04 01 B4 */	stfs f0, 0x1b4(r4)
/* 804F5914  38 A5 00 01 */	addi r5, r5, 1
/* 804F5918  38 63 00 0C */	addi r3, r3, 0xc
lbl_804F591C:
/* 804F591C  80 17 61 D0 */	lwz r0, 0x61d0(r23)
/* 804F5920  7C 05 00 00 */	cmpw r5, r0
/* 804F5924  41 80 FF D4 */	blt lbl_804F58F8
/* 804F5928  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 804F592C  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 804F5930  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 804F5934  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 804F5938  E3 A1 01 28 */	psq_l f29, 296(r1), 0, 0 /* qr0 */
/* 804F593C  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 804F5940  E3 81 01 18 */	psq_l f28, 280(r1), 0, 0 /* qr0 */
/* 804F5944  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 804F5948  E3 61 01 08 */	psq_l f27, 264(r1), 0, 0 /* qr0 */
/* 804F594C  CB 61 01 00 */	lfd f27, 0x100(r1)
/* 804F5950  E3 41 00 F8 */	psq_l f26, 248(r1), 0, 0 /* qr0 */
/* 804F5954  CB 41 00 F0 */	lfd f26, 0xf0(r1)
/* 804F5958  E3 21 00 E8 */	psq_l f25, 232(r1), 0, 0 /* qr0 */
/* 804F595C  CB 21 00 E0 */	lfd f25, 0xe0(r1)
/* 804F5960  E3 01 00 D8 */	psq_l f24, 216(r1), 0, 0 /* qr0 */
/* 804F5964  CB 01 00 D0 */	lfd f24, 0xd0(r1)
/* 804F5968  E2 E1 00 C8 */	psq_l f23, 200(r1), 0, 0 /* qr0 */
/* 804F596C  CA E1 00 C0 */	lfd f23, 0xc0(r1)
/* 804F5970  E2 C1 00 B8 */	psq_l f22, 184(r1), 0, 0 /* qr0 */
/* 804F5974  CA C1 00 B0 */	lfd f22, 0xb0(r1)
/* 804F5978  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804F597C  4B E6 C8 88 */	b _restgpr_20
/* 804F5980  80 01 01 54 */	lwz r0, 0x154(r1)
/* 804F5984  7C 08 03 A6 */	mtlr r0
/* 804F5988  38 21 01 50 */	addi r1, r1, 0x150
/* 804F598C  4E 80 00 20 */	blr 
