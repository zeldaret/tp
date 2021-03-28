lbl_804CF098:
/* 804CF098  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804CF09C  7C 08 02 A6 */	mflr r0
/* 804CF0A0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804CF0A4  39 61 00 50 */	addi r11, r1, 0x50
/* 804CF0A8  4B E9 31 30 */	b _savegpr_28
/* 804CF0AC  7C 7C 1B 78 */	mr r28, r3
/* 804CF0B0  3C 60 80 4D */	lis r3, ccSphSrc@ha
/* 804CF0B4  3B E3 15 F0 */	addi r31, r3, ccSphSrc@l
/* 804CF0B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CF0BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CF0C0  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 804CF0C4  3B BE 04 D0 */	addi r29, r30, 0x4d0
/* 804CF0C8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804CF0CC  7F A4 EB 78 */	mr r4, r29
/* 804CF0D0  4B E7 82 CC */	b PSVECSquareDistance
/* 804CF0D4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CF0D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF0DC  40 81 00 58 */	ble lbl_804CF134
/* 804CF0E0  FC 00 08 34 */	frsqrte f0, f1
/* 804CF0E4  C8 9F 00 B0 */	lfd f4, 0xb0(r31)
/* 804CF0E8  FC 44 00 32 */	fmul f2, f4, f0
/* 804CF0EC  C8 7F 00 B8 */	lfd f3, 0xb8(r31)
/* 804CF0F0  FC 00 00 32 */	fmul f0, f0, f0
/* 804CF0F4  FC 01 00 32 */	fmul f0, f1, f0
/* 804CF0F8  FC 03 00 28 */	fsub f0, f3, f0
/* 804CF0FC  FC 02 00 32 */	fmul f0, f2, f0
/* 804CF100  FC 44 00 32 */	fmul f2, f4, f0
/* 804CF104  FC 00 00 32 */	fmul f0, f0, f0
/* 804CF108  FC 01 00 32 */	fmul f0, f1, f0
/* 804CF10C  FC 03 00 28 */	fsub f0, f3, f0
/* 804CF110  FC 02 00 32 */	fmul f0, f2, f0
/* 804CF114  FC 44 00 32 */	fmul f2, f4, f0
/* 804CF118  FC 00 00 32 */	fmul f0, f0, f0
/* 804CF11C  FC 01 00 32 */	fmul f0, f1, f0
/* 804CF120  FC 03 00 28 */	fsub f0, f3, f0
/* 804CF124  FC 02 00 32 */	fmul f0, f2, f0
/* 804CF128  FC 21 00 32 */	fmul f1, f1, f0
/* 804CF12C  FC 20 08 18 */	frsp f1, f1
/* 804CF130  48 00 00 88 */	b lbl_804CF1B8
lbl_804CF134:
/* 804CF134  C8 1F 00 C0 */	lfd f0, 0xc0(r31)
/* 804CF138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF13C  40 80 00 10 */	bge lbl_804CF14C
/* 804CF140  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804CF144  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804CF148  48 00 00 70 */	b lbl_804CF1B8
lbl_804CF14C:
/* 804CF14C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804CF150  80 81 00 10 */	lwz r4, 0x10(r1)
/* 804CF154  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804CF158  3C 00 7F 80 */	lis r0, 0x7f80
/* 804CF15C  7C 03 00 00 */	cmpw r3, r0
/* 804CF160  41 82 00 14 */	beq lbl_804CF174
/* 804CF164  40 80 00 40 */	bge lbl_804CF1A4
/* 804CF168  2C 03 00 00 */	cmpwi r3, 0
/* 804CF16C  41 82 00 20 */	beq lbl_804CF18C
/* 804CF170  48 00 00 34 */	b lbl_804CF1A4
lbl_804CF174:
/* 804CF174  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CF178  41 82 00 0C */	beq lbl_804CF184
/* 804CF17C  38 00 00 01 */	li r0, 1
/* 804CF180  48 00 00 28 */	b lbl_804CF1A8
lbl_804CF184:
/* 804CF184  38 00 00 02 */	li r0, 2
/* 804CF188  48 00 00 20 */	b lbl_804CF1A8
lbl_804CF18C:
/* 804CF18C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CF190  41 82 00 0C */	beq lbl_804CF19C
/* 804CF194  38 00 00 05 */	li r0, 5
/* 804CF198  48 00 00 10 */	b lbl_804CF1A8
lbl_804CF19C:
/* 804CF19C  38 00 00 03 */	li r0, 3
/* 804CF1A0  48 00 00 08 */	b lbl_804CF1A8
lbl_804CF1A4:
/* 804CF1A4  38 00 00 04 */	li r0, 4
lbl_804CF1A8:
/* 804CF1A8  2C 00 00 01 */	cmpwi r0, 1
/* 804CF1AC  40 82 00 0C */	bne lbl_804CF1B8
/* 804CF1B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804CF1B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804CF1B8:
/* 804CF1B8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 804CF1BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF1C0  40 80 04 B0 */	bge lbl_804CF670
/* 804CF1C4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804CF1C8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804CF1CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804CF1D0  40 82 04 A0 */	bne lbl_804CF670
/* 804CF1D4  7F C3 F3 78 */	mr r3, r30
/* 804CF1D8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 804CF1DC  81 8C 02 88 */	lwz r12, 0x288(r12)
/* 804CF1E0  7D 89 03 A6 */	mtctr r12
/* 804CF1E4  4E 80 04 21 */	bctrl 
/* 804CF1E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804CF1EC  41 82 02 20 */	beq lbl_804CF40C
/* 804CF1F0  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 804CF1F4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804CF1F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 804CF1FC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804CF200  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF204  40 80 02 08 */	bge lbl_804CF40C
/* 804CF208  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 804CF20C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 804CF210  40 82 01 FC */	bne lbl_804CF40C
/* 804CF214  3C 60 80 4D */	lis r3, struct_804D1830+0x0@ha
/* 804CF218  88 03 18 30 */	lbz r0, struct_804D1830+0x0@l(r3)
/* 804CF21C  28 00 00 00 */	cmplwi r0, 0
/* 804CF220  41 82 00 10 */	beq lbl_804CF230
/* 804CF224  88 1C 05 AC */	lbz r0, 0x5ac(r28)
/* 804CF228  28 00 00 00 */	cmplwi r0, 0
/* 804CF22C  41 82 01 E0 */	beq lbl_804CF40C
lbl_804CF230:
/* 804CF230  38 00 00 01 */	li r0, 1
/* 804CF234  3C 60 80 4D */	lis r3, struct_804D1830+0x0@ha
/* 804CF238  98 03 18 30 */	stb r0, struct_804D1830+0x0@l(r3)
/* 804CF23C  98 1C 05 AC */	stb r0, 0x5ac(r28)
/* 804CF240  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 804CF244  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804CF248  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 804CF24C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804CF250  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CF254  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804CF258  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CF25C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CF260  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804CF264  38 80 00 09 */	li r4, 9
/* 804CF268  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804CF26C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 804CF270  7D 89 03 A6 */	mtctr r12
/* 804CF274  4E 80 04 21 */	bctrl 
/* 804CF278  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804CF27C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804CF280  80 84 00 00 */	lwz r4, 0(r4)
/* 804CF284  4B E7 72 2C */	b PSMTXCopy
/* 804CF288  38 61 00 2C */	addi r3, r1, 0x2c
/* 804CF28C  38 81 00 20 */	addi r4, r1, 0x20
/* 804CF290  4B DA 1C 5C */	b MtxPosition__FP4cXyzP4cXyz
/* 804CF294  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804CF298  38 81 00 20 */	addi r4, r1, 0x20
/* 804CF29C  4B DA 19 68 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 804CF2A0  B0 7C 05 DA */	sth r3, 0x5da(r28)
/* 804CF2A4  38 7C 04 DE */	addi r3, r28, 0x4de
/* 804CF2A8  A8 9C 05 DA */	lha r4, 0x5da(r28)
/* 804CF2AC  38 A0 00 0A */	li r5, 0xa
/* 804CF2B0  38 C0 05 00 */	li r6, 0x500
/* 804CF2B4  4B DA 13 54 */	b cLib_addCalcAngleS2__FPssss
/* 804CF2B8  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 804CF2BC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804CF2C0  EC 21 00 28 */	fsubs f1, f1, f0
/* 804CF2C4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CF2C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF2CC  40 80 00 10 */	bge lbl_804CF2DC
/* 804CF2D0  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804CF2D4  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
/* 804CF2D8  48 00 00 0C */	b lbl_804CF2E4
lbl_804CF2DC:
/* 804CF2DC  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 804CF2E0  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
lbl_804CF2E4:
/* 804CF2E4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804CF2E8  38 81 00 20 */	addi r4, r1, 0x20
/* 804CF2EC  4B E7 80 B0 */	b PSVECSquareDistance
/* 804CF2F0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CF2F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF2F8  40 81 00 58 */	ble lbl_804CF350
/* 804CF2FC  FC 00 08 34 */	frsqrte f0, f1
/* 804CF300  C8 9F 00 B0 */	lfd f4, 0xb0(r31)
/* 804CF304  FC 44 00 32 */	fmul f2, f4, f0
/* 804CF308  C8 7F 00 B8 */	lfd f3, 0xb8(r31)
/* 804CF30C  FC 00 00 32 */	fmul f0, f0, f0
/* 804CF310  FC 01 00 32 */	fmul f0, f1, f0
/* 804CF314  FC 03 00 28 */	fsub f0, f3, f0
/* 804CF318  FC 02 00 32 */	fmul f0, f2, f0
/* 804CF31C  FC 44 00 32 */	fmul f2, f4, f0
/* 804CF320  FC 00 00 32 */	fmul f0, f0, f0
/* 804CF324  FC 01 00 32 */	fmul f0, f1, f0
/* 804CF328  FC 03 00 28 */	fsub f0, f3, f0
/* 804CF32C  FC 02 00 32 */	fmul f0, f2, f0
/* 804CF330  FC 44 00 32 */	fmul f2, f4, f0
/* 804CF334  FC 00 00 32 */	fmul f0, f0, f0
/* 804CF338  FC 01 00 32 */	fmul f0, f1, f0
/* 804CF33C  FC 03 00 28 */	fsub f0, f3, f0
/* 804CF340  FC 02 00 32 */	fmul f0, f2, f0
/* 804CF344  FC 21 00 32 */	fmul f1, f1, f0
/* 804CF348  FC 20 08 18 */	frsp f1, f1
/* 804CF34C  48 00 00 88 */	b lbl_804CF3D4
lbl_804CF350:
/* 804CF350  C8 1F 00 C0 */	lfd f0, 0xc0(r31)
/* 804CF354  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF358  40 80 00 10 */	bge lbl_804CF368
/* 804CF35C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804CF360  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804CF364  48 00 00 70 */	b lbl_804CF3D4
lbl_804CF368:
/* 804CF368  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804CF36C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804CF370  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804CF374  3C 00 7F 80 */	lis r0, 0x7f80
/* 804CF378  7C 03 00 00 */	cmpw r3, r0
/* 804CF37C  41 82 00 14 */	beq lbl_804CF390
/* 804CF380  40 80 00 40 */	bge lbl_804CF3C0
/* 804CF384  2C 03 00 00 */	cmpwi r3, 0
/* 804CF388  41 82 00 20 */	beq lbl_804CF3A8
/* 804CF38C  48 00 00 34 */	b lbl_804CF3C0
lbl_804CF390:
/* 804CF390  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CF394  41 82 00 0C */	beq lbl_804CF3A0
/* 804CF398  38 00 00 01 */	li r0, 1
/* 804CF39C  48 00 00 28 */	b lbl_804CF3C4
lbl_804CF3A0:
/* 804CF3A0  38 00 00 02 */	li r0, 2
/* 804CF3A4  48 00 00 20 */	b lbl_804CF3C4
lbl_804CF3A8:
/* 804CF3A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CF3AC  41 82 00 0C */	beq lbl_804CF3B8
/* 804CF3B0  38 00 00 05 */	li r0, 5
/* 804CF3B4  48 00 00 10 */	b lbl_804CF3C4
lbl_804CF3B8:
/* 804CF3B8  38 00 00 03 */	li r0, 3
/* 804CF3BC  48 00 00 08 */	b lbl_804CF3C4
lbl_804CF3C0:
/* 804CF3C0  38 00 00 04 */	li r0, 4
lbl_804CF3C4:
/* 804CF3C4  2C 00 00 01 */	cmpwi r0, 1
/* 804CF3C8  40 82 00 0C */	bne lbl_804CF3D4
/* 804CF3CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804CF3D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804CF3D4:
/* 804CF3D4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 804CF3D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF3DC  40 80 00 14 */	bge lbl_804CF3F0
/* 804CF3E0  38 00 00 03 */	li r0, 3
/* 804CF3E4  B0 1C 05 CA */	sth r0, 0x5ca(r28)
/* 804CF3E8  38 00 00 00 */	li r0, 0
/* 804CF3EC  B0 1C 05 CC */	sth r0, 0x5cc(r28)
lbl_804CF3F0:
/* 804CF3F0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804CF3F4  D0 1C 05 F8 */	stfs f0, 0x5f8(r28)
/* 804CF3F8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804CF3FC  D0 1C 05 FC */	stfs f0, 0x5fc(r28)
/* 804CF400  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804CF404  D0 1C 06 00 */	stfs f0, 0x600(r28)
/* 804CF408  48 00 02 A4 */	b lbl_804CF6AC
lbl_804CF40C:
/* 804CF40C  3C 60 80 4D */	lis r3, struct_804D1830+0x1@ha
/* 804CF410  88 03 18 31 */	lbz r0, struct_804D1830+0x1@l(r3)
/* 804CF414  28 00 00 00 */	cmplwi r0, 0
/* 804CF418  41 82 00 10 */	beq lbl_804CF428
/* 804CF41C  88 1C 05 AD */	lbz r0, 0x5ad(r28)
/* 804CF420  28 00 00 00 */	cmplwi r0, 0
/* 804CF424  41 82 02 0C */	beq lbl_804CF630
lbl_804CF428:
/* 804CF428  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 804CF42C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804CF430  EC 21 00 28 */	fsubs f1, f1, f0
/* 804CF434  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804CF438  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF43C  40 81 01 F4 */	ble lbl_804CF630
/* 804CF440  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 804CF444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF448  40 80 01 E8 */	bge lbl_804CF630
/* 804CF44C  38 00 00 01 */	li r0, 1
/* 804CF450  3C 60 80 4D */	lis r3, struct_804D1830+0x1@ha
/* 804CF454  98 03 18 31 */	stb r0, struct_804D1830+0x1@l(r3)
/* 804CF458  98 1C 05 AD */	stb r0, 0x5ad(r28)
/* 804CF45C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 804CF460  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
/* 804CF464  38 61 00 14 */	addi r3, r1, 0x14
/* 804CF468  7F C4 F3 78 */	mr r4, r30
/* 804CF46C  48 00 21 61 */	bl getHeadTopPos__9daPy_py_cCFv
/* 804CF470  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804CF474  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804CF478  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804CF47C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804CF480  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804CF484  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804CF488  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804CF48C  38 81 00 20 */	addi r4, r1, 0x20
/* 804CF490  4B DA 17 74 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 804CF494  B0 7C 05 DA */	sth r3, 0x5da(r28)
/* 804CF498  38 00 F1 70 */	li r0, -3728
/* 804CF49C  B0 1C 06 1A */	sth r0, 0x61a(r28)
/* 804CF4A0  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 804CF4A4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804CF4A8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 804CF4AC  EC 00 08 2A */	fadds f0, f0, f1
/* 804CF4B0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804CF4B4  40 81 00 28 */	ble lbl_804CF4DC
/* 804CF4B8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 804CF4BC  EC 00 08 2A */	fadds f0, f0, f1
/* 804CF4C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804CF4C4  40 80 00 18 */	bge lbl_804CF4DC
/* 804CF4C8  38 7C 04 DE */	addi r3, r28, 0x4de
/* 804CF4CC  A8 9C 05 DA */	lha r4, 0x5da(r28)
/* 804CF4D0  38 A0 00 02 */	li r5, 2
/* 804CF4D4  38 C0 06 00 */	li r6, 0x600
/* 804CF4D8  4B DA 11 30 */	b cLib_addCalcAngleS2__FPssss
lbl_804CF4DC:
/* 804CF4DC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804CF4E0  38 81 00 20 */	addi r4, r1, 0x20
/* 804CF4E4  4B E7 7E B8 */	b PSVECSquareDistance
/* 804CF4E8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CF4EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF4F0  40 81 00 58 */	ble lbl_804CF548
/* 804CF4F4  FC 00 08 34 */	frsqrte f0, f1
/* 804CF4F8  C8 9F 00 B0 */	lfd f4, 0xb0(r31)
/* 804CF4FC  FC 44 00 32 */	fmul f2, f4, f0
/* 804CF500  C8 7F 00 B8 */	lfd f3, 0xb8(r31)
/* 804CF504  FC 00 00 32 */	fmul f0, f0, f0
/* 804CF508  FC 01 00 32 */	fmul f0, f1, f0
/* 804CF50C  FC 03 00 28 */	fsub f0, f3, f0
/* 804CF510  FC 02 00 32 */	fmul f0, f2, f0
/* 804CF514  FC 44 00 32 */	fmul f2, f4, f0
/* 804CF518  FC 00 00 32 */	fmul f0, f0, f0
/* 804CF51C  FC 01 00 32 */	fmul f0, f1, f0
/* 804CF520  FC 03 00 28 */	fsub f0, f3, f0
/* 804CF524  FC 02 00 32 */	fmul f0, f2, f0
/* 804CF528  FC 44 00 32 */	fmul f2, f4, f0
/* 804CF52C  FC 00 00 32 */	fmul f0, f0, f0
/* 804CF530  FC 01 00 32 */	fmul f0, f1, f0
/* 804CF534  FC 03 00 28 */	fsub f0, f3, f0
/* 804CF538  FC 02 00 32 */	fmul f0, f2, f0
/* 804CF53C  FC 21 00 32 */	fmul f1, f1, f0
/* 804CF540  FC 20 08 18 */	frsp f1, f1
/* 804CF544  48 00 00 88 */	b lbl_804CF5CC
lbl_804CF548:
/* 804CF548  C8 1F 00 C0 */	lfd f0, 0xc0(r31)
/* 804CF54C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF550  40 80 00 10 */	bge lbl_804CF560
/* 804CF554  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804CF558  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804CF55C  48 00 00 70 */	b lbl_804CF5CC
lbl_804CF560:
/* 804CF560  D0 21 00 08 */	stfs f1, 8(r1)
/* 804CF564  80 81 00 08 */	lwz r4, 8(r1)
/* 804CF568  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804CF56C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804CF570  7C 03 00 00 */	cmpw r3, r0
/* 804CF574  41 82 00 14 */	beq lbl_804CF588
/* 804CF578  40 80 00 40 */	bge lbl_804CF5B8
/* 804CF57C  2C 03 00 00 */	cmpwi r3, 0
/* 804CF580  41 82 00 20 */	beq lbl_804CF5A0
/* 804CF584  48 00 00 34 */	b lbl_804CF5B8
lbl_804CF588:
/* 804CF588  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CF58C  41 82 00 0C */	beq lbl_804CF598
/* 804CF590  38 00 00 01 */	li r0, 1
/* 804CF594  48 00 00 28 */	b lbl_804CF5BC
lbl_804CF598:
/* 804CF598  38 00 00 02 */	li r0, 2
/* 804CF59C  48 00 00 20 */	b lbl_804CF5BC
lbl_804CF5A0:
/* 804CF5A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CF5A4  41 82 00 0C */	beq lbl_804CF5B0
/* 804CF5A8  38 00 00 05 */	li r0, 5
/* 804CF5AC  48 00 00 10 */	b lbl_804CF5BC
lbl_804CF5B0:
/* 804CF5B0  38 00 00 03 */	li r0, 3
/* 804CF5B4  48 00 00 08 */	b lbl_804CF5BC
lbl_804CF5B8:
/* 804CF5B8  38 00 00 04 */	li r0, 4
lbl_804CF5BC:
/* 804CF5BC  2C 00 00 01 */	cmpwi r0, 1
/* 804CF5C0  40 82 00 0C */	bne lbl_804CF5CC
/* 804CF5C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804CF5C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804CF5CC:
/* 804CF5CC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 804CF5D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF5D4  40 80 00 40 */	bge lbl_804CF614
/* 804CF5D8  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 804CF5DC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804CF5E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CF5E4  40 81 00 30 */	ble lbl_804CF614
/* 804CF5E8  A8 7C 05 DA */	lha r3, 0x5da(r28)
/* 804CF5EC  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 804CF5F0  7C 03 00 50 */	subf r0, r3, r0
/* 804CF5F4  2C 00 20 00 */	cmpwi r0, 0x2000
/* 804CF5F8  40 80 00 1C */	bge lbl_804CF614
/* 804CF5FC  2C 00 E0 00 */	cmpwi r0, -8192
/* 804CF600  40 81 00 14 */	ble lbl_804CF614
/* 804CF604  38 00 00 03 */	li r0, 3
/* 804CF608  B0 1C 05 CA */	sth r0, 0x5ca(r28)
/* 804CF60C  38 00 00 02 */	li r0, 2
/* 804CF610  B0 1C 05 CC */	sth r0, 0x5cc(r28)
lbl_804CF614:
/* 804CF614  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804CF618  D0 1C 05 F8 */	stfs f0, 0x5f8(r28)
/* 804CF61C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804CF620  D0 1C 05 FC */	stfs f0, 0x5fc(r28)
/* 804CF624  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804CF628  D0 1C 06 00 */	stfs f0, 0x600(r28)
/* 804CF62C  48 00 00 80 */	b lbl_804CF6AC
lbl_804CF630:
/* 804CF630  88 1C 05 AC */	lbz r0, 0x5ac(r28)
/* 804CF634  28 00 00 00 */	cmplwi r0, 0
/* 804CF638  41 82 00 18 */	beq lbl_804CF650
/* 804CF63C  38 00 00 00 */	li r0, 0
/* 804CF640  3C 60 80 4D */	lis r3, struct_804D1830+0x0@ha
/* 804CF644  98 03 18 30 */	stb r0, struct_804D1830+0x0@l(r3)
/* 804CF648  98 1C 05 AC */	stb r0, 0x5ac(r28)
/* 804CF64C  48 00 00 60 */	b lbl_804CF6AC
lbl_804CF650:
/* 804CF650  88 1C 05 AD */	lbz r0, 0x5ad(r28)
/* 804CF654  28 00 00 00 */	cmplwi r0, 0
/* 804CF658  41 82 00 54 */	beq lbl_804CF6AC
/* 804CF65C  38 00 00 00 */	li r0, 0
/* 804CF660  3C 60 80 4D */	lis r3, struct_804D1830+0x1@ha
/* 804CF664  98 03 18 31 */	stb r0, struct_804D1830+0x1@l(r3)
/* 804CF668  98 1C 05 AD */	stb r0, 0x5ad(r28)
/* 804CF66C  48 00 00 40 */	b lbl_804CF6AC
lbl_804CF670:
/* 804CF670  88 1C 05 AC */	lbz r0, 0x5ac(r28)
/* 804CF674  28 00 00 00 */	cmplwi r0, 0
/* 804CF678  41 82 00 18 */	beq lbl_804CF690
/* 804CF67C  38 00 00 00 */	li r0, 0
/* 804CF680  3C 60 80 4D */	lis r3, struct_804D1830+0x0@ha
/* 804CF684  98 03 18 30 */	stb r0, struct_804D1830+0x0@l(r3)
/* 804CF688  98 1C 05 AC */	stb r0, 0x5ac(r28)
/* 804CF68C  48 00 00 20 */	b lbl_804CF6AC
lbl_804CF690:
/* 804CF690  88 1C 05 AD */	lbz r0, 0x5ad(r28)
/* 804CF694  28 00 00 00 */	cmplwi r0, 0
/* 804CF698  41 82 00 14 */	beq lbl_804CF6AC
/* 804CF69C  38 00 00 00 */	li r0, 0
/* 804CF6A0  3C 60 80 4D */	lis r3, struct_804D1830+0x1@ha
/* 804CF6A4  98 03 18 31 */	stb r0, struct_804D1830+0x1@l(r3)
/* 804CF6A8  98 1C 05 AD */	stb r0, 0x5ad(r28)
lbl_804CF6AC:
/* 804CF6AC  39 61 00 50 */	addi r11, r1, 0x50
/* 804CF6B0  4B E9 2B 74 */	b _restgpr_28
/* 804CF6B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804CF6B8  7C 08 03 A6 */	mtlr r0
/* 804CF6BC  38 21 00 50 */	addi r1, r1, 0x50
/* 804CF6C0  4E 80 00 20 */	blr 
