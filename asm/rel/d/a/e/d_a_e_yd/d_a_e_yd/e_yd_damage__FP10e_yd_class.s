lbl_807F5110:
/* 807F5110  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807F5114  7C 08 02 A6 */	mflr r0
/* 807F5118  90 01 00 54 */	stw r0, 0x54(r1)
/* 807F511C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807F5120  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807F5124  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807F5128  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807F512C  7C 7E 1B 78 */	mr r30, r3
/* 807F5130  3C 80 80 7F */	lis r4, lit_3788@ha /* 0x807F7A00@ha */
/* 807F5134  3B E4 7A 00 */	addi r31, r4, lit_3788@l /* 0x807F7A00@l */
/* 807F5138  A8 03 06 70 */	lha r0, 0x670(r3)
/* 807F513C  2C 00 00 01 */	cmpwi r0, 1
/* 807F5140  41 82 01 14 */	beq lbl_807F5254
/* 807F5144  40 80 00 10 */	bge lbl_807F5154
/* 807F5148  2C 00 00 00 */	cmpwi r0, 0
/* 807F514C  40 80 00 14 */	bge lbl_807F5160
/* 807F5150  48 00 03 80 */	b lbl_807F54D0
lbl_807F5154:
/* 807F5154  2C 00 00 03 */	cmpwi r0, 3
/* 807F5158  40 80 03 78 */	bge lbl_807F54D0
/* 807F515C  48 00 02 58 */	b lbl_807F53B4
lbl_807F5160:
/* 807F5160  38 80 00 0C */	li r4, 0xc
/* 807F5164  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 807F5168  38 A0 00 00 */	li r5, 0
/* 807F516C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F5170  4B FF DC B1 */	bl anm_init__FP10e_yd_classifUcf
/* 807F5174  7F C3 F3 78 */	mr r3, r30
/* 807F5178  38 80 00 14 */	li r4, 0x14
/* 807F517C  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 807F5180  38 A0 00 02 */	li r5, 2
/* 807F5184  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807F5188  4B FF DD 45 */	bl leaf_anm_init__FP10e_yd_classifUcf
/* 807F518C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 807F5190  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 807F5194  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F5198  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F519C  38 81 00 10 */	addi r4, r1, 0x10
/* 807F51A0  38 A0 00 00 */	li r5, 0
/* 807F51A4  38 C0 FF FF */	li r6, -1
/* 807F51A8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F51AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F51B0  7D 89 03 A6 */	mtctr r12
/* 807F51B4  4E 80 04 21 */	bctrl 
/* 807F51B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F51BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F51C0  80 63 00 00 */	lwz r3, 0(r3)
/* 807F51C4  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 807F51C8  4B 81 72 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 807F51CC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F51D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807F51D4  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 807F51D8  28 00 00 01 */	cmplwi r0, 1
/* 807F51DC  41 82 00 2C */	beq lbl_807F5208
/* 807F51E0  28 00 00 02 */	cmplwi r0, 2
/* 807F51E4  40 82 00 10 */	bne lbl_807F51F4
/* 807F51E8  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 807F51EC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807F51F0  48 00 00 0C */	b lbl_807F51FC
lbl_807F51F4:
/* 807F51F4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807F51F8  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_807F51FC:
/* 807F51FC  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807F5200  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807F5204  48 00 00 10 */	b lbl_807F5214
lbl_807F5208:
/* 807F5208  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807F520C  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 807F5210  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_807F5214:
/* 807F5214  38 61 00 20 */	addi r3, r1, 0x20
/* 807F5218  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807F521C  4B A7 BC D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F5220  38 00 00 01 */	li r0, 1
/* 807F5224  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F5228  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070084@ha */
/* 807F522C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x00070084@l */
/* 807F5230  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F5234  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F5238  38 81 00 0C */	addi r4, r1, 0xc
/* 807F523C  38 A0 FF FF */	li r5, -1
/* 807F5240  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F5244  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F5248  7D 89 03 A6 */	mtctr r12
/* 807F524C  4E 80 04 21 */	bctrl 
/* 807F5250  48 00 02 80 */	b lbl_807F54D0
lbl_807F5254:
/* 807F5254  38 61 00 14 */	addi r3, r1, 0x14
/* 807F5258  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807F525C  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 807F5260  4B A7 18 D5 */	bl __mi__4cXyzCFRC3Vec
/* 807F5264  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807F5268  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807F526C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807F5270  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807F5274  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807F5278  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807F527C  38 61 00 20 */	addi r3, r1, 0x20
/* 807F5280  4B B5 1E B9 */	bl PSVECSquareMag
/* 807F5284  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F5288  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F528C  40 81 00 58 */	ble lbl_807F52E4
/* 807F5290  FC 00 08 34 */	frsqrte f0, f1
/* 807F5294  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807F5298  FC 44 00 32 */	fmul f2, f4, f0
/* 807F529C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807F52A0  FC 00 00 32 */	fmul f0, f0, f0
/* 807F52A4  FC 01 00 32 */	fmul f0, f1, f0
/* 807F52A8  FC 03 00 28 */	fsub f0, f3, f0
/* 807F52AC  FC 02 00 32 */	fmul f0, f2, f0
/* 807F52B0  FC 44 00 32 */	fmul f2, f4, f0
/* 807F52B4  FC 00 00 32 */	fmul f0, f0, f0
/* 807F52B8  FC 01 00 32 */	fmul f0, f1, f0
/* 807F52BC  FC 03 00 28 */	fsub f0, f3, f0
/* 807F52C0  FC 02 00 32 */	fmul f0, f2, f0
/* 807F52C4  FC 44 00 32 */	fmul f2, f4, f0
/* 807F52C8  FC 00 00 32 */	fmul f0, f0, f0
/* 807F52CC  FC 01 00 32 */	fmul f0, f1, f0
/* 807F52D0  FC 03 00 28 */	fsub f0, f3, f0
/* 807F52D4  FC 02 00 32 */	fmul f0, f2, f0
/* 807F52D8  FC 21 00 32 */	fmul f1, f1, f0
/* 807F52DC  FC 20 08 18 */	frsp f1, f1
/* 807F52E0  48 00 00 88 */	b lbl_807F5368
lbl_807F52E4:
/* 807F52E4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807F52E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F52EC  40 80 00 10 */	bge lbl_807F52FC
/* 807F52F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807F52F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807F52F8  48 00 00 70 */	b lbl_807F5368
lbl_807F52FC:
/* 807F52FC  D0 21 00 08 */	stfs f1, 8(r1)
/* 807F5300  80 81 00 08 */	lwz r4, 8(r1)
/* 807F5304  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807F5308  3C 00 7F 80 */	lis r0, 0x7f80
/* 807F530C  7C 03 00 00 */	cmpw r3, r0
/* 807F5310  41 82 00 14 */	beq lbl_807F5324
/* 807F5314  40 80 00 40 */	bge lbl_807F5354
/* 807F5318  2C 03 00 00 */	cmpwi r3, 0
/* 807F531C  41 82 00 20 */	beq lbl_807F533C
/* 807F5320  48 00 00 34 */	b lbl_807F5354
lbl_807F5324:
/* 807F5324  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F5328  41 82 00 0C */	beq lbl_807F5334
/* 807F532C  38 00 00 01 */	li r0, 1
/* 807F5330  48 00 00 28 */	b lbl_807F5358
lbl_807F5334:
/* 807F5334  38 00 00 02 */	li r0, 2
/* 807F5338  48 00 00 20 */	b lbl_807F5358
lbl_807F533C:
/* 807F533C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F5340  41 82 00 0C */	beq lbl_807F534C
/* 807F5344  38 00 00 05 */	li r0, 5
/* 807F5348  48 00 00 10 */	b lbl_807F5358
lbl_807F534C:
/* 807F534C  38 00 00 03 */	li r0, 3
/* 807F5350  48 00 00 08 */	b lbl_807F5358
lbl_807F5354:
/* 807F5354  38 00 00 04 */	li r0, 4
lbl_807F5358:
/* 807F5358  2C 00 00 01 */	cmpwi r0, 1
/* 807F535C  40 82 00 0C */	bne lbl_807F5368
/* 807F5360  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807F5364  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807F5368:
/* 807F5368  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807F536C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F5370  40 81 00 44 */	ble lbl_807F53B4
/* 807F5374  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 807F5378  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 807F537C  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 807F5380  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 807F5384  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 807F5388  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 807F538C  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 807F5390  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 807F5394  EC 00 00 72 */	fmuls f0, f0, f1
/* 807F5398  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 807F539C  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 807F53A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 807F53A4  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 807F53A8  A8 7E 06 70 */	lha r3, 0x670(r30)
/* 807F53AC  38 03 00 01 */	addi r0, r3, 1
/* 807F53B0  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_807F53B4:
/* 807F53B4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807F53B8  A8 BE 06 84 */	lha r5, 0x684(r30)
/* 807F53BC  88 9E 05 B4 */	lbz r4, 0x5b4(r30)
/* 807F53C0  38 04 FF FE */	addi r0, r4, -2
/* 807F53C4  30 00 FF FF */	addic r0, r0, -1
/* 807F53C8  7C 80 01 10 */	subfe r4, r0, r0
/* 807F53CC  38 00 80 00 */	li r0, -32768
/* 807F53D0  7C 00 20 78 */	andc r0, r0, r4
/* 807F53D4  7C 05 02 14 */	add r0, r5, r0
/* 807F53D8  7C 04 07 34 */	extsh r4, r0
/* 807F53DC  38 A0 00 02 */	li r5, 2
/* 807F53E0  38 C0 20 00 */	li r6, 0x2000
/* 807F53E4  4B A7 B2 25 */	bl cLib_addCalcAngleS2__FPssss
/* 807F53E8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807F53EC  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807F53F0  7C 65 1B 78 */	mr r5, r3
/* 807F53F4  4B B5 1C 9D */	bl PSVECAdd
/* 807F53F8  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 807F53FC  28 00 00 01 */	cmplwi r0, 1
/* 807F5400  41 82 00 30 */	beq lbl_807F5430
/* 807F5404  28 00 00 02 */	cmplwi r0, 2
/* 807F5408  40 82 00 18 */	bne lbl_807F5420
/* 807F540C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 807F5410  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807F5414  EC 01 00 28 */	fsubs f0, f1, f0
/* 807F5418  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807F541C  48 00 00 14 */	b lbl_807F5430
lbl_807F5420:
/* 807F5420  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 807F5424  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807F5428  EC 01 00 28 */	fsubs f0, f1, f0
/* 807F542C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807F5430:
/* 807F5430  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F5434  C0 1E 06 98 */	lfs f0, 0x698(r30)
/* 807F5438  EC 21 00 32 */	fmuls f1, f1, f0
/* 807F543C  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807F7D78@ha */
/* 807F5440  38 63 7D 78 */	addi r3, r3, l_HIO@l /* 0x807F7D78@l */
/* 807F5444  C0 03 00 08 */	lfs f0, 8(r3)
/* 807F5448  EF E1 00 32 */	fmuls f31, f1, f0
/* 807F544C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807F5450  EC 00 F8 28 */	fsubs f0, f0, f31
/* 807F5454  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 807F5458  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 807F545C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 807F5460  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 807F5464  38 7E 10 58 */	addi r3, r30, 0x1058
/* 807F5468  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F546C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F5470  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807F5474  4B 88 16 39 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807F5478  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807F547C  EC 00 F8 2A */	fadds f0, f0, f31
/* 807F5480  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 807F5484  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 807F5488  EC 00 F8 2A */	fadds f0, f0, f31
/* 807F548C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 807F5490  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F5494  38 80 00 01 */	li r4, 1
/* 807F5498  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F549C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F54A0  40 82 00 18 */	bne lbl_807F54B8
/* 807F54A4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807F54A8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F54AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807F54B0  41 82 00 08 */	beq lbl_807F54B8
/* 807F54B4  38 80 00 00 */	li r4, 0
lbl_807F54B8:
/* 807F54B8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F54BC  41 82 00 14 */	beq lbl_807F54D0
/* 807F54C0  38 00 00 03 */	li r0, 3
/* 807F54C4  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807F54C8  38 00 00 00 */	li r0, 0
/* 807F54CC  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_807F54D0:
/* 807F54D0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807F54D4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807F54D8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807F54DC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807F54E0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807F54E4  7C 08 03 A6 */	mtlr r0
/* 807F54E8  38 21 00 50 */	addi r1, r1, 0x50
/* 807F54EC  4E 80 00 20 */	blr 
