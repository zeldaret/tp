lbl_8071D084:
/* 8071D084  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8071D088  7C 08 02 A6 */	mflr r0
/* 8071D08C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8071D090  39 61 00 60 */	addi r11, r1, 0x60
/* 8071D094  4B C4 51 44 */	b _savegpr_28
/* 8071D098  7C 7D 1B 78 */	mr r29, r3
/* 8071D09C  3C 60 80 72 */	lis r3, lit_3776@ha
/* 8071D0A0  3B E3 F6 40 */	addi r31, r3, lit_3776@l
/* 8071D0A4  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 8071D0A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8071D0AC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8071D0B0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8071D0B4  38 81 00 10 */	addi r4, r1, 0x10
/* 8071D0B8  4B 8F C7 40 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8071D0BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8071D0C0  3B 80 00 01 */	li r28, 1
/* 8071D0C4  40 82 00 0C */	bne lbl_8071D0D0
/* 8071D0C8  38 60 00 01 */	li r3, 1
/* 8071D0CC  48 00 05 B0 */	b lbl_8071D67C
lbl_8071D0D0:
/* 8071D0D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071D0D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071D0D8  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8071D0DC  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 8071D0E0  2C 00 00 01 */	cmpwi r0, 1
/* 8071D0E4  41 82 01 04 */	beq lbl_8071D1E8
/* 8071D0E8  40 80 00 10 */	bge lbl_8071D0F8
/* 8071D0EC  2C 00 00 00 */	cmpwi r0, 0
/* 8071D0F0  40 80 00 14 */	bge lbl_8071D104
/* 8071D0F4  48 00 04 C4 */	b lbl_8071D5B8
lbl_8071D0F8:
/* 8071D0F8  2C 00 00 04 */	cmpwi r0, 4
/* 8071D0FC  40 80 04 BC */	bge lbl_8071D5B8
/* 8071D100  48 00 02 1C */	b lbl_8071D31C
lbl_8071D104:
/* 8071D104  80 7E 07 0C */	lwz r3, 0x70c(r30)
/* 8071D108  28 03 00 00 */	cmplwi r3, 0
/* 8071D10C  41 82 00 30 */	beq lbl_8071D13C
/* 8071D110  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8071D114  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
/* 8071D118  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8071D11C  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8071D120  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8071D124  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 8071D128  C0 3D 05 E4 */	lfs f1, 0x5e4(r29)
/* 8071D12C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8071D130  EC 01 00 2A */	fadds f0, f1, f0
/* 8071D134  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8071D138  48 00 00 2C */	b lbl_8071D164
lbl_8071D13C:
/* 8071D13C  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 8071D140  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
/* 8071D144  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 8071D148  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8071D14C  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 8071D150  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 8071D154  C0 3D 05 E4 */	lfs f1, 0x5e4(r29)
/* 8071D158  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8071D15C  EC 01 00 2A */	fadds f0, f1, f0
/* 8071D160  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
lbl_8071D164:
/* 8071D164  38 00 00 01 */	li r0, 1
/* 8071D168  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 8071D16C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8071D170  38 9D 05 E0 */	addi r4, r29, 0x5e0
/* 8071D174  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8071D178  4B B4 99 BC */	b __mi__4cXyzCFRC3Vec
/* 8071D17C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8071D180  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8071D184  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8071D188  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8071D18C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8071D190  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8071D194  4B B4 A4 E0 */	b cM_atan2s__Fff
/* 8071D198  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8071D19C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8071D1A0  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 8071D1A4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8071D1A8  EC 20 00 32 */	fmuls f1, f0, f0
/* 8071D1AC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8071D1B0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8071D1B4  EC 41 00 2A */	fadds f2, f1, f0
/* 8071D1B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8071D1BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8071D1C0  40 81 00 0C */	ble lbl_8071D1CC
/* 8071D1C4  FC 00 10 34 */	frsqrte f0, f2
/* 8071D1C8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8071D1CC:
/* 8071D1CC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8071D1D0  4B B4 A4 A4 */	b cM_atan2s__Fff
/* 8071D1D4  7C 03 00 D0 */	neg r0, r3
/* 8071D1D8  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8071D1DC  38 00 04 00 */	li r0, 0x400
/* 8071D1E0  B0 1D 05 EE */	sth r0, 0x5ee(r29)
/* 8071D1E4  48 00 03 D4 */	b lbl_8071D5B8
lbl_8071D1E8:
/* 8071D1E8  38 61 00 20 */	addi r3, r1, 0x20
/* 8071D1EC  38 9D 05 E0 */	addi r4, r29, 0x5e0
/* 8071D1F0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8071D1F4  4B B4 99 40 */	b __mi__4cXyzCFRC3Vec
/* 8071D1F8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8071D1FC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8071D200  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8071D204  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8071D208  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8071D20C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8071D210  38 61 00 38 */	addi r3, r1, 0x38
/* 8071D214  4B C2 9F 24 */	b PSVECSquareMag
/* 8071D218  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8071D21C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071D220  40 81 00 58 */	ble lbl_8071D278
/* 8071D224  FC 00 08 34 */	frsqrte f0, f1
/* 8071D228  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8071D22C  FC 44 00 32 */	fmul f2, f4, f0
/* 8071D230  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8071D234  FC 00 00 32 */	fmul f0, f0, f0
/* 8071D238  FC 01 00 32 */	fmul f0, f1, f0
/* 8071D23C  FC 03 00 28 */	fsub f0, f3, f0
/* 8071D240  FC 02 00 32 */	fmul f0, f2, f0
/* 8071D244  FC 44 00 32 */	fmul f2, f4, f0
/* 8071D248  FC 00 00 32 */	fmul f0, f0, f0
/* 8071D24C  FC 01 00 32 */	fmul f0, f1, f0
/* 8071D250  FC 03 00 28 */	fsub f0, f3, f0
/* 8071D254  FC 02 00 32 */	fmul f0, f2, f0
/* 8071D258  FC 44 00 32 */	fmul f2, f4, f0
/* 8071D25C  FC 00 00 32 */	fmul f0, f0, f0
/* 8071D260  FC 01 00 32 */	fmul f0, f1, f0
/* 8071D264  FC 03 00 28 */	fsub f0, f3, f0
/* 8071D268  FC 02 00 32 */	fmul f0, f2, f0
/* 8071D26C  FC 21 00 32 */	fmul f1, f1, f0
/* 8071D270  FC 20 08 18 */	frsp f1, f1
/* 8071D274  48 00 00 88 */	b lbl_8071D2FC
lbl_8071D278:
/* 8071D278  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8071D27C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071D280  40 80 00 10 */	bge lbl_8071D290
/* 8071D284  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8071D288  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8071D28C  48 00 00 70 */	b lbl_8071D2FC
lbl_8071D290:
/* 8071D290  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8071D294  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8071D298  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8071D29C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8071D2A0  7C 03 00 00 */	cmpw r3, r0
/* 8071D2A4  41 82 00 14 */	beq lbl_8071D2B8
/* 8071D2A8  40 80 00 40 */	bge lbl_8071D2E8
/* 8071D2AC  2C 03 00 00 */	cmpwi r3, 0
/* 8071D2B0  41 82 00 20 */	beq lbl_8071D2D0
/* 8071D2B4  48 00 00 34 */	b lbl_8071D2E8
lbl_8071D2B8:
/* 8071D2B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071D2BC  41 82 00 0C */	beq lbl_8071D2C8
/* 8071D2C0  38 00 00 01 */	li r0, 1
/* 8071D2C4  48 00 00 28 */	b lbl_8071D2EC
lbl_8071D2C8:
/* 8071D2C8  38 00 00 02 */	li r0, 2
/* 8071D2CC  48 00 00 20 */	b lbl_8071D2EC
lbl_8071D2D0:
/* 8071D2D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071D2D4  41 82 00 0C */	beq lbl_8071D2E0
/* 8071D2D8  38 00 00 05 */	li r0, 5
/* 8071D2DC  48 00 00 10 */	b lbl_8071D2EC
lbl_8071D2E0:
/* 8071D2E0  38 00 00 03 */	li r0, 3
/* 8071D2E4  48 00 00 08 */	b lbl_8071D2EC
lbl_8071D2E8:
/* 8071D2E8  38 00 00 04 */	li r0, 4
lbl_8071D2EC:
/* 8071D2EC  2C 00 00 01 */	cmpwi r0, 1
/* 8071D2F0  40 82 00 0C */	bne lbl_8071D2FC
/* 8071D2F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8071D2F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8071D2FC:
/* 8071D2FC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8071D300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071D304  40 80 02 B4 */	bge lbl_8071D5B8
/* 8071D308  38 00 00 02 */	li r0, 2
/* 8071D30C  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 8071D310  38 00 00 1E */	li r0, 0x1e
/* 8071D314  B0 1D 05 F4 */	sth r0, 0x5f4(r29)
/* 8071D318  48 00 02 A0 */	b lbl_8071D5B8
lbl_8071D31C:
/* 8071D31C  A8 1D 05 F4 */	lha r0, 0x5f4(r29)
/* 8071D320  2C 00 00 00 */	cmpwi r0, 0
/* 8071D324  40 82 00 08 */	bne lbl_8071D32C
/* 8071D328  3B 80 00 00 */	li r28, 0
lbl_8071D32C:
/* 8071D32C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8071D330  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
/* 8071D334  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8071D338  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8071D33C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8071D340  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 8071D344  C0 3D 05 E4 */	lfs f1, 0x5e4(r29)
/* 8071D348  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8071D34C  EC 01 00 2A */	fadds f0, f1, f0
/* 8071D350  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8071D354  38 61 00 14 */	addi r3, r1, 0x14
/* 8071D358  38 9D 05 E0 */	addi r4, r29, 0x5e0
/* 8071D35C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8071D360  4B B4 97 D4 */	b __mi__4cXyzCFRC3Vec
/* 8071D364  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8071D368  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8071D36C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8071D370  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8071D374  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8071D378  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8071D37C  4B B4 A2 F8 */	b cM_atan2s__Fff
/* 8071D380  7C 64 1B 78 */	mr r4, r3
/* 8071D384  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8071D388  38 A0 00 01 */	li r5, 1
/* 8071D38C  A8 DD 05 EC */	lha r6, 0x5ec(r29)
/* 8071D390  4B B5 32 78 */	b cLib_addCalcAngleS2__FPssss
/* 8071D394  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8071D398  EC 20 00 32 */	fmuls f1, f0, f0
/* 8071D39C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8071D3A0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8071D3A4  EC 41 00 2A */	fadds f2, f1, f0
/* 8071D3A8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8071D3AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8071D3B0  40 81 00 0C */	ble lbl_8071D3BC
/* 8071D3B4  FC 00 10 34 */	frsqrte f0, f2
/* 8071D3B8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8071D3BC:
/* 8071D3BC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8071D3C0  4B B4 A2 B4 */	b cM_atan2s__Fff
/* 8071D3C4  7C 03 00 D0 */	neg r0, r3
/* 8071D3C8  7C 04 07 34 */	extsh r4, r0
/* 8071D3CC  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 8071D3D0  38 A0 00 01 */	li r5, 1
/* 8071D3D4  A8 DD 05 EC */	lha r6, 0x5ec(r29)
/* 8071D3D8  4B B5 32 30 */	b cLib_addCalcAngleS2__FPssss
/* 8071D3DC  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 8071D3E0  A8 9D 05 EE */	lha r4, 0x5ee(r29)
/* 8071D3E4  38 A0 00 01 */	li r5, 1
/* 8071D3E8  38 C0 00 40 */	li r6, 0x40
/* 8071D3EC  4B B5 32 1C */	b cLib_addCalcAngleS2__FPssss
/* 8071D3F0  38 7D 05 EE */	addi r3, r29, 0x5ee
/* 8071D3F4  38 80 20 00 */	li r4, 0x2000
/* 8071D3F8  38 A0 00 01 */	li r5, 1
/* 8071D3FC  38 C0 00 04 */	li r6, 4
/* 8071D400  4B B5 32 08 */	b cLib_addCalcAngleS2__FPssss
/* 8071D404  38 61 00 38 */	addi r3, r1, 0x38
/* 8071D408  4B C2 9D 30 */	b PSVECSquareMag
/* 8071D40C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8071D410  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071D414  40 81 00 58 */	ble lbl_8071D46C
/* 8071D418  FC 00 08 34 */	frsqrte f0, f1
/* 8071D41C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8071D420  FC 44 00 32 */	fmul f2, f4, f0
/* 8071D424  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8071D428  FC 00 00 32 */	fmul f0, f0, f0
/* 8071D42C  FC 01 00 32 */	fmul f0, f1, f0
/* 8071D430  FC 03 00 28 */	fsub f0, f3, f0
/* 8071D434  FC 02 00 32 */	fmul f0, f2, f0
/* 8071D438  FC 44 00 32 */	fmul f2, f4, f0
/* 8071D43C  FC 00 00 32 */	fmul f0, f0, f0
/* 8071D440  FC 01 00 32 */	fmul f0, f1, f0
/* 8071D444  FC 03 00 28 */	fsub f0, f3, f0
/* 8071D448  FC 02 00 32 */	fmul f0, f2, f0
/* 8071D44C  FC 44 00 32 */	fmul f2, f4, f0
/* 8071D450  FC 00 00 32 */	fmul f0, f0, f0
/* 8071D454  FC 01 00 32 */	fmul f0, f1, f0
/* 8071D458  FC 03 00 28 */	fsub f0, f3, f0
/* 8071D45C  FC 02 00 32 */	fmul f0, f2, f0
/* 8071D460  FC 21 00 32 */	fmul f1, f1, f0
/* 8071D464  FC 20 08 18 */	frsp f1, f1
/* 8071D468  48 00 00 88 */	b lbl_8071D4F0
lbl_8071D46C:
/* 8071D46C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8071D470  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071D474  40 80 00 10 */	bge lbl_8071D484
/* 8071D478  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8071D47C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8071D480  48 00 00 70 */	b lbl_8071D4F0
lbl_8071D484:
/* 8071D484  D0 21 00 08 */	stfs f1, 8(r1)
/* 8071D488  80 81 00 08 */	lwz r4, 8(r1)
/* 8071D48C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8071D490  3C 00 7F 80 */	lis r0, 0x7f80
/* 8071D494  7C 03 00 00 */	cmpw r3, r0
/* 8071D498  41 82 00 14 */	beq lbl_8071D4AC
/* 8071D49C  40 80 00 40 */	bge lbl_8071D4DC
/* 8071D4A0  2C 03 00 00 */	cmpwi r3, 0
/* 8071D4A4  41 82 00 20 */	beq lbl_8071D4C4
/* 8071D4A8  48 00 00 34 */	b lbl_8071D4DC
lbl_8071D4AC:
/* 8071D4AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071D4B0  41 82 00 0C */	beq lbl_8071D4BC
/* 8071D4B4  38 00 00 01 */	li r0, 1
/* 8071D4B8  48 00 00 28 */	b lbl_8071D4E0
lbl_8071D4BC:
/* 8071D4BC  38 00 00 02 */	li r0, 2
/* 8071D4C0  48 00 00 20 */	b lbl_8071D4E0
lbl_8071D4C4:
/* 8071D4C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071D4C8  41 82 00 0C */	beq lbl_8071D4D4
/* 8071D4CC  38 00 00 05 */	li r0, 5
/* 8071D4D0  48 00 00 10 */	b lbl_8071D4E0
lbl_8071D4D4:
/* 8071D4D4  38 00 00 03 */	li r0, 3
/* 8071D4D8  48 00 00 08 */	b lbl_8071D4E0
lbl_8071D4DC:
/* 8071D4DC  38 00 00 04 */	li r0, 4
lbl_8071D4E0:
/* 8071D4E0  2C 00 00 01 */	cmpwi r0, 1
/* 8071D4E4  40 82 00 0C */	bne lbl_8071D4F0
/* 8071D4E8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8071D4EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8071D4F0:
/* 8071D4F0  A8 1E 0C 32 */	lha r0, 0xc32(r30)
/* 8071D4F4  2C 00 00 00 */	cmpwi r0, 0
/* 8071D4F8  40 82 00 1C */	bne lbl_8071D514
/* 8071D4FC  A8 7E 06 B6 */	lha r3, 0x6b6(r30)
/* 8071D500  2C 03 00 02 */	cmpwi r3, 2
/* 8071D504  40 82 00 48 */	bne lbl_8071D54C
/* 8071D508  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8071D50C  2C 00 00 14 */	cmpwi r0, 0x14
/* 8071D510  41 80 00 3C */	blt lbl_8071D54C
lbl_8071D514:
/* 8071D514  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8071D518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071D51C  40 80 00 18 */	bge lbl_8071D534
/* 8071D520  38 00 00 01 */	li r0, 1
/* 8071D524  98 1D 06 00 */	stb r0, 0x600(r29)
/* 8071D528  38 00 00 03 */	li r0, 3
/* 8071D52C  98 1E 07 07 */	stb r0, 0x707(r30)
/* 8071D530  48 00 00 88 */	b lbl_8071D5B8
lbl_8071D534:
/* 8071D534  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8071D538  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071D53C  40 80 00 7C */	bge lbl_8071D5B8
/* 8071D540  38 00 00 02 */	li r0, 2
/* 8071D544  98 1E 07 07 */	stb r0, 0x707(r30)
/* 8071D548  48 00 00 70 */	b lbl_8071D5B8
lbl_8071D54C:
/* 8071D54C  2C 03 00 03 */	cmpwi r3, 3
/* 8071D550  40 82 00 68 */	bne lbl_8071D5B8
/* 8071D554  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8071D558  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071D55C  40 80 00 5C */	bge lbl_8071D5B8
/* 8071D560  38 00 00 04 */	li r0, 4
/* 8071D564  98 1E 07 07 */	stb r0, 0x707(r30)
/* 8071D568  38 00 00 01 */	li r0, 1
/* 8071D56C  B0 1D 05 DA */	sth r0, 0x5da(r29)
/* 8071D570  38 00 00 00 */	li r0, 0
/* 8071D574  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 8071D578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071D57C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071D580  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8071D584  38 80 00 03 */	li r4, 3
/* 8071D588  7F A5 EB 78 */	mr r5, r29
/* 8071D58C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 8071D590  38 FD 04 E4 */	addi r7, r29, 0x4e4
/* 8071D594  39 00 00 00 */	li r8, 0
/* 8071D598  39 20 00 00 */	li r9, 0
/* 8071D59C  4B 92 EC 7C */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8071D5A0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8071D5A4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8071D5A8  38 00 00 28 */	li r0, 0x28
/* 8071D5AC  B0 1D 05 F4 */	sth r0, 0x5f4(r29)
/* 8071D5B0  7F 83 E3 78 */	mr r3, r28
/* 8071D5B4  48 00 00 C8 */	b lbl_8071D67C
lbl_8071D5B8:
/* 8071D5B8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8071D5BC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8071D5C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8071D5C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8071D5C8  80 63 00 00 */	lwz r3, 0(r3)
/* 8071D5CC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8071D5D0  4B 8E EE 0C */	b mDoMtx_YrotS__FPA4_fs
/* 8071D5D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8071D5D8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8071D5DC  80 63 00 00 */	lwz r3, 0(r3)
/* 8071D5E0  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 8071D5E4  4B 8E ED B8 */	b mDoMtx_XrotM__FPA4_fs
/* 8071D5E8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8071D5EC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8071D5F0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8071D5F4  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8071D5F8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8071D5FC  38 61 00 38 */	addi r3, r1, 0x38
/* 8071D600  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8071D604  4B B5 38 E8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8071D608  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8071D60C  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8071D610  7C 65 1B 78 */	mr r5, r3
/* 8071D614  4B C2 9A 7C */	b PSVECAdd
/* 8071D618  38 00 E8 00 */	li r0, -6144
/* 8071D61C  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 8071D620  38 7D 08 58 */	addi r3, r29, 0x858
/* 8071D624  4B 96 6C 9C */	b ChkAtHit__12dCcD_GObjInfFv
/* 8071D628  28 03 00 00 */	cmplwi r3, 0
/* 8071D62C  41 82 00 38 */	beq lbl_8071D664
/* 8071D630  80 1D 08 B4 */	lwz r0, 0x8b4(r29)
/* 8071D634  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8071D638  40 82 00 2C */	bne lbl_8071D664
/* 8071D63C  38 7D 08 58 */	addi r3, r29, 0x858
/* 8071D640  4B 96 6D 18 */	b GetAtHitObj__12dCcD_GObjInfFv
/* 8071D644  4B B4 64 04 */	b GetAc__8cCcD_ObjFv
/* 8071D648  A8 03 00 08 */	lha r0, 8(r3)
/* 8071D64C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8071D650  40 82 00 14 */	bne lbl_8071D664
/* 8071D654  38 00 00 05 */	li r0, 5
/* 8071D658  98 1E 07 07 */	stb r0, 0x707(r30)
/* 8071D65C  38 00 00 0A */	li r0, 0xa
/* 8071D660  B0 1D 05 F8 */	sth r0, 0x5f8(r29)
lbl_8071D664:
/* 8071D664  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 8071D668  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8071D66C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8071D670  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 8071D674  4B B5 23 C8 */	b cLib_addCalc2__FPffff
/* 8071D678  7F 83 E3 78 */	mr r3, r28
lbl_8071D67C:
/* 8071D67C  39 61 00 60 */	addi r11, r1, 0x60
/* 8071D680  4B C4 4B A4 */	b _restgpr_28
/* 8071D684  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8071D688  7C 08 03 A6 */	mtlr r0
/* 8071D68C  38 21 00 60 */	addi r1, r1, 0x60
/* 8071D690  4E 80 00 20 */	blr 
