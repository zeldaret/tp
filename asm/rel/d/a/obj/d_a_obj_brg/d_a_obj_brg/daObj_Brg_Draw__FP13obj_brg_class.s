lbl_80BBCD38:
/* 80BBCD38  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80BBCD3C  7C 08 02 A6 */	mflr r0
/* 80BBCD40  90 01 01 54 */	stw r0, 0x154(r1)
/* 80BBCD44  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 80BBCD48  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 80BBCD4C  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 80BBCD50  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 80BBCD54  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 80BBCD58  F3 A1 01 28 */	psq_st f29, 296(r1), 0, 0 /* qr0 */
/* 80BBCD5C  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 80BBCD60  F3 81 01 18 */	psq_st f28, 280(r1), 0, 0 /* qr0 */
/* 80BBCD64  DB 61 01 00 */	stfd f27, 0x100(r1)
/* 80BBCD68  F3 61 01 08 */	psq_st f27, 264(r1), 0, 0 /* qr0 */
/* 80BBCD6C  DB 41 00 F0 */	stfd f26, 0xf0(r1)
/* 80BBCD70  F3 41 00 F8 */	psq_st f26, 248(r1), 0, 0 /* qr0 */
/* 80BBCD74  DB 21 00 E0 */	stfd f25, 0xe0(r1)
/* 80BBCD78  F3 21 00 E8 */	psq_st f25, 232(r1), 0, 0 /* qr0 */
/* 80BBCD7C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80BBCD80  4B 7A 54 2D */	bl _savegpr_17
/* 80BBCD84  7C 7F 1B 78 */	mr r31, r3
/* 80BBCD88  3C 60 80 BC */	lis r3, lit_3896@ha /* 0x80BC2148@ha */
/* 80BBCD8C  3B 43 21 48 */	addi r26, r3, lit_3896@l /* 0x80BC2148@l */
/* 80BBCD90  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BBCD94  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BBCD98  38 80 00 10 */	li r4, 0x10
/* 80BBCD9C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BBCDA0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BBCDA4  4B 5E 6A 21 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BBCDA8  3F 7F 00 01 */	addis r27, r31, 1
/* 80BBCDAC  88 1B B1 F0 */	lbz r0, -0x4e10(r27)
/* 80BBCDB0  7C 00 07 75 */	extsb. r0, r0
/* 80BBCDB4  41 82 00 0C */	beq lbl_80BBCDC0
/* 80BBCDB8  38 60 00 01 */	li r3, 1
/* 80BBCDBC  48 00 09 34 */	b lbl_80BBD6F0
lbl_80BBCDC0:
/* 80BBCDC0  3A 9F 05 70 */	addi r20, r31, 0x570
/* 80BBCDC4  3A 60 00 00 */	li r19, 0
/* 80BBCDC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBCDCC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBCDD0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BBCDD4  3B A3 4A C8 */	addi r29, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BBCDD8  3B 3C 5F 64 */	addi r25, r28, 0x5f64
/* 80BBCDDC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BBCDE0  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BBCDE4  48 00 05 88 */	b lbl_80BBD36C
lbl_80BBCDE8:
/* 80BBCDE8  7F C3 F3 78 */	mr r3, r30
/* 80BBCDEC  80 94 00 00 */	lwz r4, 0(r20)
/* 80BBCDF0  80 84 00 04 */	lwz r4, 4(r4)
/* 80BBCDF4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BBCDF8  4B 5E 7F A9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BBCDFC  80 1C 5F 70 */	lwz r0, 0x5f70(r28)
/* 80BBCE00  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80BBCE04  80 1C 5F 74 */	lwz r0, 0x5f74(r28)
/* 80BBCE08  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80BBCE0C  80 74 00 00 */	lwz r3, 0(r20)
/* 80BBCE10  4B 45 0E B5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BBCE14  80 1C 5F 80 */	lwz r0, 0x5f80(r28)
/* 80BBCE18  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80BBCE1C  80 1C 5F 84 */	lwz r0, 0x5f84(r28)
/* 80BBCE20  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80BBCE24  88 1B B1 E8 */	lbz r0, -0x4e18(r27)
/* 80BBCE28  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BBCE2C  41 82 00 44 */	beq lbl_80BBCE70
/* 80BBCE30  3A C0 00 00 */	li r22, 0
/* 80BBCE34  3A 40 00 00 */	li r18, 0
/* 80BBCE38  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BBCE3C  3A 23 CA 54 */	addi r17, r3, g_env_light@l /* 0x8042CA54@l */
lbl_80BBCE40:
/* 80BBCE40  7E 23 8B 78 */	mr r3, r17
/* 80BBCE44  3A B2 00 04 */	addi r21, r18, 4
/* 80BBCE48  7C 94 A8 2E */	lwzx r4, r20, r21
/* 80BBCE4C  80 84 00 04 */	lwz r4, 4(r4)
/* 80BBCE50  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BBCE54  4B 5E 7F 4D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BBCE58  7C 74 A8 2E */	lwzx r3, r20, r21
/* 80BBCE5C  4B 45 0E 69 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BBCE60  3A D6 00 01 */	addi r22, r22, 1
/* 80BBCE64  2C 16 00 02 */	cmpwi r22, 2
/* 80BBCE68  3A 52 00 04 */	addi r18, r18, 4
/* 80BBCE6C  41 80 FF D4 */	blt lbl_80BBCE40
lbl_80BBCE70:
/* 80BBCE70  88 1B B1 E8 */	lbz r0, -0x4e18(r27)
/* 80BBCE74  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80BBCE78  40 82 04 EC */	bne lbl_80BBD364
/* 80BBCE7C  88 14 07 08 */	lbz r0, 0x708(r20)
/* 80BBCE80  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80BBCE84  41 82 04 E0 */	beq lbl_80BBD364
/* 80BBCE88  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBCE8C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBCE90  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBCE94  A8 9B AF 1E */	lha r4, -0x50e2(r27)
/* 80BBCE98  4B 44 F5 45 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBCE9C  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80BBCEA0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80BBCEA4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80BBCEA8  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 80BBCEAC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80BBCEB0  38 61 00 74 */	addi r3, r1, 0x74
/* 80BBCEB4  38 81 00 68 */	addi r4, r1, 0x68
/* 80BBCEB8  4B 6B 40 35 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBCEBC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BBCEC0  38 94 00 74 */	addi r4, r20, 0x74
/* 80BBCEC4  38 B4 00 80 */	addi r5, r20, 0x80
/* 80BBCEC8  4B 6A 9C 6D */	bl __mi__4cXyzCFRC3Vec
/* 80BBCECC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BBCED0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BBCED4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BBCED8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BBCEDC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BBCEE0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80BBCEE4  38 61 00 20 */	addi r3, r1, 0x20
/* 80BBCEE8  38 94 00 50 */	addi r4, r20, 0x50
/* 80BBCEEC  38 B4 00 5C */	addi r5, r20, 0x5c
/* 80BBCEF0  4B 6A 9C 45 */	bl __mi__4cXyzCFRC3Vec
/* 80BBCEF4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BBCEF8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BBCEFC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BBCF00  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BBCF04  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BBCF08  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BBCF0C  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBCF10  88 63 B1 E8 */	lbz r3, -0x4e18(r3)
/* 80BBCF14  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80BBCF18  40 82 04 4C */	bne lbl_80BBD364
/* 80BBCF1C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80BBCF20  41 82 00 0C */	beq lbl_80BBCF2C
/* 80BBCF24  C3 5A 00 5C */	lfs f26, 0x5c(r26)
/* 80BBCF28  48 00 00 08 */	b lbl_80BBCF30
lbl_80BBCF2C:
/* 80BBCF2C  C3 5A 00 60 */	lfs f26, 0x60(r26)
lbl_80BBCF30:
/* 80BBCF30  80 74 00 4C */	lwz r3, 0x4c(r20)
/* 80BBCF34  82 E3 00 04 */	lwz r23, 4(r3)
/* 80BBCF38  83 03 00 44 */	lwz r24, 0x44(r3)
/* 80BBCF3C  88 14 07 08 */	lbz r0, 0x708(r20)
/* 80BBCF40  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BBCF44  40 82 00 24 */	bne lbl_80BBCF68
/* 80BBCF48  38 00 00 05 */	li r0, 5
/* 80BBCF4C  7C 09 03 A6 */	mtctr r0
lbl_80BBCF50:
/* 80BBCF50  D3 58 00 00 */	stfs f26, 0(r24)
/* 80BBCF54  D3 57 00 00 */	stfs f26, 0(r23)
/* 80BBCF58  3A F7 00 04 */	addi r23, r23, 4
/* 80BBCF5C  3B 18 00 04 */	addi r24, r24, 4
/* 80BBCF60  42 00 FF F0 */	bdnz lbl_80BBCF50
/* 80BBCF64  48 00 01 C4 */	b lbl_80BBD128
lbl_80BBCF68:
/* 80BBCF68  82 A3 00 00 */	lwz r21, 0(r3)
/* 80BBCF6C  82 C3 00 40 */	lwz r22, 0x40(r3)
/* 80BBCF70  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80BBCF74  C0 3A 00 64 */	lfs f1, 0x64(r26)
/* 80BBCF78  EC 60 00 72 */	fmuls f3, f0, f1
/* 80BBCF7C  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 80BBCF80  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80BBCF84  EC 40 00 72 */	fmuls f2, f0, f1
/* 80BBCF88  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80BBCF8C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80BBCF90  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BBCF94  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80BBCF98  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBCF9C  A8 03 AF 1E */	lha r0, -0x50e2(r3)
/* 80BBCFA0  1C 00 00 05 */	mulli r0, r0, 5
/* 80BBCFA4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBCFA8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BBCFAC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BBCFB0  7C 83 04 2E */	lfsx f4, r3, r0
/* 80BBCFB4  A8 14 00 FE */	lha r0, 0xfe(r20)
/* 80BBCFB8  CB FA 00 B0 */	lfd f31, 0xb0(r26)
/* 80BBCFBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BBCFC0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BBCFC4  3E 20 43 30 */	lis r17, 0x4330
/* 80BBCFC8  92 21 00 80 */	stw r17, 0x80(r1)
/* 80BBCFCC  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80BBCFD0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BBCFD4  EF 60 01 32 */	fmuls f27, f0, f4
/* 80BBCFD8  3A 40 00 00 */	li r18, 0
/* 80BBCFDC  FF C0 18 18 */	frsp f30, f3
/* 80BBCFE0  FF A0 10 18 */	frsp f29, f2
/* 80BBCFE4  FF 80 08 18 */	frsp f28, f1
/* 80BBCFE8  C3 3A 00 00 */	lfs f25, 0(r26)
lbl_80BBCFEC:
/* 80BBCFEC  D3 57 00 00 */	stfs f26, 0(r23)
/* 80BBCFF0  2C 12 00 02 */	cmpwi r18, 2
/* 80BBCFF4  40 82 00 4C */	bne lbl_80BBD040
/* 80BBCFF8  C0 5A 00 14 */	lfs f2, 0x14(r26)
/* 80BBCFFC  88 14 07 04 */	lbz r0, 0x704(r20)
/* 80BBD000  7C 00 07 74 */	extsb r0, r0
/* 80BBD004  2C 00 00 01 */	cmpwi r0, 1
/* 80BBD008  41 81 00 10 */	bgt lbl_80BBD018
/* 80BBD00C  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80BBD010  D0 17 00 00 */	stfs f0, 0(r23)
/* 80BBD014  48 00 00 10 */	b lbl_80BBD024
lbl_80BBD018:
/* 80BBD018  2C 00 00 02 */	cmpwi r0, 2
/* 80BBD01C  40 82 00 08 */	bne lbl_80BBD024
/* 80BBD020  D0 57 00 00 */	stfs f2, 0(r23)
lbl_80BBD024:
/* 80BBD024  C0 15 00 00 */	lfs f0, 0(r21)
/* 80BBD028  D0 14 00 98 */	stfs f0, 0x98(r20)
/* 80BBD02C  C0 15 00 04 */	lfs f0, 4(r21)
/* 80BBD030  D0 14 00 9C */	stfs f0, 0x9c(r20)
/* 80BBD034  C0 15 00 08 */	lfs f0, 8(r21)
/* 80BBD038  D0 14 00 A0 */	stfs f0, 0xa0(r20)
/* 80BBD03C  48 00 00 20 */	b lbl_80BBD05C
lbl_80BBD040:
/* 80BBD040  2C 12 00 01 */	cmpwi r18, 1
/* 80BBD044  41 82 00 0C */	beq lbl_80BBD050
/* 80BBD048  2C 12 00 03 */	cmpwi r18, 3
/* 80BBD04C  40 82 00 0C */	bne lbl_80BBD058
lbl_80BBD050:
/* 80BBD050  C0 5A 00 68 */	lfs f2, 0x68(r26)
/* 80BBD054  48 00 00 08 */	b lbl_80BBD05C
lbl_80BBD058:
/* 80BBD058  C0 5A 00 00 */	lfs f2, 0(r26)
lbl_80BBD05C:
/* 80BBD05C  6E 40 80 00 */	xoris r0, r18, 0x8000
/* 80BBD060  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BBD064  92 21 00 80 */	stw r17, 0x80(r1)
/* 80BBD068  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80BBD06C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BBD070  EC 3E 00 32 */	fmuls f1, f30, f0
/* 80BBD074  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80BBD078  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BBD07C  EC 1B 00 32 */	fmuls f0, f27, f0
/* 80BBD080  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD084  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80BBD088  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80BBD08C  92 21 00 88 */	stw r17, 0x88(r1)
/* 80BBD090  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80BBD094  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BBD098  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80BBD09C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80BBD0A0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BBD0A4  92 21 00 90 */	stw r17, 0x90(r1)
/* 80BBD0A8  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 80BBD0AC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BBD0B0  EC 3C 00 32 */	fmuls f1, f28, f0
/* 80BBD0B4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80BBD0B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BBD0BC  EC 1B 00 32 */	fmuls f0, f27, f0
/* 80BBD0C0  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD0C4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80BBD0C8  38 61 00 14 */	addi r3, r1, 0x14
/* 80BBD0CC  38 94 00 80 */	addi r4, r20, 0x80
/* 80BBD0D0  38 A1 00 74 */	addi r5, r1, 0x74
/* 80BBD0D4  4B 6A 9A 11 */	bl __pl__4cXyzCFRC3Vec
/* 80BBD0D8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BBD0DC  D0 15 00 00 */	stfs f0, 0(r21)
/* 80BBD0E0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BBD0E4  D0 15 00 04 */	stfs f0, 4(r21)
/* 80BBD0E8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BBD0EC  D0 15 00 08 */	stfs f0, 8(r21)
/* 80BBD0F0  C0 14 00 74 */	lfs f0, 0x74(r20)
/* 80BBD0F4  D0 16 00 00 */	stfs f0, 0(r22)
/* 80BBD0F8  C0 14 00 78 */	lfs f0, 0x78(r20)
/* 80BBD0FC  D0 16 00 04 */	stfs f0, 4(r22)
/* 80BBD100  C0 14 00 7C */	lfs f0, 0x7c(r20)
/* 80BBD104  D0 16 00 08 */	stfs f0, 8(r22)
/* 80BBD108  D3 38 00 00 */	stfs f25, 0(r24)
/* 80BBD10C  3A 52 00 01 */	addi r18, r18, 1
/* 80BBD110  2C 12 00 05 */	cmpwi r18, 5
/* 80BBD114  3A B5 00 0C */	addi r21, r21, 0xc
/* 80BBD118  3A D6 00 0C */	addi r22, r22, 0xc
/* 80BBD11C  3A F7 00 04 */	addi r23, r23, 4
/* 80BBD120  3B 18 00 04 */	addi r24, r24, 4
/* 80BBD124  41 80 FE C8 */	blt lbl_80BBCFEC
lbl_80BBD128:
/* 80BBD128  80 74 00 4C */	lwz r3, 0x4c(r20)
/* 80BBD12C  83 03 00 24 */	lwz r24, 0x24(r3)
/* 80BBD130  82 E3 00 64 */	lwz r23, 0x64(r3)
/* 80BBD134  88 14 07 08 */	lbz r0, 0x708(r20)
/* 80BBD138  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80BBD13C  40 82 00 24 */	bne lbl_80BBD160
/* 80BBD140  38 00 00 05 */	li r0, 5
/* 80BBD144  7C 09 03 A6 */	mtctr r0
lbl_80BBD148:
/* 80BBD148  D3 57 00 00 */	stfs f26, 0(r23)
/* 80BBD14C  D3 58 00 00 */	stfs f26, 0(r24)
/* 80BBD150  3B 18 00 04 */	addi r24, r24, 4
/* 80BBD154  3A F7 00 04 */	addi r23, r23, 4
/* 80BBD158  42 00 FF F0 */	bdnz lbl_80BBD148
/* 80BBD15C  48 00 01 C4 */	b lbl_80BBD320
lbl_80BBD160:
/* 80BBD160  82 C3 00 20 */	lwz r22, 0x20(r3)
/* 80BBD164  82 A3 00 60 */	lwz r21, 0x60(r3)
/* 80BBD168  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80BBD16C  C0 3A 00 64 */	lfs f1, 0x64(r26)
/* 80BBD170  EC 60 00 72 */	fmuls f3, f0, f1
/* 80BBD174  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 80BBD178  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80BBD17C  EC 40 00 72 */	fmuls f2, f0, f1
/* 80BBD180  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80BBD184  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80BBD188  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BBD18C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80BBD190  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBD194  A8 03 AF 1E */	lha r0, -0x50e2(r3)
/* 80BBD198  1C 00 00 05 */	mulli r0, r0, 5
/* 80BBD19C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBD1A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BBD1A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BBD1A8  7C 83 04 2E */	lfsx f4, r3, r0
/* 80BBD1AC  A8 14 01 00 */	lha r0, 0x100(r20)
/* 80BBD1B0  CB 9A 00 B0 */	lfd f28, 0xb0(r26)
/* 80BBD1B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BBD1B8  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BBD1BC  3E 20 43 30 */	lis r17, 0x4330
/* 80BBD1C0  92 21 00 90 */	stw r17, 0x90(r1)
/* 80BBD1C4  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 80BBD1C8  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80BBD1CC  EF 60 01 32 */	fmuls f27, f0, f4
/* 80BBD1D0  3A 40 00 00 */	li r18, 0
/* 80BBD1D4  FF A0 18 18 */	frsp f29, f3
/* 80BBD1D8  FF C0 10 18 */	frsp f30, f2
/* 80BBD1DC  FF E0 08 18 */	frsp f31, f1
/* 80BBD1E0  C3 3A 00 00 */	lfs f25, 0(r26)
lbl_80BBD1E4:
/* 80BBD1E4  D3 58 00 00 */	stfs f26, 0(r24)
/* 80BBD1E8  2C 12 00 02 */	cmpwi r18, 2
/* 80BBD1EC  40 82 00 4C */	bne lbl_80BBD238
/* 80BBD1F0  C0 5A 00 14 */	lfs f2, 0x14(r26)
/* 80BBD1F4  88 14 07 05 */	lbz r0, 0x705(r20)
/* 80BBD1F8  7C 00 07 74 */	extsb r0, r0
/* 80BBD1FC  2C 00 00 01 */	cmpwi r0, 1
/* 80BBD200  41 81 00 10 */	bgt lbl_80BBD210
/* 80BBD204  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80BBD208  D0 18 00 00 */	stfs f0, 0(r24)
/* 80BBD20C  48 00 00 10 */	b lbl_80BBD21C
lbl_80BBD210:
/* 80BBD210  2C 00 00 02 */	cmpwi r0, 2
/* 80BBD214  40 82 00 08 */	bne lbl_80BBD21C
/* 80BBD218  D0 58 00 00 */	stfs f2, 0(r24)
lbl_80BBD21C:
/* 80BBD21C  C0 16 00 00 */	lfs f0, 0(r22)
/* 80BBD220  D0 14 00 A4 */	stfs f0, 0xa4(r20)
/* 80BBD224  C0 16 00 04 */	lfs f0, 4(r22)
/* 80BBD228  D0 14 00 A8 */	stfs f0, 0xa8(r20)
/* 80BBD22C  C0 16 00 08 */	lfs f0, 8(r22)
/* 80BBD230  D0 14 00 AC */	stfs f0, 0xac(r20)
/* 80BBD234  48 00 00 20 */	b lbl_80BBD254
lbl_80BBD238:
/* 80BBD238  2C 12 00 01 */	cmpwi r18, 1
/* 80BBD23C  41 82 00 0C */	beq lbl_80BBD248
/* 80BBD240  2C 12 00 03 */	cmpwi r18, 3
/* 80BBD244  40 82 00 0C */	bne lbl_80BBD250
lbl_80BBD248:
/* 80BBD248  C0 5A 00 68 */	lfs f2, 0x68(r26)
/* 80BBD24C  48 00 00 08 */	b lbl_80BBD254
lbl_80BBD250:
/* 80BBD250  C0 5A 00 00 */	lfs f2, 0(r26)
lbl_80BBD254:
/* 80BBD254  6E 40 80 00 */	xoris r0, r18, 0x8000
/* 80BBD258  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BBD25C  92 21 00 90 */	stw r17, 0x90(r1)
/* 80BBD260  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 80BBD264  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80BBD268  EC 3D 00 32 */	fmuls f1, f29, f0
/* 80BBD26C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80BBD270  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BBD274  EC 1B 00 32 */	fmuls f0, f27, f0
/* 80BBD278  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD27C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80BBD280  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80BBD284  92 21 00 88 */	stw r17, 0x88(r1)
/* 80BBD288  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80BBD28C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80BBD290  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80BBD294  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80BBD298  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BBD29C  92 21 00 80 */	stw r17, 0x80(r1)
/* 80BBD2A0  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80BBD2A4  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80BBD2A8  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80BBD2AC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80BBD2B0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BBD2B4  EC 1B 00 32 */	fmuls f0, f27, f0
/* 80BBD2B8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD2BC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80BBD2C0  38 61 00 08 */	addi r3, r1, 8
/* 80BBD2C4  38 94 00 5C */	addi r4, r20, 0x5c
/* 80BBD2C8  38 A1 00 74 */	addi r5, r1, 0x74
/* 80BBD2CC  4B 6A 98 19 */	bl __pl__4cXyzCFRC3Vec
/* 80BBD2D0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BBD2D4  D0 16 00 00 */	stfs f0, 0(r22)
/* 80BBD2D8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BBD2DC  D0 16 00 04 */	stfs f0, 4(r22)
/* 80BBD2E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BBD2E4  D0 16 00 08 */	stfs f0, 8(r22)
/* 80BBD2E8  C0 14 00 50 */	lfs f0, 0x50(r20)
/* 80BBD2EC  D0 15 00 00 */	stfs f0, 0(r21)
/* 80BBD2F0  C0 14 00 54 */	lfs f0, 0x54(r20)
/* 80BBD2F4  D0 15 00 04 */	stfs f0, 4(r21)
/* 80BBD2F8  C0 14 00 58 */	lfs f0, 0x58(r20)
/* 80BBD2FC  D0 15 00 08 */	stfs f0, 8(r21)
/* 80BBD300  D3 37 00 00 */	stfs f25, 0(r23)
/* 80BBD304  3A 52 00 01 */	addi r18, r18, 1
/* 80BBD308  2C 12 00 05 */	cmpwi r18, 5
/* 80BBD30C  3A D6 00 0C */	addi r22, r22, 0xc
/* 80BBD310  3A B5 00 0C */	addi r21, r21, 0xc
/* 80BBD314  3B 18 00 04 */	addi r24, r24, 4
/* 80BBD318  3A F7 00 04 */	addi r23, r23, 4
/* 80BBD31C  41 80 FE C8 */	blt lbl_80BBD1E4
lbl_80BBD320:
/* 80BBD320  38 74 00 14 */	addi r3, r20, 0x14
/* 80BBD324  38 80 00 05 */	li r4, 5
/* 80BBD328  3C A0 80 BC */	lis r5, l_color_4002@ha /* 0x80BC23A4@ha */
/* 80BBD32C  38 A5 23 A4 */	addi r5, r5, l_color_4002@l /* 0x80BC23A4@l */
/* 80BBD330  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BBD334  4B 45 6C 7D */	bl update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 80BBD338  38 74 00 14 */	addi r3, r20, 0x14
/* 80BBD33C  81 94 00 14 */	lwz r12, 0x14(r20)
/* 80BBD340  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BBD344  7D 89 03 A6 */	mtctr r12
/* 80BBD348  4E 80 04 21 */	bctrl 
/* 80BBD34C  1C 63 00 14 */	mulli r3, r3, 0x14
/* 80BBD350  3C 63 00 01 */	addis r3, r3, 1
/* 80BBD354  38 63 61 54 */	addi r3, r3, 0x6154
/* 80BBD358  7C 79 1A 14 */	add r3, r25, r3
/* 80BBD35C  38 94 00 14 */	addi r4, r20, 0x14
/* 80BBD360  4B 45 73 D9 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_80BBD364:
/* 80BBD364  3A 73 00 01 */	addi r19, r19, 1
/* 80BBD368  3A 94 07 0C */	addi r20, r20, 0x70c
lbl_80BBD36C:
/* 80BBD36C  88 1B B1 EA */	lbz r0, -0x4e16(r27)
/* 80BBD370  7C 00 07 74 */	extsb r0, r0
/* 80BBD374  7C 13 00 00 */	cmpw r19, r0
/* 80BBD378  41 80 FA 70 */	blt lbl_80BBCDE8
/* 80BBD37C  88 7B B1 E8 */	lbz r3, -0x4e18(r27)
/* 80BBD380  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80BBD384  40 82 03 68 */	bne lbl_80BBD6EC
/* 80BBD388  70 60 00 05 */	andi. r0, r3, 5
/* 80BBD38C  40 82 03 60 */	bne lbl_80BBD6EC
/* 80BBD390  88 1B B1 ED */	lbz r0, -0x4e13(r27)
/* 80BBD394  7C 00 07 74 */	extsb r0, r0
/* 80BBD398  2C 00 00 01 */	cmpwi r0, 1
/* 80BBD39C  40 82 00 20 */	bne lbl_80BBD3BC
/* 80BBD3A0  C0 1A 00 6C */	lfs f0, 0x6c(r26)
/* 80BBD3A4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BBD3A8  C0 1A 00 70 */	lfs f0, 0x70(r26)
/* 80BBD3AC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BBD3B0  C0 1A 00 74 */	lfs f0, 0x74(r26)
/* 80BBD3B4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BBD3B8  48 00 00 40 */	b lbl_80BBD3F8
lbl_80BBD3BC:
/* 80BBD3BC  2C 00 00 02 */	cmpwi r0, 2
/* 80BBD3C0  40 82 00 20 */	bne lbl_80BBD3E0
/* 80BBD3C4  C0 1A 00 78 */	lfs f0, 0x78(r26)
/* 80BBD3C8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BBD3CC  C0 1A 00 7C */	lfs f0, 0x7c(r26)
/* 80BBD3D0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BBD3D4  C0 1A 00 80 */	lfs f0, 0x80(r26)
/* 80BBD3D8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BBD3DC  48 00 00 1C */	b lbl_80BBD3F8
lbl_80BBD3E0:
/* 80BBD3E0  C0 1A 00 84 */	lfs f0, 0x84(r26)
/* 80BBD3E4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BBD3E8  C0 1A 00 88 */	lfs f0, 0x88(r26)
/* 80BBD3EC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BBD3F0  C0 1A 00 8C */	lfs f0, 0x8c(r26)
/* 80BBD3F4  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_80BBD3F8:
/* 80BBD3F8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBD3FC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBD400  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBD404  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80BBD408  4B 44 EF D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBD40C  38 61 00 44 */	addi r3, r1, 0x44
/* 80BBD410  38 81 00 38 */	addi r4, r1, 0x38
/* 80BBD414  4B 6B 3A D9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBD418  3C 9F 00 01 */	addis r4, r31, 1
/* 80BBD41C  80 64 AE C8 */	lwz r3, -0x5138(r4)
/* 80BBD420  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBD424  C0 3F 04 A8 */	lfs f1, 0x4a8(r31)
/* 80BBD428  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BBD42C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD430  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BBD434  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80BBD438  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BBD43C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD440  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BBD444  C0 3F 04 B0 */	lfs f1, 0x4b0(r31)
/* 80BBD448  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80BBD44C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD450  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BBD454  88 04 B1 ED */	lbz r0, -0x4e13(r4)
/* 80BBD458  7C 00 07 74 */	extsb r0, r0
/* 80BBD45C  2C 00 00 01 */	cmpwi r0, 1
/* 80BBD460  40 82 00 18 */	bne lbl_80BBD478
/* 80BBD464  C0 1A 00 90 */	lfs f0, 0x90(r26)
/* 80BBD468  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BBD46C  C0 1A 00 88 */	lfs f0, 0x88(r26)
/* 80BBD470  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BBD474  48 00 00 30 */	b lbl_80BBD4A4
lbl_80BBD478:
/* 80BBD478  2C 00 00 02 */	cmpwi r0, 2
/* 80BBD47C  40 82 00 18 */	bne lbl_80BBD494
/* 80BBD480  C0 1A 00 94 */	lfs f0, 0x94(r26)
/* 80BBD484  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BBD488  C0 1A 00 98 */	lfs f0, 0x98(r26)
/* 80BBD48C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BBD490  48 00 00 14 */	b lbl_80BBD4A4
lbl_80BBD494:
/* 80BBD494  C0 1A 00 9C */	lfs f0, 0x9c(r26)
/* 80BBD498  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BBD49C  C0 1A 00 A0 */	lfs f0, 0xa0(r26)
/* 80BBD4A0  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_80BBD4A4:
/* 80BBD4A4  3C BF 00 01 */	addis r5, r31, 1
/* 80BBD4A8  80 65 AE C8 */	lwz r3, -0x5138(r5)
/* 80BBD4AC  80 83 00 00 */	lwz r4, 0(r3)
/* 80BBD4B0  80 05 AE D8 */	lwz r0, -0x5128(r5)
/* 80BBD4B4  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80BBD4B8  3A 23 00 0C */	addi r17, r3, 0xc
/* 80BBD4BC  7E 24 8A 14 */	add r17, r4, r17
/* 80BBD4C0  38 61 00 44 */	addi r3, r1, 0x44
/* 80BBD4C4  38 81 00 38 */	addi r4, r1, 0x38
/* 80BBD4C8  4B 6B 3A 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBD4CC  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBD4D0  C0 23 AE F8 */	lfs f1, -0x5108(r3)
/* 80BBD4D4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BBD4D8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD4DC  D0 11 00 00 */	stfs f0, 0(r17)
/* 80BBD4E0  C0 23 AE FC */	lfs f1, -0x5104(r3)
/* 80BBD4E4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BBD4E8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD4EC  D0 11 00 04 */	stfs f0, 4(r17)
/* 80BBD4F0  C0 23 AF 00 */	lfs f1, -0x5100(r3)
/* 80BBD4F4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80BBD4F8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD4FC  D0 11 00 08 */	stfs f0, 8(r17)
/* 80BBD500  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80BBD504  C0 1A 00 A4 */	lfs f0, 0xa4(r26)
/* 80BBD508  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBD50C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BBD510  88 03 B1 ED */	lbz r0, -0x4e13(r3)
/* 80BBD514  7C 00 07 74 */	extsb r0, r0
/* 80BBD518  2C 00 00 01 */	cmpwi r0, 1
/* 80BBD51C  40 82 00 18 */	bne lbl_80BBD534
/* 80BBD520  C0 1A 00 70 */	lfs f0, 0x70(r26)
/* 80BBD524  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BBD528  C0 1A 00 74 */	lfs f0, 0x74(r26)
/* 80BBD52C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BBD530  48 00 00 30 */	b lbl_80BBD560
lbl_80BBD534:
/* 80BBD534  2C 00 00 02 */	cmpwi r0, 2
/* 80BBD538  40 82 00 18 */	bne lbl_80BBD550
/* 80BBD53C  C0 1A 00 7C */	lfs f0, 0x7c(r26)
/* 80BBD540  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BBD544  C0 1A 00 80 */	lfs f0, 0x80(r26)
/* 80BBD548  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BBD54C  48 00 00 14 */	b lbl_80BBD560
lbl_80BBD550:
/* 80BBD550  C0 1A 00 8C */	lfs f0, 0x8c(r26)
/* 80BBD554  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BBD558  C0 1A 00 88 */	lfs f0, 0x88(r26)
/* 80BBD55C  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_80BBD560:
/* 80BBD560  38 61 00 44 */	addi r3, r1, 0x44
/* 80BBD564  38 81 00 38 */	addi r4, r1, 0x38
/* 80BBD568  4B 6B 39 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBD56C  3C 9F 00 01 */	addis r4, r31, 1
/* 80BBD570  80 64 AE C8 */	lwz r3, -0x5138(r4)
/* 80BBD574  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80BBD578  C0 3F 04 A8 */	lfs f1, 0x4a8(r31)
/* 80BBD57C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BBD580  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD584  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BBD588  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80BBD58C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BBD590  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD594  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BBD598  C0 3F 04 B0 */	lfs f1, 0x4b0(r31)
/* 80BBD59C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80BBD5A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD5A4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BBD5A8  88 04 B1 ED */	lbz r0, -0x4e13(r4)
/* 80BBD5AC  7C 00 07 74 */	extsb r0, r0
/* 80BBD5B0  2C 00 00 01 */	cmpwi r0, 1
/* 80BBD5B4  40 82 00 18 */	bne lbl_80BBD5CC
/* 80BBD5B8  C0 1A 00 90 */	lfs f0, 0x90(r26)
/* 80BBD5BC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BBD5C0  C0 1A 00 88 */	lfs f0, 0x88(r26)
/* 80BBD5C4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BBD5C8  48 00 00 30 */	b lbl_80BBD5F8
lbl_80BBD5CC:
/* 80BBD5CC  2C 00 00 02 */	cmpwi r0, 2
/* 80BBD5D0  40 82 00 18 */	bne lbl_80BBD5E8
/* 80BBD5D4  C0 1A 00 94 */	lfs f0, 0x94(r26)
/* 80BBD5D8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BBD5DC  C0 1A 00 98 */	lfs f0, 0x98(r26)
/* 80BBD5E0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BBD5E4  48 00 00 14 */	b lbl_80BBD5F8
lbl_80BBD5E8:
/* 80BBD5E8  C0 1A 00 9C */	lfs f0, 0x9c(r26)
/* 80BBD5EC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BBD5F0  C0 1A 00 A0 */	lfs f0, 0xa0(r26)
/* 80BBD5F4  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_80BBD5F8:
/* 80BBD5F8  3C BF 00 01 */	addis r5, r31, 1
/* 80BBD5FC  80 65 AE C8 */	lwz r3, -0x5138(r5)
/* 80BBD600  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80BBD604  80 05 AE D8 */	lwz r0, -0x5128(r5)
/* 80BBD608  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80BBD60C  3A 23 00 0C */	addi r17, r3, 0xc
/* 80BBD610  7E 24 8A 14 */	add r17, r4, r17
/* 80BBD614  38 61 00 44 */	addi r3, r1, 0x44
/* 80BBD618  38 81 00 38 */	addi r4, r1, 0x38
/* 80BBD61C  4B 6B 38 D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBD620  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBD624  C0 23 AE F8 */	lfs f1, -0x5108(r3)
/* 80BBD628  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BBD62C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD630  D0 11 00 00 */	stfs f0, 0(r17)
/* 80BBD634  C0 23 AE FC */	lfs f1, -0x5104(r3)
/* 80BBD638  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BBD63C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD640  D0 11 00 04 */	stfs f0, 4(r17)
/* 80BBD644  C0 23 AF 00 */	lfs f1, -0x5100(r3)
/* 80BBD648  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80BBD64C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD650  D0 11 00 08 */	stfs f0, 8(r17)
/* 80BBD654  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BBD658  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BBD65C  41 82 00 0C */	beq lbl_80BBD668
/* 80BBD660  C0 3A 00 A8 */	lfs f1, 0xa8(r26)
/* 80BBD664  48 00 00 30 */	b lbl_80BBD694
lbl_80BBD668:
/* 80BBD668  88 03 B1 ED */	lbz r0, -0x4e13(r3)
/* 80BBD66C  7C 00 07 74 */	extsb r0, r0
/* 80BBD670  2C 00 00 01 */	cmpwi r0, 1
/* 80BBD674  40 82 00 0C */	bne lbl_80BBD680
/* 80BBD678  C0 3A 00 AC */	lfs f1, 0xac(r26)
/* 80BBD67C  48 00 00 18 */	b lbl_80BBD694
lbl_80BBD680:
/* 80BBD680  2C 00 00 02 */	cmpwi r0, 2
/* 80BBD684  40 82 00 0C */	bne lbl_80BBD690
/* 80BBD688  C0 3A 00 A8 */	lfs f1, 0xa8(r26)
/* 80BBD68C  48 00 00 08 */	b lbl_80BBD694
lbl_80BBD690:
/* 80BBD690  C0 3A 00 5C */	lfs f1, 0x5c(r26)
lbl_80BBD694:
/* 80BBD694  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBD698  80 83 AE D8 */	lwz r4, -0x5128(r3)
/* 80BBD69C  38 04 00 02 */	addi r0, r4, 2
/* 80BBD6A0  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80BBD6A4  3C A0 80 BC */	lis r5, l_color_4042@ha /* 0x80BC23A8@ha */
/* 80BBD6A8  38 A5 23 A8 */	addi r5, r5, l_color_4042@l /* 0x80BC23A8@l */
/* 80BBD6AC  38 C0 00 00 */	li r6, 0
/* 80BBD6B0  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80BBD6B4  38 63 AE 90 */	addi r3, r3, -20848
/* 80BBD6B8  4B 45 60 85 */	bl update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c
/* 80BBD6BC  3C 7F 00 01 */	addis r3, r31, 1
/* 80BBD6C0  85 83 AE 90 */	lwzu r12, -0x5170(r3)
/* 80BBD6C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BBD6C8  7D 89 03 A6 */	mtctr r12
/* 80BBD6CC  4E 80 04 21 */	bctrl 
/* 80BBD6D0  1C 63 00 14 */	mulli r3, r3, 0x14
/* 80BBD6D4  3C 63 00 01 */	addis r3, r3, 1
/* 80BBD6D8  38 63 61 54 */	addi r3, r3, 0x6154
/* 80BBD6DC  7C 79 1A 14 */	add r3, r25, r3
/* 80BBD6E0  3C 9F 00 01 */	addis r4, r31, 1
/* 80BBD6E4  38 84 AE 90 */	addi r4, r4, -20848
/* 80BBD6E8  4B 45 70 51 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_80BBD6EC:
/* 80BBD6EC  38 60 00 01 */	li r3, 1
lbl_80BBD6F0:
/* 80BBD6F0  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 80BBD6F4  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 80BBD6F8  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 80BBD6FC  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 80BBD700  E3 A1 01 28 */	psq_l f29, 296(r1), 0, 0 /* qr0 */
/* 80BBD704  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 80BBD708  E3 81 01 18 */	psq_l f28, 280(r1), 0, 0 /* qr0 */
/* 80BBD70C  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 80BBD710  E3 61 01 08 */	psq_l f27, 264(r1), 0, 0 /* qr0 */
/* 80BBD714  CB 61 01 00 */	lfd f27, 0x100(r1)
/* 80BBD718  E3 41 00 F8 */	psq_l f26, 248(r1), 0, 0 /* qr0 */
/* 80BBD71C  CB 41 00 F0 */	lfd f26, 0xf0(r1)
/* 80BBD720  E3 21 00 E8 */	psq_l f25, 232(r1), 0, 0 /* qr0 */
/* 80BBD724  CB 21 00 E0 */	lfd f25, 0xe0(r1)
/* 80BBD728  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80BBD72C  4B 7A 4A CD */	bl _restgpr_17
/* 80BBD730  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80BBD734  7C 08 03 A6 */	mtlr r0
/* 80BBD738  38 21 01 50 */	addi r1, r1, 0x150
/* 80BBD73C  4E 80 00 20 */	blr 
