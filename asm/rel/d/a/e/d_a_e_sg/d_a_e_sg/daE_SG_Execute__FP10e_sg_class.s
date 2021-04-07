lbl_8078CF34:
/* 8078CF34  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8078CF38  7C 08 02 A6 */	mflr r0
/* 8078CF3C  90 01 01 44 */	stw r0, 0x144(r1)
/* 8078CF40  39 61 01 40 */	addi r11, r1, 0x140
/* 8078CF44  4B BD 52 81 */	bl _savegpr_23
/* 8078CF48  7C 7F 1B 78 */	mr r31, r3
/* 8078CF4C  3C 60 80 79 */	lis r3, lit_1109@ha /* 0x8078E0A0@ha */
/* 8078CF50  3B A3 E0 A0 */	addi r29, r3, lit_1109@l /* 0x8078E0A0@l */
/* 8078CF54  3C 60 80 79 */	lis r3, lit_3767@ha /* 0x8078DDA4@ha */
/* 8078CF58  3B C3 DD A4 */	addi r30, r3, lit_3767@l /* 0x8078DDA4@l */
/* 8078CF5C  88 1F 0A 92 */	lbz r0, 0xa92(r31)
/* 8078CF60  28 00 00 00 */	cmplwi r0, 0
/* 8078CF64  41 82 00 0C */	beq lbl_8078CF70
/* 8078CF68  38 60 00 01 */	li r3, 1
/* 8078CF6C  48 00 06 70 */	b lbl_8078D5DC
lbl_8078CF70:
/* 8078CF70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078CF74  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078CF78  83 19 5D AC */	lwz r24, 0x5dac(r25)
/* 8078CF7C  A8 7F 06 6A */	lha r3, 0x66a(r31)
/* 8078CF80  38 03 00 01 */	addi r0, r3, 1
/* 8078CF84  B0 1F 06 6A */	sth r0, 0x66a(r31)
/* 8078CF88  88 7F 06 68 */	lbz r3, 0x668(r31)
/* 8078CF8C  28 03 00 00 */	cmplwi r3, 0
/* 8078CF90  41 82 00 5C */	beq lbl_8078CFEC
/* 8078CF94  38 03 FF FF */	addi r0, r3, -1
/* 8078CF98  98 1F 06 68 */	stb r0, 0x668(r31)
/* 8078CF9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8078CFA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078CFA4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8078CFA8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8078CFAC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8078CFB0  4B BB 99 39 */	bl PSMTXTrans
/* 8078CFB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8078CFB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078CFBC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8078CFC0  A8 1F 06 A0 */	lha r0, 0x6a0(r31)
/* 8078CFC4  7C 04 02 14 */	add r0, r4, r0
/* 8078CFC8  7C 04 07 34 */	extsh r4, r0
/* 8078CFCC  4B 87 F4 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 8078CFD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8078CFD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078CFD8  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8078CFDC  38 84 00 24 */	addi r4, r4, 0x24
/* 8078CFE0  4B BB 94 D1 */	bl PSMTXCopy
/* 8078CFE4  38 60 00 01 */	li r3, 1
/* 8078CFE8  48 00 05 F4 */	b lbl_8078D5DC
lbl_8078CFEC:
/* 8078CFEC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8078CFF0  4B 8E AC 79 */	bl __ct__11dBgS_LinChkFv
/* 8078CFF4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8078CFF8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8078CFFC  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 8078D000  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8078D004  EC 01 00 2A */	fadds f0, f1, f0
/* 8078D008  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8078D00C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8078D010  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8078D014  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8078D018  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8078D01C  38 A1 00 40 */	addi r5, r1, 0x40
/* 8078D020  7F E6 FB 78 */	mr r6, r31
/* 8078D024  4B 8E AD 41 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8078D028  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078D02C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078D030  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 8078D034  7F 43 D3 78 */	mr r3, r26
/* 8078D038  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8078D03C  4B 8E 73 79 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8078D040  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8078D044  41 82 00 14 */	beq lbl_8078D058
/* 8078D048  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 8078D04C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8078D050  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078D054  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_8078D058:
/* 8078D058  38 61 00 4C */	addi r3, r1, 0x4c
/* 8078D05C  4B 8E A7 55 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 8078D060  38 61 00 4C */	addi r3, r1, 0x4c
/* 8078D064  38 81 00 40 */	addi r4, r1, 0x40
/* 8078D068  4B AD AC C1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8078D06C  7F 43 D3 78 */	mr r3, r26
/* 8078D070  38 81 00 4C */	addi r4, r1, 0x4c
/* 8078D074  4B 8E 74 2D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8078D078  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8078D07C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8078D080  41 82 00 30 */	beq lbl_8078D0B0
/* 8078D084  C0 1F 06 B8 */	lfs f0, 0x6b8(r31)
/* 8078D088  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8078D08C  41 82 00 24 */	beq lbl_8078D0B0
/* 8078D090  D0 3F 06 B8 */	stfs f1, 0x6b8(r31)
/* 8078D094  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8078D098  4B AD A8 F5 */	bl cM_rndFX__Ff
/* 8078D09C  C0 5F 06 B8 */	lfs f2, 0x6b8(r31)
/* 8078D0A0  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 8078D0A4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8078D0A8  EC 00 08 2A */	fadds f0, f0, f1
/* 8078D0AC  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
lbl_8078D0B0:
/* 8078D0B0  7F E3 FB 78 */	mr r3, r31
/* 8078D0B4  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 8078D0B8  4B 88 D6 59 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8078D0BC  B0 7F 06 88 */	sth r3, 0x688(r31)
/* 8078D0C0  7F E3 FB 78 */	mr r3, r31
/* 8078D0C4  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 8078D0C8  4B 88 D7 19 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8078D0CC  D0 3F 06 8C */	stfs f1, 0x68c(r31)
/* 8078D0D0  38 61 00 28 */	addi r3, r1, 0x28
/* 8078D0D4  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 8078D0D8  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 8078D0DC  4B AD 9A 59 */	bl __mi__4cXyzCFRC3Vec
/* 8078D0E0  38 61 00 28 */	addi r3, r1, 0x28
/* 8078D0E4  4B BB A0 55 */	bl PSVECSquareMag
/* 8078D0E8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8078D0EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078D0F0  40 81 00 58 */	ble lbl_8078D148
/* 8078D0F4  FC 00 08 34 */	frsqrte f0, f1
/* 8078D0F8  C8 9E 00 28 */	lfd f4, 0x28(r30)
/* 8078D0FC  FC 44 00 32 */	fmul f2, f4, f0
/* 8078D100  C8 7E 00 30 */	lfd f3, 0x30(r30)
/* 8078D104  FC 00 00 32 */	fmul f0, f0, f0
/* 8078D108  FC 01 00 32 */	fmul f0, f1, f0
/* 8078D10C  FC 03 00 28 */	fsub f0, f3, f0
/* 8078D110  FC 02 00 32 */	fmul f0, f2, f0
/* 8078D114  FC 44 00 32 */	fmul f2, f4, f0
/* 8078D118  FC 00 00 32 */	fmul f0, f0, f0
/* 8078D11C  FC 01 00 32 */	fmul f0, f1, f0
/* 8078D120  FC 03 00 28 */	fsub f0, f3, f0
/* 8078D124  FC 02 00 32 */	fmul f0, f2, f0
/* 8078D128  FC 44 00 32 */	fmul f2, f4, f0
/* 8078D12C  FC 00 00 32 */	fmul f0, f0, f0
/* 8078D130  FC 01 00 32 */	fmul f0, f1, f0
/* 8078D134  FC 03 00 28 */	fsub f0, f3, f0
/* 8078D138  FC 02 00 32 */	fmul f0, f2, f0
/* 8078D13C  FC 21 00 32 */	fmul f1, f1, f0
/* 8078D140  FC 20 08 18 */	frsp f1, f1
/* 8078D144  48 00 00 88 */	b lbl_8078D1CC
lbl_8078D148:
/* 8078D148  C8 1E 00 38 */	lfd f0, 0x38(r30)
/* 8078D14C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078D150  40 80 00 10 */	bge lbl_8078D160
/* 8078D154  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8078D158  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8078D15C  48 00 00 70 */	b lbl_8078D1CC
lbl_8078D160:
/* 8078D160  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8078D164  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8078D168  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8078D16C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8078D170  7C 03 00 00 */	cmpw r3, r0
/* 8078D174  41 82 00 14 */	beq lbl_8078D188
/* 8078D178  40 80 00 40 */	bge lbl_8078D1B8
/* 8078D17C  2C 03 00 00 */	cmpwi r3, 0
/* 8078D180  41 82 00 20 */	beq lbl_8078D1A0
/* 8078D184  48 00 00 34 */	b lbl_8078D1B8
lbl_8078D188:
/* 8078D188  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078D18C  41 82 00 0C */	beq lbl_8078D198
/* 8078D190  38 00 00 01 */	li r0, 1
/* 8078D194  48 00 00 28 */	b lbl_8078D1BC
lbl_8078D198:
/* 8078D198  38 00 00 02 */	li r0, 2
/* 8078D19C  48 00 00 20 */	b lbl_8078D1BC
lbl_8078D1A0:
/* 8078D1A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078D1A4  41 82 00 0C */	beq lbl_8078D1B0
/* 8078D1A8  38 00 00 05 */	li r0, 5
/* 8078D1AC  48 00 00 10 */	b lbl_8078D1BC
lbl_8078D1B0:
/* 8078D1B0  38 00 00 03 */	li r0, 3
/* 8078D1B4  48 00 00 08 */	b lbl_8078D1BC
lbl_8078D1B8:
/* 8078D1B8  38 00 00 04 */	li r0, 4
lbl_8078D1BC:
/* 8078D1BC  2C 00 00 01 */	cmpwi r0, 1
/* 8078D1C0  40 82 00 0C */	bne lbl_8078D1CC
/* 8078D1C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8078D1C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8078D1CC:
/* 8078D1CC  D0 3F 06 90 */	stfs f1, 0x690(r31)
/* 8078D1D0  38 60 00 00 */	li r3, 0
/* 8078D1D4  38 00 00 03 */	li r0, 3
/* 8078D1D8  7C 09 03 A6 */	mtctr r0
lbl_8078D1DC:
/* 8078D1DC  38 A3 06 60 */	addi r5, r3, 0x660
/* 8078D1E0  7C 9F 2A AE */	lhax r4, r31, r5
/* 8078D1E4  2C 04 00 00 */	cmpwi r4, 0
/* 8078D1E8  41 82 00 0C */	beq lbl_8078D1F4
/* 8078D1EC  38 04 FF FF */	addi r0, r4, -1
/* 8078D1F0  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_8078D1F4:
/* 8078D1F4  38 63 00 02 */	addi r3, r3, 2
/* 8078D1F8  42 00 FF E4 */	bdnz lbl_8078D1DC
/* 8078D1FC  A8 7F 06 66 */	lha r3, 0x666(r31)
/* 8078D200  2C 03 00 00 */	cmpwi r3, 0
/* 8078D204  41 82 00 0C */	beq lbl_8078D210
/* 8078D208  38 03 FF FF */	addi r0, r3, -1
/* 8078D20C  B0 1F 06 66 */	sth r0, 0x666(r31)
lbl_8078D210:
/* 8078D210  7F E3 FB 78 */	mr r3, r31
/* 8078D214  4B FF F8 09 */	bl damage_check__FP10e_sg_class
/* 8078D218  7F E3 FB 78 */	mr r3, r31
/* 8078D21C  4B FF F8 F9 */	bl action__FP10e_sg_class
/* 8078D220  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 8078D224  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8078D228  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078D22C  40 80 00 08 */	bge lbl_8078D234
/* 8078D230  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_8078D234:
/* 8078D234  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8078D238  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8078D23C  38 A0 00 02 */	li r5, 2
/* 8078D240  38 C0 10 00 */	li r6, 0x1000
/* 8078D244  4B AE 33 C5 */	bl cLib_addCalcAngleS2__FPssss
/* 8078D248  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8078D24C  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 8078D250  38 A0 00 02 */	li r5, 2
/* 8078D254  38 C0 10 00 */	li r6, 0x1000
/* 8078D258  4B AE 33 B1 */	bl cLib_addCalcAngleS2__FPssss
/* 8078D25C  38 80 00 00 */	li r4, 0
/* 8078D260  A8 7F 06 C6 */	lha r3, 0x6c6(r31)
/* 8078D264  2C 03 00 00 */	cmpwi r3, 0
/* 8078D268  41 82 00 10 */	beq lbl_8078D278
/* 8078D26C  38 03 FF FF */	addi r0, r3, -1
/* 8078D270  B0 1F 06 C6 */	sth r0, 0x6c6(r31)
/* 8078D274  38 80 40 00 */	li r4, 0x4000
lbl_8078D278:
/* 8078D278  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 8078D27C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 8078D280  7C 00 22 14 */	add r0, r0, r4
/* 8078D284  7C 04 07 34 */	extsh r4, r0
/* 8078D288  38 A0 00 02 */	li r5, 2
/* 8078D28C  38 C0 10 00 */	li r6, 0x1000
/* 8078D290  4B AE 33 79 */	bl cLib_addCalcAngleS2__FPssss
/* 8078D294  38 7F 06 C0 */	addi r3, r31, 0x6c0
/* 8078D298  A8 9F 06 C2 */	lha r4, 0x6c2(r31)
/* 8078D29C  38 A0 00 02 */	li r5, 2
/* 8078D2A0  38 C0 18 00 */	li r6, 0x1800
/* 8078D2A4  4B AE 33 65 */	bl cLib_addCalcAngleS2__FPssss
/* 8078D2A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8078D2AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078D2B0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8078D2B4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8078D2B8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8078D2BC  4B BB 96 2D */	bl PSMTXTrans
/* 8078D2C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8078D2C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078D2C8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8078D2CC  A8 1F 06 A0 */	lha r0, 0x6a0(r31)
/* 8078D2D0  7C 04 02 14 */	add r0, r4, r0
/* 8078D2D4  7C 04 07 34 */	extsh r4, r0
/* 8078D2D8  4B 87 F1 5D */	bl mDoMtx_YrotM__FPA4_fs
/* 8078D2DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8078D2E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078D2E4  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8078D2E8  4B 87 F0 B5 */	bl mDoMtx_XrotM__FPA4_fs
/* 8078D2EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8078D2F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078D2F4  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 8078D2F8  4B 87 F1 D5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8078D2FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8078D300  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078D304  A8 9F 06 C0 */	lha r4, 0x6c0(r31)
/* 8078D308  4B 87 F1 2D */	bl mDoMtx_YrotM__FPA4_fs
/* 8078D30C  3B 9D 00 4C */	addi r28, r29, 0x4c
/* 8078D310  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8078D314  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8078D318  EC 21 00 32 */	fmuls f1, f1, f0
/* 8078D31C  FC 40 08 90 */	fmr f2, f1
/* 8078D320  FC 60 08 90 */	fmr f3, f1
/* 8078D324  4B 87 FB 15 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8078D328  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8078D32C  FC 40 08 90 */	fmr f2, f1
/* 8078D330  C0 7E 00 EC */	lfs f3, 0xec(r30)
/* 8078D334  4B 87 FA 69 */	bl transM__14mDoMtx_stack_cFfff
/* 8078D338  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8078D33C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078D340  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8078D344  38 84 00 24 */	addi r4, r4, 0x24
/* 8078D348  4B BB 91 69 */	bl PSMTXCopy
/* 8078D34C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8078D350  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8078D354  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8078D358  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8078D35C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8078D360  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8078D364  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 8078D368  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8078D36C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8078D370  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8078D374  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8078D378  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8078D37C  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8078D380  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8078D384  EC 01 00 2A */	fadds f0, f1, f0
/* 8078D388  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8078D38C  C0 3F 05 38 */	lfs f1, 0x538(r31)
/* 8078D390  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8078D394  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8078D398  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8078D39C  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8078D3A0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8078D3A4  A8 1F 06 66 */	lha r0, 0x666(r31)
/* 8078D3A8  2C 00 00 00 */	cmpwi r0, 0
/* 8078D3AC  41 82 00 10 */	beq lbl_8078D3BC
/* 8078D3B0  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8078D3B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078D3B8  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8078D3BC:
/* 8078D3BC  38 7F 0A 58 */	addi r3, r31, 0xa58
/* 8078D3C0  38 81 00 40 */	addi r4, r1, 0x40
/* 8078D3C4  4B AE 22 85 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8078D3C8  38 7F 0A 58 */	addi r3, r31, 0xa58
/* 8078D3CC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8078D3D0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8078D3D4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8078D3D8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8078D3DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8078D3E0  4B AE 23 29 */	bl SetR__8cM3dGSphFf
/* 8078D3E4  88 1F 0A 90 */	lbz r0, 0xa90(r31)
/* 8078D3E8  7C 00 07 75 */	extsb. r0, r0
/* 8078D3EC  41 82 00 1C */	beq lbl_8078D408
/* 8078D3F0  80 1F 09 34 */	lwz r0, 0x934(r31)
/* 8078D3F4  60 00 00 01 */	ori r0, r0, 1
/* 8078D3F8  90 1F 09 34 */	stw r0, 0x934(r31)
/* 8078D3FC  38 00 00 00 */	li r0, 0
/* 8078D400  98 1F 0A 90 */	stb r0, 0xa90(r31)
/* 8078D404  48 00 00 10 */	b lbl_8078D414
lbl_8078D408:
/* 8078D408  80 1F 09 34 */	lwz r0, 0x934(r31)
/* 8078D40C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8078D410  90 1F 09 34 */	stw r0, 0x934(r31)
lbl_8078D414:
/* 8078D414  88 1F 0A 91 */	lbz r0, 0xa91(r31)
/* 8078D418  7C 00 07 75 */	extsb. r0, r0
/* 8078D41C  41 82 00 1C */	beq lbl_8078D438
/* 8078D420  80 1F 09 60 */	lwz r0, 0x960(r31)
/* 8078D424  60 00 00 01 */	ori r0, r0, 1
/* 8078D428  90 1F 09 60 */	stw r0, 0x960(r31)
/* 8078D42C  38 00 00 00 */	li r0, 0
/* 8078D430  98 1F 0A 91 */	stb r0, 0xa91(r31)
/* 8078D434  48 00 00 10 */	b lbl_8078D444
lbl_8078D438:
/* 8078D438  80 1F 09 60 */	lwz r0, 0x960(r31)
/* 8078D43C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8078D440  90 1F 09 60 */	stw r0, 0x960(r31)
lbl_8078D444:
/* 8078D444  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078D448  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078D44C  38 63 23 3C */	addi r3, r3, 0x233c
/* 8078D450  38 9F 09 34 */	addi r4, r31, 0x934
/* 8078D454  4B AD 77 55 */	bl Set__4cCcSFP8cCcD_Obj
/* 8078D458  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8078D45C  7C 03 07 74 */	extsb r3, r0
/* 8078D460  4B 89 FC 0D */	bl dComIfGp_getReverb__Fi
/* 8078D464  7C 65 1B 78 */	mr r5, r3
/* 8078D468  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8078D46C  38 80 00 00 */	li r4, 0
/* 8078D470  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8078D474  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8078D478  7D 89 03 A6 */	mtctr r12
/* 8078D47C  4E 80 04 21 */	bctrl 
/* 8078D480  88 1F 0A 93 */	lbz r0, 0xa93(r31)
/* 8078D484  7C 00 07 75 */	extsb. r0, r0
/* 8078D488  41 82 01 38 */	beq lbl_8078D5C0
/* 8078D48C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8078D490  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8078D494  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8078D498  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8078D49C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8078D4A0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8078D4A4  C0 1F 06 B8 */	lfs f0, 0x6b8(r31)
/* 8078D4A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8078D4AC  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8078D4B0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8078D4B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8078D4B8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8078D4BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8078D4C0  88 1D 01 30 */	lbz r0, 0x130(r29)
/* 8078D4C4  7C 00 07 75 */	extsb. r0, r0
/* 8078D4C8  40 82 00 2C */	bne lbl_8078D4F4
/* 8078D4CC  D0 1D 01 34 */	stfs f0, 0x134(r29)
/* 8078D4D0  38 7D 01 34 */	addi r3, r29, 0x134
/* 8078D4D4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8078D4D8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8078D4DC  3C 80 80 79 */	lis r4, __dt__4cXyzFv@ha /* 0x8078A4DC@ha */
/* 8078D4E0  38 84 A4 DC */	addi r4, r4, __dt__4cXyzFv@l /* 0x8078A4DC@l */
/* 8078D4E4  38 BD 01 24 */	addi r5, r29, 0x124
/* 8078D4E8  4B FF CC D1 */	bl __register_global_object
/* 8078D4EC  38 00 00 01 */	li r0, 1
/* 8078D4F0  98 1D 01 30 */	stb r0, 0x130(r29)
lbl_8078D4F4:
/* 8078D4F4  3A E0 00 00 */	li r23, 0
/* 8078D4F8  3B 80 00 00 */	li r28, 0
/* 8078D4FC  3B 60 00 00 */	li r27, 0
/* 8078D500  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078D504  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078D508  3C 60 80 79 */	lis r3, w_eff_id@ha /* 0x8078DF9C@ha */
/* 8078D50C  3B 43 DF 9C */	addi r26, r3, w_eff_id@l /* 0x8078DF9C@l */
lbl_8078D510:
/* 8078D510  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8078D514  38 00 00 FF */	li r0, 0xff
/* 8078D518  90 01 00 08 */	stw r0, 8(r1)
/* 8078D51C  38 80 00 00 */	li r4, 0
/* 8078D520  90 81 00 0C */	stw r4, 0xc(r1)
/* 8078D524  38 00 FF FF */	li r0, -1
/* 8078D528  90 01 00 10 */	stw r0, 0x10(r1)
/* 8078D52C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8078D530  90 81 00 18 */	stw r4, 0x18(r1)
/* 8078D534  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8078D538  3B 1B 0A 94 */	addi r24, r27, 0xa94
/* 8078D53C  7C 9F C0 2E */	lwzx r4, r31, r24
/* 8078D540  38 A0 00 00 */	li r5, 0
/* 8078D544  7C DA E2 2E */	lhzx r6, r26, r28
/* 8078D548  38 E1 00 34 */	addi r7, r1, 0x34
/* 8078D54C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8078D550  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 8078D554  39 5D 01 34 */	addi r10, r29, 0x134
/* 8078D558  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8078D55C  4B 8B FF 71 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8078D560  7C 7F C1 2E */	stwx r3, r31, r24
/* 8078D564  3A F7 00 01 */	addi r23, r23, 1
/* 8078D568  2C 17 00 04 */	cmpwi r23, 4
/* 8078D56C  3B 9C 00 02 */	addi r28, r28, 2
/* 8078D570  3B 7B 00 04 */	addi r27, r27, 4
/* 8078D574  41 80 FF 9C */	blt lbl_8078D510
/* 8078D578  38 7F 0A A4 */	addi r3, r31, 0xaa4
/* 8078D57C  38 81 00 34 */	addi r4, r1, 0x34
/* 8078D580  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8078D584  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8078D588  4B 88 FB 85 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
/* 8078D58C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 8078D590  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 8078D594  90 01 00 24 */	stw r0, 0x24(r1)
/* 8078D598  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8078D59C  38 81 00 24 */	addi r4, r1, 0x24
/* 8078D5A0  38 A0 00 00 */	li r5, 0
/* 8078D5A4  38 C0 FF FF */	li r6, -1
/* 8078D5A8  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8078D5AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8078D5B0  7D 89 03 A6 */	mtctr r12
/* 8078D5B4  4E 80 04 21 */	bctrl 
/* 8078D5B8  38 00 00 00 */	li r0, 0
/* 8078D5BC  98 1F 0A 93 */	stb r0, 0xa93(r31)
lbl_8078D5C0:
/* 8078D5C0  38 61 00 4C */	addi r3, r1, 0x4c
/* 8078D5C4  38 80 FF FF */	li r4, -1
/* 8078D5C8  4B 8E A2 81 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 8078D5CC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8078D5D0  38 80 FF FF */	li r4, -1
/* 8078D5D4  4B 8E A7 09 */	bl __dt__11dBgS_LinChkFv
/* 8078D5D8  38 60 00 01 */	li r3, 1
lbl_8078D5DC:
/* 8078D5DC  39 61 01 40 */	addi r11, r1, 0x140
/* 8078D5E0  4B BD 4C 31 */	bl _restgpr_23
/* 8078D5E4  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8078D5E8  7C 08 03 A6 */	mtlr r0
/* 8078D5EC  38 21 01 40 */	addi r1, r1, 0x140
/* 8078D5F0  4E 80 00 20 */	blr 
