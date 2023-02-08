lbl_80C0D000:
/* 80C0D000  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C0D004  7C 08 02 A6 */	mflr r0
/* 80C0D008  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C0D00C  39 61 00 60 */	addi r11, r1, 0x60
/* 80C0D010  4B 75 51 C9 */	bl _savegpr_28
/* 80C0D014  7C 7E 1B 78 */	mr r30, r3
/* 80C0D018  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C0D01C  3B E4 FA 7C */	addi r31, r4, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0D020  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0D024  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0D028  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80C0D02C  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C0D030  2C 00 00 01 */	cmpwi r0, 1
/* 80C0D034  41 82 00 48 */	beq lbl_80C0D07C
/* 80C0D038  40 80 02 A8 */	bge lbl_80C0D2E0
/* 80C0D03C  2C 00 00 00 */	cmpwi r0, 0
/* 80C0D040  40 80 00 0C */	bge lbl_80C0D04C
/* 80C0D044  48 00 02 9C */	b lbl_80C0D2E0
/* 80C0D048  48 00 02 98 */	b lbl_80C0D2E0
lbl_80C0D04C:
/* 80C0D04C  38 80 00 00 */	li r4, 0
/* 80C0D050  38 BF 00 00 */	addi r5, r31, 0
/* 80C0D054  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0D058  4B FF 47 35 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0D05C  7F C3 F3 78 */	mr r3, r30
/* 80C0D060  38 80 00 0D */	li r4, 0xd
/* 80C0D064  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80C0D068  4B FF 47 45 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0D06C  7F C3 F3 78 */	mr r3, r30
/* 80C0D070  38 80 00 00 */	li r4, 0
/* 80C0D074  4B FF 5A 61 */	bl setLookMode__11daObj_GrA_cFi
/* 80C0D078  48 00 02 68 */	b lbl_80C0D2E0
lbl_80C0D07C:
/* 80C0D07C  4B FF 3D 89 */	bl getTagNo__11daObj_GrA_cFv
/* 80C0D080  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80C0D084  41 82 02 5C */	beq lbl_80C0D2E0
/* 80C0D088  38 7E 20 4C */	addi r3, r30, 0x204c
/* 80C0D08C  4B 54 07 AD */	bl getActor__18daBaseNpc_acMngr_cFv
/* 80C0D090  7C 60 00 34 */	cntlzw r0, r3
/* 80C0D094  54 1C D9 7E */	srwi r28, r0, 5
/* 80C0D098  88 7E 20 32 */	lbz r3, 0x2032(r30)
/* 80C0D09C  28 03 00 00 */	cmplwi r3, 0
/* 80C0D0A0  41 82 00 0C */	beq lbl_80C0D0AC
/* 80C0D0A4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80C0D0A8  41 82 00 C0 */	beq lbl_80C0D168
lbl_80C0D0AC:
/* 80C0D0AC  28 03 00 00 */	cmplwi r3, 0
/* 80C0D0B0  40 82 00 8C */	bne lbl_80C0D13C
/* 80C0D0B4  3C 60 80 C0 */	lis r3, s_sub__FPvPv@ha /* 0x80C036B4@ha */
/* 80C0D0B8  38 63 36 B4 */	addi r3, r3, s_sub__FPvPv@l /* 0x80C036B4@l */
/* 80C0D0BC  7F C4 F3 78 */	mr r4, r30
/* 80C0D0C0  4B 41 42 79 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80C0D0C4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C0D0C8  41 82 00 74 */	beq lbl_80C0D13C
/* 80C0D0CC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C0D0D0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C0D0D4  7C 00 07 34 */	extsh r0, r0
/* 80C0D0D8  2C 00 00 02 */	cmpwi r0, 2
/* 80C0D0DC  40 82 00 60 */	bne lbl_80C0D13C
/* 80C0D0E0  38 61 00 30 */	addi r3, r1, 0x30
/* 80C0D0E4  7F A4 EB 78 */	mr r4, r29
/* 80C0D0E8  4B FF FE 29 */	bl getGraPos__10daTagGra_cFv
/* 80C0D0EC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C0D0F0  D0 1E 20 34 */	stfs f0, 0x2034(r30)
/* 80C0D0F4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C0D0F8  D0 1E 20 38 */	stfs f0, 0x2038(r30)
/* 80C0D0FC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80C0D100  D0 1E 20 3C */	stfs f0, 0x203c(r30)
/* 80C0D104  C0 3F 02 34 */	lfs f1, 0x234(r31)
/* 80C0D108  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80C0D10C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C0D110  D0 1E 20 40 */	stfs f0, 0x2040(r30)
/* 80C0D114  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 80C0D118  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C0D11C  D0 1E 20 44 */	stfs f0, 0x2044(r30)
/* 80C0D120  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C0D124  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C0D128  B0 1E 20 48 */	sth r0, 0x2048(r30)
/* 80C0D12C  38 00 00 01 */	li r0, 1
/* 80C0D130  98 1E 20 32 */	stb r0, 0x2032(r30)
/* 80C0D134  7F A3 EB 78 */	mr r3, r29
/* 80C0D138  4B 40 CB 45 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80C0D13C:
/* 80C0D13C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80C0D140  41 82 01 A0 */	beq lbl_80C0D2E0
/* 80C0D144  3C 60 80 C1 */	lis r3, s_sub2__FPvPv@ha /* 0x80C0CF2C@ha */
/* 80C0D148  38 63 CF 2C */	addi r3, r3, s_sub2__FPvPv@l /* 0x80C0CF2C@l */
/* 80C0D14C  7F C4 F3 78 */	mr r4, r30
/* 80C0D150  4B 41 41 E9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80C0D154  7C 64 1B 79 */	or. r4, r3, r3
/* 80C0D158  41 82 01 88 */	beq lbl_80C0D2E0
/* 80C0D15C  38 7E 20 4C */	addi r3, r30, 0x204c
/* 80C0D160  4B 54 06 BD */	bl entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
/* 80C0D164  48 00 01 7C */	b lbl_80C0D2E0
lbl_80C0D168:
/* 80C0D168  38 61 00 24 */	addi r3, r1, 0x24
/* 80C0D16C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C0D170  38 BE 20 34 */	addi r5, r30, 0x2034
/* 80C0D174  4B 65 99 C1 */	bl __mi__4cXyzCFRC3Vec
/* 80C0D178  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80C0D17C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80C0D180  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C0D184  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C0D188  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C0D18C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80C0D190  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80C0D194  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0D198  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C0D19C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C0D1A0  38 61 00 0C */	addi r3, r1, 0xc
/* 80C0D1A4  4B 73 9F 95 */	bl PSVECSquareMag
/* 80C0D1A8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0D1AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0D1B0  40 81 00 58 */	ble lbl_80C0D208
/* 80C0D1B4  FC 00 08 34 */	frsqrte f0, f1
/* 80C0D1B8  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0D1BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0D1C0  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0D1C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0D1C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0D1CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0D1D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0D1D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0D1D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0D1DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0D1E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0D1E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0D1E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0D1EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0D1F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0D1F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0D1F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0D1FC  FC 21 00 32 */	fmul f1, f1, f0
/* 80C0D200  FC 20 08 18 */	frsp f1, f1
/* 80C0D204  48 00 00 88 */	b lbl_80C0D28C
lbl_80C0D208:
/* 80C0D208  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0D20C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0D210  40 80 00 10 */	bge lbl_80C0D220
/* 80C0D214  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0D218  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C0D21C  48 00 00 70 */	b lbl_80C0D28C
lbl_80C0D220:
/* 80C0D220  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C0D224  80 81 00 08 */	lwz r4, 8(r1)
/* 80C0D228  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0D22C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0D230  7C 03 00 00 */	cmpw r3, r0
/* 80C0D234  41 82 00 14 */	beq lbl_80C0D248
/* 80C0D238  40 80 00 40 */	bge lbl_80C0D278
/* 80C0D23C  2C 03 00 00 */	cmpwi r3, 0
/* 80C0D240  41 82 00 20 */	beq lbl_80C0D260
/* 80C0D244  48 00 00 34 */	b lbl_80C0D278
lbl_80C0D248:
/* 80C0D248  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0D24C  41 82 00 0C */	beq lbl_80C0D258
/* 80C0D250  38 00 00 01 */	li r0, 1
/* 80C0D254  48 00 00 28 */	b lbl_80C0D27C
lbl_80C0D258:
/* 80C0D258  38 00 00 02 */	li r0, 2
/* 80C0D25C  48 00 00 20 */	b lbl_80C0D27C
lbl_80C0D260:
/* 80C0D260  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0D264  41 82 00 0C */	beq lbl_80C0D270
/* 80C0D268  38 00 00 05 */	li r0, 5
/* 80C0D26C  48 00 00 10 */	b lbl_80C0D27C
lbl_80C0D270:
/* 80C0D270  38 00 00 03 */	li r0, 3
/* 80C0D274  48 00 00 08 */	b lbl_80C0D27C
lbl_80C0D278:
/* 80C0D278  38 00 00 04 */	li r0, 4
lbl_80C0D27C:
/* 80C0D27C  2C 00 00 01 */	cmpwi r0, 1
/* 80C0D280  40 82 00 0C */	bne lbl_80C0D28C
/* 80C0D284  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C0D288  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C0D28C:
/* 80C0D28C  C0 1E 20 40 */	lfs f0, 0x2040(r30)
/* 80C0D290  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0D294  40 80 00 4C */	bge lbl_80C0D2E0
/* 80C0D298  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80C0D29C  C0 1F 02 B8 */	lfs f0, 0x2b8(r31)
/* 80C0D2A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0D2A4  40 81 00 3C */	ble lbl_80C0D2E0
/* 80C0D2A8  C0 1E 20 44 */	lfs f0, 0x2044(r30)
/* 80C0D2AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0D2B0  40 80 00 30 */	bge lbl_80C0D2E0
/* 80C0D2B4  3C 60 80 C1 */	lis r3, lit_9541@ha /* 0x80C10380@ha */
/* 80C0D2B8  38 83 03 80 */	addi r4, r3, lit_9541@l /* 0x80C10380@l */
/* 80C0D2BC  80 64 00 00 */	lwz r3, 0(r4)
/* 80C0D2C0  80 04 00 04 */	lwz r0, 4(r4)
/* 80C0D2C4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C0D2C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C0D2CC  80 04 00 08 */	lwz r0, 8(r4)
/* 80C0D2D0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C0D2D4  7F C3 F3 78 */	mr r3, r30
/* 80C0D2D8  38 81 00 18 */	addi r4, r1, 0x18
/* 80C0D2DC  4B FF 46 19 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
lbl_80C0D2E0:
/* 80C0D2E0  38 60 00 01 */	li r3, 1
/* 80C0D2E4  39 61 00 60 */	addi r11, r1, 0x60
/* 80C0D2E8  4B 75 4F 3D */	bl _restgpr_28
/* 80C0D2EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C0D2F0  7C 08 03 A6 */	mtlr r0
/* 80C0D2F4  38 21 00 60 */	addi r1, r1, 0x60
/* 80C0D2F8  4E 80 00 20 */	blr 
