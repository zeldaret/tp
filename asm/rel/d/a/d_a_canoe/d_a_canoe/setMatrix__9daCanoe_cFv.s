lbl_804DB0B0:
/* 804DB0B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804DB0B4  7C 08 02 A6 */	mflr r0
/* 804DB0B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804DB0BC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804DB0C0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804DB0C4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804DB0C8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804DB0CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804DB0D0  4B E8 71 04 */	b _savegpr_27
/* 804DB0D4  7C 7E 1B 78 */	mr r30, r3
/* 804DB0D8  3C 60 80 4E */	lis r3, lit_3766@ha
/* 804DB0DC  3B E3 D5 DC */	addi r31, r3, lit_3766@l
/* 804DB0E0  C0 3E 14 6C */	lfs f1, 0x146c(r30)
/* 804DB0E4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804DB0E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB0EC  40 81 00 0C */	ble lbl_804DB0F8
/* 804DB0F0  FF E0 00 90 */	fmr f31, f0
/* 804DB0F4  48 00 00 1C */	b lbl_804DB110
lbl_804DB0F8:
/* 804DB0F8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 804DB0FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB100  40 80 00 0C */	bge lbl_804DB10C
/* 804DB104  FF E0 00 90 */	fmr f31, f0
/* 804DB108  48 00 00 08 */	b lbl_804DB110
lbl_804DB10C:
/* 804DB10C  FF E0 08 90 */	fmr f31, f1
lbl_804DB110:
/* 804DB110  C3 DF 00 68 */	lfs f30, 0x68(r31)
/* 804DB114  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804DB118  FC 00 02 10 */	fabs f0, f0
/* 804DB11C  FC 20 00 18 */	frsp f1, f0
/* 804DB120  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 804DB124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB128  40 80 00 0C */	bge lbl_804DB134
/* 804DB12C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 804DB130  EF DE 00 32 */	fmuls f30, f30, f0
lbl_804DB134:
/* 804DB134  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DB138  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 804DB13C  83 7C 5D B4 */	lwz r27, 0x5db4(r28)
/* 804DB140  3B A0 00 00 */	li r29, 0
/* 804DB144  7F 63 DB 78 */	mr r3, r27
/* 804DB148  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 804DB14C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804DB150  7D 89 03 A6 */	mtctr r12
/* 804DB154  4E 80 04 21 */	bctrl 
/* 804DB158  28 03 00 00 */	cmplwi r3, 0
/* 804DB15C  41 82 00 14 */	beq lbl_804DB170
/* 804DB160  80 1B 28 18 */	lwz r0, 0x2818(r27)
/* 804DB164  7C 00 F0 40 */	cmplw r0, r30
/* 804DB168  40 82 00 08 */	bne lbl_804DB170
/* 804DB16C  3B A0 00 01 */	li r29, 1
lbl_804DB170:
/* 804DB170  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 804DB174  41 82 00 18 */	beq lbl_804DB18C
/* 804DB178  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 804DB17C  A0 63 2F DC */	lhz r3, 0x2fdc(r3)
/* 804DB180  4B C8 38 A0 */	b checkFishingRodItem__9daPy_py_cFi
/* 804DB184  2C 03 00 00 */	cmpwi r3, 0
/* 804DB188  41 82 00 0C */	beq lbl_804DB194
lbl_804DB18C:
/* 804DB18C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804DB190  EF DE 00 32 */	fmuls f30, f30, f0
lbl_804DB194:
/* 804DB194  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804DB198  EC 20 07 F2 */	fmuls f1, f0, f31
/* 804DB19C  4B D8 C4 48 */	b cM_rad2s__Ff
/* 804DB1A0  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804DB1A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804DB1A8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804DB1AC  7C 03 04 2E */	lfsx f0, r3, r0
/* 804DB1B0  C0 3E 14 70 */	lfs f1, 0x1470(r30)
/* 804DB1B4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 804DB1B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DB1BC  D0 1E 14 70 */	stfs f0, 0x1470(r30)
/* 804DB1C0  C0 1E 14 6C */	lfs f0, 0x146c(r30)
/* 804DB1C4  FC 00 02 10 */	fabs f0, f0
/* 804DB1C8  FC 20 00 18 */	frsp f1, f0
/* 804DB1CC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 804DB1D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB1D4  40 80 00 6C */	bge lbl_804DB240
/* 804DB1D8  C0 3E 14 70 */	lfs f1, 0x1470(r30)
/* 804DB1DC  FC 00 0A 10 */	fabs f0, f1
/* 804DB1E0  FC 40 00 18 */	frsp f2, f0
/* 804DB1E4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804DB1E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804DB1EC  40 80 00 54 */	bge lbl_804DB240
/* 804DB1F0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 804DB1F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804DB1F8  D0 1E 14 70 */	stfs f0, 0x1470(r30)
/* 804DB1FC  C0 3E 14 70 */	lfs f1, 0x1470(r30)
/* 804DB200  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804DB204  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB208  4C 41 13 82 */	cror 2, 1, 2
/* 804DB20C  40 82 00 0C */	bne lbl_804DB218
/* 804DB210  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 804DB214  48 00 00 08 */	b lbl_804DB21C
lbl_804DB218:
/* 804DB218  C0 5F 00 70 */	lfs f2, 0x70(r31)
lbl_804DB21C:
/* 804DB21C  FC 00 0A 10 */	fabs f0, f1
/* 804DB220  FC 20 00 18 */	frsp f1, f0
/* 804DB224  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 804DB228  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB22C  40 80 00 68 */	bge lbl_804DB294
/* 804DB230  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804DB234  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804DB238  D0 1E 14 70 */	stfs f0, 0x1470(r30)
/* 804DB23C  48 00 00 58 */	b lbl_804DB294
lbl_804DB240:
/* 804DB240  C0 1E 14 70 */	lfs f0, 0x1470(r30)
/* 804DB244  FC 00 02 10 */	fabs f0, f0
/* 804DB248  FC 20 00 18 */	frsp f1, f0
/* 804DB24C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 804DB250  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB254  40 80 00 40 */	bge lbl_804DB294
/* 804DB258  C0 3E 14 6C */	lfs f1, 0x146c(r30)
/* 804DB25C  FC 00 0A 10 */	fabs f0, f1
/* 804DB260  FC 40 00 18 */	frsp f2, f0
/* 804DB264  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 804DB268  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804DB26C  4C 41 13 82 */	cror 2, 1, 2
/* 804DB270  40 82 00 24 */	bne lbl_804DB294
/* 804DB274  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804DB278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB27C  40 81 00 10 */	ble lbl_804DB28C
/* 804DB280  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 804DB284  D0 1E 14 70 */	stfs f0, 0x1470(r30)
/* 804DB288  48 00 00 0C */	b lbl_804DB294
lbl_804DB28C:
/* 804DB28C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804DB290  D0 1E 14 70 */	stfs f0, 0x1470(r30)
lbl_804DB294:
/* 804DB294  C0 3E 14 6C */	lfs f1, 0x146c(r30)
/* 804DB298  C0 1E 14 70 */	lfs f0, 0x1470(r30)
/* 804DB29C  EC 01 00 2A */	fadds f0, f1, f0
/* 804DB2A0  D0 1E 14 6C */	stfs f0, 0x146c(r30)
/* 804DB2A4  C0 3E 14 6C */	lfs f1, 0x146c(r30)
/* 804DB2A8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804DB2AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB2B0  40 81 00 14 */	ble lbl_804DB2C4
/* 804DB2B4  D0 1E 14 6C */	stfs f0, 0x146c(r30)
/* 804DB2B8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804DB2BC  D0 1E 14 70 */	stfs f0, 0x1470(r30)
/* 804DB2C0  48 00 00 54 */	b lbl_804DB314
lbl_804DB2C4:
/* 804DB2C4  FC 00 00 50 */	fneg f0, f0
/* 804DB2C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB2CC  40 80 00 14 */	bge lbl_804DB2E0
/* 804DB2D0  D0 1E 14 6C */	stfs f0, 0x146c(r30)
/* 804DB2D4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804DB2D8  D0 1E 14 70 */	stfs f0, 0x1470(r30)
/* 804DB2DC  48 00 00 38 */	b lbl_804DB314
lbl_804DB2E0:
/* 804DB2E0  FC 00 0A 10 */	fabs f0, f1
/* 804DB2E4  FC 20 00 18 */	frsp f1, f0
/* 804DB2E8  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 804DB2EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB2F0  40 81 00 24 */	ble lbl_804DB314
/* 804DB2F4  38 7E 14 6C */	addi r3, r30, 0x146c
/* 804DB2F8  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 804DB2FC  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 804DB300  4B D9 54 40 */	b cLib_chaseF__FPfff
/* 804DB304  C0 3E 14 70 */	lfs f1, 0x1470(r30)
/* 804DB308  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804DB30C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804DB310  D0 1E 14 70 */	stfs f0, 0x1470(r30)
lbl_804DB314:
/* 804DB314  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804DB318  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804DB31C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804DB320  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 804DB324  C0 1E 14 6C */	lfs f0, 0x146c(r30)
/* 804DB328  EC 42 00 2A */	fadds f2, f2, f0
/* 804DB32C  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 804DB330  4B E6 B5 B8 */	b PSMTXTrans
/* 804DB334  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804DB338  4B B3 1C 0C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804DB33C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804DB340  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804DB344  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 804DB348  38 84 00 24 */	addi r4, r4, 0x24
/* 804DB34C  4B E6 B1 64 */	b PSMTXCopy
/* 804DB350  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804DB354  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804DB358  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 804DB35C  38 84 00 24 */	addi r4, r4, 0x24
/* 804DB360  4B E6 B1 50 */	b PSMTXCopy
/* 804DB364  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804DB368  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 804DB36C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804DB370  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DB374  7C 64 02 14 */	add r3, r4, r0
/* 804DB378  C0 03 00 04 */	lfs f0, 4(r3)
/* 804DB37C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 804DB380  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 804DB384  EC 02 00 32 */	fmuls f0, f2, f0
/* 804DB388  EC 81 00 28 */	fsubs f4, f1, f0
/* 804DB38C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804DB390  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804DB394  EC 61 00 2A */	fadds f3, f1, f0
/* 804DB398  7C 04 04 2E */	lfsx f0, r4, r0
/* 804DB39C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804DB3A0  EC 02 00 32 */	fmuls f0, f2, f0
/* 804DB3A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DB3A8  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 804DB3AC  D0 7E 05 54 */	stfs f3, 0x554(r30)
/* 804DB3B0  D0 9E 05 58 */	stfs f4, 0x558(r30)
/* 804DB3B4  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 804DB3B8  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 804DB3BC  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 804DB3C0  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 804DB3C4  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 804DB3C8  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 804DB3CC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804DB3D0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804DB3D4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804DB3D8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804DB3DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804DB3E0  4B E8 6E 40 */	b _restgpr_27
/* 804DB3E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804DB3E8  7C 08 03 A6 */	mtlr r0
/* 804DB3EC  38 21 00 40 */	addi r1, r1, 0x40
/* 804DB3F0  4E 80 00 20 */	blr 
