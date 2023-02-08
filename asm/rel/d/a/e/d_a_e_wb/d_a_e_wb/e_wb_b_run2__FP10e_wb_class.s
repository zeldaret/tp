lbl_807D5634:
/* 807D5634  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 807D5638  7C 08 02 A6 */	mflr r0
/* 807D563C  90 01 01 14 */	stw r0, 0x114(r1)
/* 807D5640  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 807D5644  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 807D5648  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 807D564C  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 807D5650  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 807D5654  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 807D5658  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 807D565C  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 807D5660  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 807D5664  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 807D5668  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807D566C  4B B8 CB 59 */	bl _savegpr_23
/* 807D5670  7C 7A 1B 78 */	mr r26, r3
/* 807D5674  3C 80 80 7E */	lis r4, lit_3882@ha /* 0x807E298C@ha */
/* 807D5678  3B C4 29 8C */	addi r30, r4, lit_3882@l /* 0x807E298C@l */
/* 807D567C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D5680  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D5684  83 04 5D AC */	lwz r24, 0x5dac(r4)
/* 807D5688  7F 04 C3 78 */	mr r4, r24
/* 807D568C  4B 84 52 D9 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D5690  FF C0 08 90 */	fmr f30, f1
/* 807D5694  C3 9E 00 48 */	lfs f28, 0x48(r30)
/* 807D5698  C3 7E 00 60 */	lfs f27, 0x60(r30)
/* 807D569C  AB BA 04 DE */	lha r29, 0x4de(r26)
/* 807D56A0  A8 1A 05 B4 */	lha r0, 0x5b4(r26)
/* 807D56A4  2C 00 00 02 */	cmpwi r0, 2
/* 807D56A8  41 82 03 90 */	beq lbl_807D5A38
/* 807D56AC  40 80 00 14 */	bge lbl_807D56C0
/* 807D56B0  2C 00 00 00 */	cmpwi r0, 0
/* 807D56B4  41 82 00 18 */	beq lbl_807D56CC
/* 807D56B8  40 80 00 54 */	bge lbl_807D570C
/* 807D56BC  48 00 06 C0 */	b lbl_807D5D7C
lbl_807D56C0:
/* 807D56C0  2C 00 00 04 */	cmpwi r0, 4
/* 807D56C4  40 80 06 B8 */	bge lbl_807D5D7C
/* 807D56C8  48 00 06 78 */	b lbl_807D5D40
lbl_807D56CC:
/* 807D56CC  7F 43 D3 78 */	mr r3, r26
/* 807D56D0  38 80 00 1B */	li r4, 0x1b
/* 807D56D4  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 807D56D8  38 A0 00 00 */	li r5, 0
/* 807D56DC  FC 40 D8 90 */	fmr f2, f27
/* 807D56E0  4B FF CE 69 */	bl anm_init__FP10e_wb_classifUcf
/* 807D56E4  38 00 00 01 */	li r0, 1
/* 807D56E8  B0 1A 05 B4 */	sth r0, 0x5b4(r26)
/* 807D56EC  A0 1A 06 BE */	lhz r0, 0x6be(r26)
/* 807D56F0  60 00 00 08 */	ori r0, r0, 8
/* 807D56F4  B0 1A 06 BE */	sth r0, 0x6be(r26)
/* 807D56F8  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 807D56FC  D0 1A 16 84 */	stfs f0, 0x1684(r26)
/* 807D5700  FC 00 D8 90 */	fmr f0, f27
/* 807D5704  D0 1A 05 E4 */	stfs f0, 0x5e4(r26)
/* 807D5708  48 00 06 74 */	b lbl_807D5D7C
lbl_807D570C:
/* 807D570C  80 7A 05 E0 */	lwz r3, 0x5e0(r26)
/* 807D5710  38 63 00 0C */	addi r3, r3, 0xc
/* 807D5714  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 807D5718  4B B5 2D 15 */	bl checkPass__12J3DFrameCtrlFf
/* 807D571C  2C 03 00 00 */	cmpwi r3, 0
/* 807D5720  41 82 00 1C */	beq lbl_807D573C
/* 807D5724  88 1A 14 2D */	lbz r0, 0x142d(r26)
/* 807D5728  60 00 00 02 */	ori r0, r0, 2
/* 807D572C  98 1A 14 2D */	stb r0, 0x142d(r26)
/* 807D5730  38 00 00 0A */	li r0, 0xa
/* 807D5734  98 1A 14 2C */	stb r0, 0x142c(r26)
/* 807D5738  48 00 00 28 */	b lbl_807D5760
lbl_807D573C:
/* 807D573C  80 7A 05 E0 */	lwz r3, 0x5e0(r26)
/* 807D5740  38 63 00 0C */	addi r3, r3, 0xc
/* 807D5744  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807D5748  4B B5 2C E5 */	bl checkPass__12J3DFrameCtrlFf
/* 807D574C  2C 03 00 00 */	cmpwi r3, 0
/* 807D5750  41 82 00 10 */	beq lbl_807D5760
/* 807D5754  88 1A 14 2D */	lbz r0, 0x142d(r26)
/* 807D5758  60 00 00 03 */	ori r0, r0, 3
/* 807D575C  98 1A 14 2D */	stb r0, 0x142d(r26)
lbl_807D5760:
/* 807D5760  80 7A 05 E0 */	lwz r3, 0x5e0(r26)
/* 807D5764  38 80 00 01 */	li r4, 1
/* 807D5768  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D576C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D5770  40 82 00 18 */	bne lbl_807D5788
/* 807D5774  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807D5778  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D577C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D5780  41 82 00 08 */	beq lbl_807D5788
/* 807D5784  38 80 00 00 */	li r4, 0
lbl_807D5788:
/* 807D5788  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D578C  41 82 05 F0 */	beq lbl_807D5D7C
/* 807D5790  7F 43 D3 78 */	mr r3, r26
/* 807D5794  38 80 00 20 */	li r4, 0x20
/* 807D5798  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 807D579C  38 A0 00 02 */	li r5, 2
/* 807D57A0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D57A4  4B FF CD A5 */	bl anm_init__FP10e_wb_classifUcf
/* 807D57A8  38 00 00 02 */	li r0, 2
/* 807D57AC  B0 1A 05 B4 */	sth r0, 0x5b4(r26)
/* 807D57B0  3B 80 00 00 */	li r28, 0
/* 807D57B4  3B 60 00 01 */	li r27, 1
/* 807D57B8  3B 20 00 0C */	li r25, 0xc
/* 807D57BC  3C 60 80 7E */	lis r3, b_path2@ha /* 0x807E369C@ha */
/* 807D57C0  3B E3 36 9C */	addi r31, r3, b_path2@l /* 0x807E369C@l */
/* 807D57C4  C3 FE 00 48 */	lfs f31, 0x48(r30)
lbl_807D57C8:
/* 807D57C8  38 61 00 48 */	addi r3, r1, 0x48
/* 807D57CC  1C 1C 00 0C */	mulli r0, r28, 0xc
/* 807D57D0  7C 9F 02 14 */	add r4, r31, r0
/* 807D57D4  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 807D57D8  4B A9 13 5D */	bl __mi__4cXyzCFRC3Vec
/* 807D57DC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807D57E0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807D57E4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807D57E8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807D57EC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807D57F0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807D57F4  38 61 00 3C */	addi r3, r1, 0x3c
/* 807D57F8  7C 9F CA 14 */	add r4, r31, r25
/* 807D57FC  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 807D5800  4B A9 13 35 */	bl __mi__4cXyzCFRC3Vec
/* 807D5804  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807D5808  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807D580C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807D5810  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807D5814  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807D5818  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807D581C  38 61 00 60 */	addi r3, r1, 0x60
/* 807D5820  4B B7 19 19 */	bl PSVECSquareMag
/* 807D5824  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 807D5828  40 81 00 58 */	ble lbl_807D5880
/* 807D582C  FC 00 08 34 */	frsqrte f0, f1
/* 807D5830  C8 9E 00 90 */	lfd f4, 0x90(r30)
/* 807D5834  FC 44 00 32 */	fmul f2, f4, f0
/* 807D5838  C8 7E 00 98 */	lfd f3, 0x98(r30)
/* 807D583C  FC 00 00 32 */	fmul f0, f0, f0
/* 807D5840  FC 01 00 32 */	fmul f0, f1, f0
/* 807D5844  FC 03 00 28 */	fsub f0, f3, f0
/* 807D5848  FC 02 00 32 */	fmul f0, f2, f0
/* 807D584C  FC 44 00 32 */	fmul f2, f4, f0
/* 807D5850  FC 00 00 32 */	fmul f0, f0, f0
/* 807D5854  FC 01 00 32 */	fmul f0, f1, f0
/* 807D5858  FC 03 00 28 */	fsub f0, f3, f0
/* 807D585C  FC 02 00 32 */	fmul f0, f2, f0
/* 807D5860  FC 44 00 32 */	fmul f2, f4, f0
/* 807D5864  FC 00 00 32 */	fmul f0, f0, f0
/* 807D5868  FC 01 00 32 */	fmul f0, f1, f0
/* 807D586C  FC 03 00 28 */	fsub f0, f3, f0
/* 807D5870  FC 02 00 32 */	fmul f0, f2, f0
/* 807D5874  FF A1 00 32 */	fmul f29, f1, f0
/* 807D5878  FF A0 E8 18 */	frsp f29, f29
/* 807D587C  48 00 00 90 */	b lbl_807D590C
lbl_807D5880:
/* 807D5880  C8 1E 00 A0 */	lfd f0, 0xa0(r30)
/* 807D5884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D5888  40 80 00 10 */	bge lbl_807D5898
/* 807D588C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D5890  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807D5894  48 00 00 78 */	b lbl_807D590C
lbl_807D5898:
/* 807D5898  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807D589C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 807D58A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807D58A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 807D58A8  7C 03 00 00 */	cmpw r3, r0
/* 807D58AC  41 82 00 14 */	beq lbl_807D58C0
/* 807D58B0  40 80 00 40 */	bge lbl_807D58F0
/* 807D58B4  2C 03 00 00 */	cmpwi r3, 0
/* 807D58B8  41 82 00 20 */	beq lbl_807D58D8
/* 807D58BC  48 00 00 34 */	b lbl_807D58F0
lbl_807D58C0:
/* 807D58C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D58C4  41 82 00 0C */	beq lbl_807D58D0
/* 807D58C8  38 00 00 01 */	li r0, 1
/* 807D58CC  48 00 00 28 */	b lbl_807D58F4
lbl_807D58D0:
/* 807D58D0  38 00 00 02 */	li r0, 2
/* 807D58D4  48 00 00 20 */	b lbl_807D58F4
lbl_807D58D8:
/* 807D58D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D58DC  41 82 00 0C */	beq lbl_807D58E8
/* 807D58E0  38 00 00 05 */	li r0, 5
/* 807D58E4  48 00 00 10 */	b lbl_807D58F4
lbl_807D58E8:
/* 807D58E8  38 00 00 03 */	li r0, 3
/* 807D58EC  48 00 00 08 */	b lbl_807D58F4
lbl_807D58F0:
/* 807D58F0  38 00 00 04 */	li r0, 4
lbl_807D58F4:
/* 807D58F4  2C 00 00 01 */	cmpwi r0, 1
/* 807D58F8  40 82 00 10 */	bne lbl_807D5908
/* 807D58FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D5900  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807D5904  48 00 00 08 */	b lbl_807D590C
lbl_807D5908:
/* 807D5908  FF A0 08 90 */	fmr f29, f1
lbl_807D590C:
/* 807D590C  38 61 00 54 */	addi r3, r1, 0x54
/* 807D5910  4B B7 18 29 */	bl PSVECSquareMag
/* 807D5914  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 807D5918  40 81 00 58 */	ble lbl_807D5970
/* 807D591C  FC 00 08 34 */	frsqrte f0, f1
/* 807D5920  C8 9E 00 90 */	lfd f4, 0x90(r30)
/* 807D5924  FC 44 00 32 */	fmul f2, f4, f0
/* 807D5928  C8 7E 00 98 */	lfd f3, 0x98(r30)
/* 807D592C  FC 00 00 32 */	fmul f0, f0, f0
/* 807D5930  FC 01 00 32 */	fmul f0, f1, f0
/* 807D5934  FC 03 00 28 */	fsub f0, f3, f0
/* 807D5938  FC 02 00 32 */	fmul f0, f2, f0
/* 807D593C  FC 44 00 32 */	fmul f2, f4, f0
/* 807D5940  FC 00 00 32 */	fmul f0, f0, f0
/* 807D5944  FC 01 00 32 */	fmul f0, f1, f0
/* 807D5948  FC 03 00 28 */	fsub f0, f3, f0
/* 807D594C  FC 02 00 32 */	fmul f0, f2, f0
/* 807D5950  FC 44 00 32 */	fmul f2, f4, f0
/* 807D5954  FC 00 00 32 */	fmul f0, f0, f0
/* 807D5958  FC 01 00 32 */	fmul f0, f1, f0
/* 807D595C  FC 03 00 28 */	fsub f0, f3, f0
/* 807D5960  FC 02 00 32 */	fmul f0, f2, f0
/* 807D5964  FC 21 00 32 */	fmul f1, f1, f0
/* 807D5968  FC 20 08 18 */	frsp f1, f1
/* 807D596C  48 00 00 88 */	b lbl_807D59F4
lbl_807D5970:
/* 807D5970  C8 1E 00 A0 */	lfd f0, 0xa0(r30)
/* 807D5974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D5978  40 80 00 10 */	bge lbl_807D5988
/* 807D597C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D5980  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807D5984  48 00 00 70 */	b lbl_807D59F4
lbl_807D5988:
/* 807D5988  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807D598C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807D5990  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807D5994  3C 00 7F 80 */	lis r0, 0x7f80
/* 807D5998  7C 03 00 00 */	cmpw r3, r0
/* 807D599C  41 82 00 14 */	beq lbl_807D59B0
/* 807D59A0  40 80 00 40 */	bge lbl_807D59E0
/* 807D59A4  2C 03 00 00 */	cmpwi r3, 0
/* 807D59A8  41 82 00 20 */	beq lbl_807D59C8
/* 807D59AC  48 00 00 34 */	b lbl_807D59E0
lbl_807D59B0:
/* 807D59B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D59B4  41 82 00 0C */	beq lbl_807D59C0
/* 807D59B8  38 00 00 01 */	li r0, 1
/* 807D59BC  48 00 00 28 */	b lbl_807D59E4
lbl_807D59C0:
/* 807D59C0  38 00 00 02 */	li r0, 2
/* 807D59C4  48 00 00 20 */	b lbl_807D59E4
lbl_807D59C8:
/* 807D59C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D59CC  41 82 00 0C */	beq lbl_807D59D8
/* 807D59D0  38 00 00 05 */	li r0, 5
/* 807D59D4  48 00 00 10 */	b lbl_807D59E4
lbl_807D59D8:
/* 807D59D8  38 00 00 03 */	li r0, 3
/* 807D59DC  48 00 00 08 */	b lbl_807D59E4
lbl_807D59E0:
/* 807D59E0  38 00 00 04 */	li r0, 4
lbl_807D59E4:
/* 807D59E4  2C 00 00 01 */	cmpwi r0, 1
/* 807D59E8  40 82 00 0C */	bne lbl_807D59F4
/* 807D59EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D59F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807D59F4:
/* 807D59F4  FC 1D 08 40 */	fcmpo cr0, f29, f1
/* 807D59F8  40 81 00 08 */	ble lbl_807D5A00
/* 807D59FC  7F 7C DB 78 */	mr r28, r27
lbl_807D5A00:
/* 807D5A00  3B 7B 00 01 */	addi r27, r27, 1
/* 807D5A04  2C 1B 00 08 */	cmpwi r27, 8
/* 807D5A08  3B 39 00 0C */	addi r25, r25, 0xc
/* 807D5A0C  41 80 FD BC */	blt lbl_807D57C8
/* 807D5A10  93 9A 06 C8 */	stw r28, 0x6c8(r26)
/* 807D5A14  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 807D5A18  4B A9 1F 3D */	bl cM_rndF__Ff
/* 807D5A1C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807D5A20  EC 00 08 2A */	fadds f0, f0, f1
/* 807D5A24  FC 00 00 1E */	fctiwz f0, f0
/* 807D5A28  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 807D5A2C  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 807D5A30  B0 1A 06 98 */	sth r0, 0x698(r26)
/* 807D5A34  48 00 03 48 */	b lbl_807D5D7C
lbl_807D5A38:
/* 807D5A38  38 00 00 01 */	li r0, 1
/* 807D5A3C  98 1A 06 BD */	stb r0, 0x6bd(r26)
/* 807D5A40  3A E0 00 00 */	li r23, 0
/* 807D5A44  3B 60 00 00 */	li r27, 0
/* 807D5A48  3B 80 00 00 */	li r28, 0
/* 807D5A4C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807D5A50  3B E3 07 68 */	addi r31, r3, calc_mtx@l /* 0x80450768@l */
/* 807D5A54  C3 7E 01 24 */	lfs f27, 0x124(r30)
/* 807D5A58  3C 60 80 7E */	lis r3, b_path2@ha /* 0x807E369C@ha */
/* 807D5A5C  3B 23 36 9C */	addi r25, r3, b_path2@l /* 0x807E369C@l */
lbl_807D5A60:
/* 807D5A60  80 7F 00 00 */	lwz r3, 0(r31)
/* 807D5A64  7F 84 07 34 */	extsh r4, r28
/* 807D5A68  4B 83 69 75 */	bl mDoMtx_YrotS__FPA4_fs
/* 807D5A6C  D3 61 00 80 */	stfs f27, 0x80(r1)
/* 807D5A70  38 61 00 78 */	addi r3, r1, 0x78
/* 807D5A74  38 81 00 6C */	addi r4, r1, 0x6c
/* 807D5A78  4B A9 B4 75 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807D5A7C  38 61 00 6C */	addi r3, r1, 0x6c
/* 807D5A80  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 807D5A84  7C 65 1B 78 */	mr r5, r3
/* 807D5A88  4B B7 16 09 */	bl PSVECAdd
/* 807D5A8C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 807D5A90  7C 79 DA 14 */	add r3, r25, r27
/* 807D5A94  D0 03 00 00 */	stfs f0, 0(r3)
/* 807D5A98  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 807D5A9C  D0 03 00 04 */	stfs f0, 4(r3)
/* 807D5AA0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 807D5AA4  D0 03 00 08 */	stfs f0, 8(r3)
/* 807D5AA8  3A F7 00 01 */	addi r23, r23, 1
/* 807D5AAC  2C 17 00 08 */	cmpwi r23, 8
/* 807D5AB0  3B 7B 00 0C */	addi r27, r27, 0xc
/* 807D5AB4  3B 9C 20 00 */	addi r28, r28, 0x2000
/* 807D5AB8  41 80 FF A8 */	blt lbl_807D5A60
/* 807D5ABC  38 61 00 30 */	addi r3, r1, 0x30
/* 807D5AC0  80 1A 06 C8 */	lwz r0, 0x6c8(r26)
/* 807D5AC4  1C A0 00 0C */	mulli r5, r0, 0xc
/* 807D5AC8  3C 80 80 7E */	lis r4, b_path2@ha /* 0x807E369C@ha */
/* 807D5ACC  38 04 36 9C */	addi r0, r4, b_path2@l /* 0x807E369C@l */
/* 807D5AD0  7C 80 2A 14 */	add r4, r0, r5
/* 807D5AD4  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 807D5AD8  4B A9 10 5D */	bl __mi__4cXyzCFRC3Vec
/* 807D5ADC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807D5AE0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807D5AE4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807D5AE8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807D5AEC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807D5AF0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807D5AF4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D5AF8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807D5AFC  38 61 00 78 */	addi r3, r1, 0x78
/* 807D5B00  4B B7 16 39 */	bl PSVECSquareMag
/* 807D5B04  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D5B08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D5B0C  40 81 00 58 */	ble lbl_807D5B64
/* 807D5B10  FC 00 08 34 */	frsqrte f0, f1
/* 807D5B14  C8 9E 00 90 */	lfd f4, 0x90(r30)
/* 807D5B18  FC 44 00 32 */	fmul f2, f4, f0
/* 807D5B1C  C8 7E 00 98 */	lfd f3, 0x98(r30)
/* 807D5B20  FC 00 00 32 */	fmul f0, f0, f0
/* 807D5B24  FC 01 00 32 */	fmul f0, f1, f0
/* 807D5B28  FC 03 00 28 */	fsub f0, f3, f0
/* 807D5B2C  FC 02 00 32 */	fmul f0, f2, f0
/* 807D5B30  FC 44 00 32 */	fmul f2, f4, f0
/* 807D5B34  FC 00 00 32 */	fmul f0, f0, f0
/* 807D5B38  FC 01 00 32 */	fmul f0, f1, f0
/* 807D5B3C  FC 03 00 28 */	fsub f0, f3, f0
/* 807D5B40  FC 02 00 32 */	fmul f0, f2, f0
/* 807D5B44  FC 44 00 32 */	fmul f2, f4, f0
/* 807D5B48  FC 00 00 32 */	fmul f0, f0, f0
/* 807D5B4C  FC 01 00 32 */	fmul f0, f1, f0
/* 807D5B50  FC 03 00 28 */	fsub f0, f3, f0
/* 807D5B54  FC 02 00 32 */	fmul f0, f2, f0
/* 807D5B58  FC 21 00 32 */	fmul f1, f1, f0
/* 807D5B5C  FC 20 08 18 */	frsp f1, f1
/* 807D5B60  48 00 00 88 */	b lbl_807D5BE8
lbl_807D5B64:
/* 807D5B64  C8 1E 00 A0 */	lfd f0, 0xa0(r30)
/* 807D5B68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D5B6C  40 80 00 10 */	bge lbl_807D5B7C
/* 807D5B70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D5B74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807D5B78  48 00 00 70 */	b lbl_807D5BE8
lbl_807D5B7C:
/* 807D5B7C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807D5B80  80 81 00 08 */	lwz r4, 8(r1)
/* 807D5B84  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807D5B88  3C 00 7F 80 */	lis r0, 0x7f80
/* 807D5B8C  7C 03 00 00 */	cmpw r3, r0
/* 807D5B90  41 82 00 14 */	beq lbl_807D5BA4
/* 807D5B94  40 80 00 40 */	bge lbl_807D5BD4
/* 807D5B98  2C 03 00 00 */	cmpwi r3, 0
/* 807D5B9C  41 82 00 20 */	beq lbl_807D5BBC
/* 807D5BA0  48 00 00 34 */	b lbl_807D5BD4
lbl_807D5BA4:
/* 807D5BA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D5BA8  41 82 00 0C */	beq lbl_807D5BB4
/* 807D5BAC  38 00 00 01 */	li r0, 1
/* 807D5BB0  48 00 00 28 */	b lbl_807D5BD8
lbl_807D5BB4:
/* 807D5BB4  38 00 00 02 */	li r0, 2
/* 807D5BB8  48 00 00 20 */	b lbl_807D5BD8
lbl_807D5BBC:
/* 807D5BBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D5BC0  41 82 00 0C */	beq lbl_807D5BCC
/* 807D5BC4  38 00 00 05 */	li r0, 5
/* 807D5BC8  48 00 00 10 */	b lbl_807D5BD8
lbl_807D5BCC:
/* 807D5BCC  38 00 00 03 */	li r0, 3
/* 807D5BD0  48 00 00 08 */	b lbl_807D5BD8
lbl_807D5BD4:
/* 807D5BD4  38 00 00 04 */	li r0, 4
lbl_807D5BD8:
/* 807D5BD8  2C 00 00 01 */	cmpwi r0, 1
/* 807D5BDC  40 82 00 0C */	bne lbl_807D5BE8
/* 807D5BE0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D5BE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807D5BE8:
/* 807D5BE8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 807D5BEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D5BF0  40 80 00 94 */	bge lbl_807D5C84
/* 807D5BF4  38 61 00 24 */	addi r3, r1, 0x24
/* 807D5BF8  80 9A 06 C8 */	lwz r4, 0x6c8(r26)
/* 807D5BFC  38 04 00 01 */	addi r0, r4, 1
/* 807D5C00  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 807D5C04  1C A0 00 0C */	mulli r5, r0, 0xc
/* 807D5C08  3C 80 80 7E */	lis r4, b_path2@ha /* 0x807E369C@ha */
/* 807D5C0C  38 04 36 9C */	addi r0, r4, b_path2@l /* 0x807E369C@l */
/* 807D5C10  7C 80 2A 14 */	add r4, r0, r5
/* 807D5C14  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 807D5C18  4B A9 0F 1D */	bl __mi__4cXyzCFRC3Vec
/* 807D5C1C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 807D5C20  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 807D5C24  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807D5C28  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807D5C2C  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 807D5C30  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 807D5C34  4B A9 1A 41 */	bl cM_atan2s__Fff
/* 807D5C38  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 807D5C3C  7C 03 00 50 */	subf r0, r3, r0
/* 807D5C40  7C 00 07 34 */	extsh r0, r0
/* 807D5C44  2C 00 40 00 */	cmpwi r0, 0x4000
/* 807D5C48  40 80 00 1C */	bge lbl_807D5C64
/* 807D5C4C  2C 00 C0 00 */	cmpwi r0, -16384
/* 807D5C50  40 81 00 14 */	ble lbl_807D5C64
/* 807D5C54  80 7A 06 C8 */	lwz r3, 0x6c8(r26)
/* 807D5C58  38 03 00 01 */	addi r0, r3, 1
/* 807D5C5C  90 1A 06 C8 */	stw r0, 0x6c8(r26)
/* 807D5C60  48 00 00 10 */	b lbl_807D5C70
lbl_807D5C64:
/* 807D5C64  80 7A 06 C8 */	lwz r3, 0x6c8(r26)
/* 807D5C68  38 03 FF FF */	addi r0, r3, -1
/* 807D5C6C  90 1A 06 C8 */	stw r0, 0x6c8(r26)
lbl_807D5C70:
/* 807D5C70  80 1A 06 C8 */	lwz r0, 0x6c8(r26)
/* 807D5C74  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 807D5C78  90 1A 06 C8 */	stw r0, 0x6c8(r26)
/* 807D5C7C  38 00 00 00 */	li r0, 0
/* 807D5C80  B0 1A 06 D2 */	sth r0, 0x6d2(r26)
lbl_807D5C84:
/* 807D5C84  38 61 00 18 */	addi r3, r1, 0x18
/* 807D5C88  80 1A 06 C8 */	lwz r0, 0x6c8(r26)
/* 807D5C8C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 807D5C90  3C 80 80 7E */	lis r4, b_path2@ha /* 0x807E369C@ha */
/* 807D5C94  38 04 36 9C */	addi r0, r4, b_path2@l /* 0x807E369C@l */
/* 807D5C98  7C 80 2A 14 */	add r4, r0, r5
/* 807D5C9C  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 807D5CA0  4B A9 0E 95 */	bl __mi__4cXyzCFRC3Vec
/* 807D5CA4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 807D5CA8  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 807D5CAC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807D5CB0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807D5CB4  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 807D5CB8  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 807D5CBC  4B A9 19 B9 */	bl cM_atan2s__Fff
/* 807D5CC0  B0 7A 05 DC */	sth r3, 0x5dc(r26)
/* 807D5CC4  38 7A 04 DE */	addi r3, r26, 0x4de
/* 807D5CC8  A8 9A 05 DC */	lha r4, 0x5dc(r26)
/* 807D5CCC  38 A0 00 08 */	li r5, 8
/* 807D5CD0  A8 DA 06 D2 */	lha r6, 0x6d2(r26)
/* 807D5CD4  4B A9 A9 35 */	bl cLib_addCalcAngleS2__FPssss
/* 807D5CD8  38 7A 06 D2 */	addi r3, r26, 0x6d2
/* 807D5CDC  38 80 04 00 */	li r4, 0x400
/* 807D5CE0  38 A0 00 01 */	li r5, 1
/* 807D5CE4  38 C0 00 10 */	li r6, 0x10
/* 807D5CE8  4B A9 A9 21 */	bl cLib_addCalcAngleS2__FPssss
/* 807D5CEC  C3 7E 00 D8 */	lfs f27, 0xd8(r30)
/* 807D5CF0  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E35C8@ha */
/* 807D5CF4  38 63 35 C8 */	addi r3, r3, l_HIO@l /* 0x807E35C8@l */
/* 807D5CF8  C3 83 00 2C */	lfs f28, 0x2c(r3)
/* 807D5CFC  38 00 00 01 */	li r0, 1
/* 807D5D00  98 1A 14 2C */	stb r0, 0x142c(r26)
/* 807D5D04  A8 1A 06 98 */	lha r0, 0x698(r26)
/* 807D5D08  2C 00 00 00 */	cmpwi r0, 0
/* 807D5D0C  40 82 00 70 */	bne lbl_807D5D7C
/* 807D5D10  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 807D5D14  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 807D5D18  40 80 00 64 */	bge lbl_807D5D7C
/* 807D5D1C  7F 43 D3 78 */	mr r3, r26
/* 807D5D20  38 80 00 25 */	li r4, 0x25
/* 807D5D24  FC 20 D8 90 */	fmr f1, f27
/* 807D5D28  38 A0 00 02 */	li r5, 2
/* 807D5D2C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D5D30  4B FF C8 19 */	bl anm_init__FP10e_wb_classifUcf
/* 807D5D34  38 00 00 03 */	li r0, 3
/* 807D5D38  B0 1A 05 B4 */	sth r0, 0x5b4(r26)
/* 807D5D3C  48 00 00 40 */	b lbl_807D5D7C
lbl_807D5D40:
/* 807D5D40  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 807D5D44  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 807D5D48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D5D4C  40 81 00 0C */	ble lbl_807D5D58
/* 807D5D50  38 00 00 02 */	li r0, 2
/* 807D5D54  98 1A 14 2C */	stb r0, 0x142c(r26)
lbl_807D5D58:
/* 807D5D58  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 807D5D5C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807D5D60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D5D64  40 80 00 18 */	bge lbl_807D5D7C
/* 807D5D68  38 00 00 08 */	li r0, 8
/* 807D5D6C  B0 1A 06 90 */	sth r0, 0x690(r26)
/* 807D5D70  38 00 00 00 */	li r0, 0
/* 807D5D74  B0 1A 05 B4 */	sth r0, 0x5b4(r26)
/* 807D5D78  48 00 01 04 */	b lbl_807D5E7C
lbl_807D5D7C:
/* 807D5D7C  38 7A 05 2C */	addi r3, r26, 0x52c
/* 807D5D80  FC 20 E0 90 */	fmr f1, f28
/* 807D5D84  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D5D88  FC 60 D8 90 */	fmr f3, f27
/* 807D5D8C  4B A9 9C B1 */	bl cLib_addCalc2__FPffff
/* 807D5D90  38 7A 07 9A */	addi r3, r26, 0x79a
/* 807D5D94  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 807D5D98  7C 1D 00 50 */	subf r0, r29, r0
/* 807D5D9C  54 00 10 3A */	slwi r0, r0, 2
/* 807D5DA0  7C 00 00 D0 */	neg r0, r0
/* 807D5DA4  7C 04 07 34 */	extsh r4, r0
/* 807D5DA8  38 A0 00 08 */	li r5, 8
/* 807D5DAC  38 C0 02 00 */	li r6, 0x200
/* 807D5DB0  4B A9 A8 59 */	bl cLib_addCalcAngleS2__FPssss
/* 807D5DB4  C0 1A 05 E4 */	lfs f0, 0x5e4(r26)
/* 807D5DB8  80 7A 05 E0 */	lwz r3, 0x5e0(r26)
/* 807D5DBC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807D5DC0  38 7A 05 E4 */	addi r3, r26, 0x5e4
/* 807D5DC4  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807D5DC8  FC 40 08 90 */	fmr f2, f1
/* 807D5DCC  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 807D5DD0  4B A9 9C 6D */	bl cLib_addCalc2__FPffff
/* 807D5DD4  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 807D5DD8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 807D5DDC  40 80 00 54 */	bge lbl_807D5E30
/* 807D5DE0  38 00 00 0A */	li r0, 0xa
/* 807D5DE4  B0 1A 06 90 */	sth r0, 0x690(r26)
/* 807D5DE8  80 1A 05 E8 */	lwz r0, 0x5e8(r26)
/* 807D5DEC  2C 00 00 20 */	cmpwi r0, 0x20
/* 807D5DF0  40 82 00 10 */	bne lbl_807D5E00
/* 807D5DF4  38 00 00 02 */	li r0, 2
/* 807D5DF8  B0 1A 05 B4 */	sth r0, 0x5b4(r26)
/* 807D5DFC  48 00 00 34 */	b lbl_807D5E30
lbl_807D5E00:
/* 807D5E00  38 00 00 00 */	li r0, 0
/* 807D5E04  B0 1A 05 B4 */	sth r0, 0x5b4(r26)
/* 807D5E08  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F8@ha */
/* 807D5E0C  38 03 00 F8 */	addi r0, r3, 0x00F8 /* 0x000700F8@l */
/* 807D5E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D5E14  38 7A 05 EC */	addi r3, r26, 0x5ec
/* 807D5E18  38 81 00 14 */	addi r4, r1, 0x14
/* 807D5E1C  38 A0 FF FF */	li r5, -1
/* 807D5E20  81 9A 05 EC */	lwz r12, 0x5ec(r26)
/* 807D5E24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807D5E28  7D 89 03 A6 */	mtctr r12
/* 807D5E2C  4E 80 04 21 */	bctrl 
lbl_807D5E30:
/* 807D5E30  A8 1A 05 B4 */	lha r0, 0x5b4(r26)
/* 807D5E34  2C 00 00 03 */	cmpwi r0, 3
/* 807D5E38  40 80 00 44 */	bge lbl_807D5E7C
/* 807D5E3C  88 1A 14 2F */	lbz r0, 0x142f(r26)
/* 807D5E40  7C 00 07 75 */	extsb. r0, r0
/* 807D5E44  40 81 00 38 */	ble lbl_807D5E7C
/* 807D5E48  7F 43 D3 78 */	mr r3, r26
/* 807D5E4C  38 80 00 25 */	li r4, 0x25
/* 807D5E50  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 807D5E54  38 A0 00 02 */	li r5, 2
/* 807D5E58  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D5E5C  4B FF C6 ED */	bl anm_init__FP10e_wb_classifUcf
/* 807D5E60  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 807D5E64  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807D5E68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D5E6C  40 81 00 08 */	ble lbl_807D5E74
/* 807D5E70  D0 1A 05 2C */	stfs f0, 0x52c(r26)
lbl_807D5E74:
/* 807D5E74  38 00 00 03 */	li r0, 3
/* 807D5E78  B0 1A 05 B4 */	sth r0, 0x5b4(r26)
lbl_807D5E7C:
/* 807D5E7C  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 807D5E80  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 807D5E84  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 807D5E88  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 807D5E8C  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 807D5E90  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 807D5E94  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 807D5E98  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 807D5E9C  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 807D5EA0  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 807D5EA4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807D5EA8  4B B8 C3 69 */	bl _restgpr_23
/* 807D5EAC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 807D5EB0  7C 08 03 A6 */	mtlr r0
/* 807D5EB4  38 21 01 10 */	addi r1, r1, 0x110
/* 807D5EB8  4E 80 00 20 */	blr 
