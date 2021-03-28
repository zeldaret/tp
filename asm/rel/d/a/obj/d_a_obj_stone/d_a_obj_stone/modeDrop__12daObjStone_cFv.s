lbl_80CEB0F8:
/* 80CEB0F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CEB0FC  7C 08 02 A6 */	mflr r0
/* 80CEB100  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CEB104  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CEB108  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CEB10C  7C 7E 1B 78 */	mr r30, r3
/* 80CEB110  3C 60 80 CF */	lis r3, l_bmdIdx@ha
/* 80CEB114  3B E3 CA B4 */	addi r31, r3, l_bmdIdx@l
/* 80CEB118  80 7E 09 0C */	lwz r3, 0x90c(r30)
/* 80CEB11C  38 03 00 01 */	addi r0, r3, 1
/* 80CEB120  90 1E 09 0C */	stw r0, 0x90c(r30)
/* 80CEB124  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 80CEB128  60 00 20 00 */	ori r0, r0, 0x2000
/* 80CEB12C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80CEB130  88 1E 09 4E */	lbz r0, 0x94e(r30)
/* 80CEB134  28 00 00 00 */	cmplwi r0, 0
/* 80CEB138  41 82 01 EC */	beq lbl_80CEB324
/* 80CEB13C  80 1E 07 C8 */	lwz r0, 0x7c8(r30)
/* 80CEB140  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CEB144  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80CEB148  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 80CEB14C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80CEB150  41 82 00 14 */	beq lbl_80CEB164
/* 80CEB154  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80CEB158  60 00 00 10 */	ori r0, r0, 0x10
/* 80CEB15C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80CEB160  48 00 00 10 */	b lbl_80CEB170
lbl_80CEB164:
/* 80CEB164  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80CEB168  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CEB16C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80CEB170:
/* 80CEB170  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80CEB174  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEB178  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CEB17C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CEB180  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEB184  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CEB188  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CEB18C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CEB190  C0 7E 04 FC */	lfs f3, 0x4fc(r30)
/* 80CEB194  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80CEB198  7C 63 02 14 */	add r3, r3, r0
/* 80CEB19C  C0 43 00 04 */	lfs f2, 4(r3)
/* 80CEB1A0  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80CEB1A4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80CEB1A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CEB1AC  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80CEB1B0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80CEB1B4  FC 00 00 18 */	frsp f0, f0
/* 80CEB1B8  FC 00 00 50 */	fneg f0, f0
/* 80CEB1BC  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB1C0  54 00 10 3A */	slwi r0, r0, 2
/* 80CEB1C4  38 7F 00 94 */	addi r3, r31, 0x94
/* 80CEB1C8  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CEB1CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEB1D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CEB1D4  FC 00 18 18 */	frsp f0, f3
/* 80CEB1D8  FC 00 00 50 */	fneg f0, f0
/* 80CEB1DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEB1E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CEB1E4  FC 00 10 18 */	frsp f0, f2
/* 80CEB1E8  FC 00 00 50 */	fneg f0, f0
/* 80CEB1EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEB1F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CEB1F4  38 61 00 18 */	addi r3, r1, 0x18
/* 80CEB1F8  38 81 00 0C */	addi r4, r1, 0xc
/* 80CEB1FC  7C 65 1B 78 */	mr r5, r3
/* 80CEB200  4B 65 BE 90 */	b PSVECAdd
/* 80CEB204  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CEB208  EC 20 00 32 */	fmuls f1, f0, f0
/* 80CEB20C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CEB210  EC 00 00 32 */	fmuls f0, f0, f0
/* 80CEB214  EC 81 00 2A */	fadds f4, f1, f0
/* 80CEB218  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80CEB21C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80CEB220  40 81 00 58 */	ble lbl_80CEB278
/* 80CEB224  FC 00 20 34 */	frsqrte f0, f4
/* 80CEB228  C8 7F 00 E8 */	lfd f3, 0xe8(r31)
/* 80CEB22C  FC 23 00 32 */	fmul f1, f3, f0
/* 80CEB230  C8 5F 00 F0 */	lfd f2, 0xf0(r31)
/* 80CEB234  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEB238  FC 04 00 32 */	fmul f0, f4, f0
/* 80CEB23C  FC 02 00 28 */	fsub f0, f2, f0
/* 80CEB240  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEB244  FC 23 00 32 */	fmul f1, f3, f0
/* 80CEB248  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEB24C  FC 04 00 32 */	fmul f0, f4, f0
/* 80CEB250  FC 02 00 28 */	fsub f0, f2, f0
/* 80CEB254  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEB258  FC 23 00 32 */	fmul f1, f3, f0
/* 80CEB25C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CEB260  FC 04 00 32 */	fmul f0, f4, f0
/* 80CEB264  FC 02 00 28 */	fsub f0, f2, f0
/* 80CEB268  FC 01 00 32 */	fmul f0, f1, f0
/* 80CEB26C  FC 84 00 32 */	fmul f4, f4, f0
/* 80CEB270  FC 80 20 18 */	frsp f4, f4
/* 80CEB274  48 00 00 88 */	b lbl_80CEB2FC
lbl_80CEB278:
/* 80CEB278  C8 1F 00 F8 */	lfd f0, 0xf8(r31)
/* 80CEB27C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80CEB280  40 80 00 10 */	bge lbl_80CEB290
/* 80CEB284  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CEB288  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
/* 80CEB28C  48 00 00 70 */	b lbl_80CEB2FC
lbl_80CEB290:
/* 80CEB290  D0 81 00 08 */	stfs f4, 8(r1)
/* 80CEB294  80 81 00 08 */	lwz r4, 8(r1)
/* 80CEB298  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CEB29C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CEB2A0  7C 03 00 00 */	cmpw r3, r0
/* 80CEB2A4  41 82 00 14 */	beq lbl_80CEB2B8
/* 80CEB2A8  40 80 00 40 */	bge lbl_80CEB2E8
/* 80CEB2AC  2C 03 00 00 */	cmpwi r3, 0
/* 80CEB2B0  41 82 00 20 */	beq lbl_80CEB2D0
/* 80CEB2B4  48 00 00 34 */	b lbl_80CEB2E8
lbl_80CEB2B8:
/* 80CEB2B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEB2BC  41 82 00 0C */	beq lbl_80CEB2C8
/* 80CEB2C0  38 00 00 01 */	li r0, 1
/* 80CEB2C4  48 00 00 28 */	b lbl_80CEB2EC
lbl_80CEB2C8:
/* 80CEB2C8  38 00 00 02 */	li r0, 2
/* 80CEB2CC  48 00 00 20 */	b lbl_80CEB2EC
lbl_80CEB2D0:
/* 80CEB2D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CEB2D4  41 82 00 0C */	beq lbl_80CEB2E0
/* 80CEB2D8  38 00 00 05 */	li r0, 5
/* 80CEB2DC  48 00 00 10 */	b lbl_80CEB2EC
lbl_80CEB2E0:
/* 80CEB2E0  38 00 00 03 */	li r0, 3
/* 80CEB2E4  48 00 00 08 */	b lbl_80CEB2EC
lbl_80CEB2E8:
/* 80CEB2E8  38 00 00 04 */	li r0, 4
lbl_80CEB2EC:
/* 80CEB2EC  2C 00 00 01 */	cmpwi r0, 1
/* 80CEB2F0  40 82 00 0C */	bne lbl_80CEB2FC
/* 80CEB2F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CEB2F8  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
lbl_80CEB2FC:
/* 80CEB2FC  D0 9E 05 2C */	stfs f4, 0x52c(r30)
/* 80CEB300  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CEB304  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80CEB308  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 80CEB30C  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB310  54 00 10 3A */	slwi r0, r0, 2
/* 80CEB314  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 80CEB318  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CEB31C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEB320  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_80CEB324:
/* 80CEB324  7F C3 F3 78 */	mr r3, r30
/* 80CEB328  38 9E 07 8C */	addi r4, r30, 0x78c
/* 80CEB32C  4B 32 F3 A0 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CEB330  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80CEB334  D0 1E 09 48 */	stfs f0, 0x948(r30)
/* 80CEB338  7F C3 F3 78 */	mr r3, r30
/* 80CEB33C  38 80 00 00 */	li r4, 0
/* 80CEB340  48 00 0F FD */	bl calcRotBaseMtx__12daObjStone_cFPs
/* 80CEB344  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CEB348  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CEB34C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CEB350  7C 08 03 A6 */	mtlr r0
/* 80CEB354  38 21 00 30 */	addi r1, r1, 0x30
/* 80CEB358  4E 80 00 20 */	blr 
