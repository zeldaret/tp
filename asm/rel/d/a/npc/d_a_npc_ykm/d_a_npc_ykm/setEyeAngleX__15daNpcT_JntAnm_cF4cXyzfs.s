lbl_80B5D0A8:
/* 80B5D0A8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B5D0AC  7C 08 02 A6 */	mflr r0
/* 80B5D0B0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B5D0B4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B5D0B8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B5D0BC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B5D0C0  4B 80 51 1D */	bl _savegpr_29
/* 80B5D0C4  7C 7F 1B 78 */	mr r31, r3
/* 80B5D0C8  7C 80 23 78 */	mr r0, r4
/* 80B5D0CC  FF E0 08 90 */	fmr f31, f1
/* 80B5D0D0  7C BD 2B 78 */	mr r29, r5
/* 80B5D0D4  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha /* 0x80B5D794@ha */
/* 80B5D0D8  3B C3 D7 94 */	addi r30, r3, m__17daNpc_ykM_Param_c@l /* 0x80B5D794@l */
/* 80B5D0DC  38 A0 00 00 */	li r5, 0
/* 80B5D0E0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B5D0E4  28 04 00 00 */	cmplwi r4, 0
/* 80B5D0E8  41 82 01 40 */	beq lbl_80B5D228
/* 80B5D0EC  38 61 00 18 */	addi r3, r1, 0x18
/* 80B5D0F0  7C 05 03 78 */	mr r5, r0
/* 80B5D0F4  4B 70 9A 41 */	bl __mi__4cXyzCFRC3Vec
/* 80B5D0F8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B5D0FC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B5D100  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B5D104  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B5D108  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B5D10C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B5D110  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B5D114  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5D118  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B5D11C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B5D120  38 61 00 0C */	addi r3, r1, 0xc
/* 80B5D124  4B 7E A0 15 */	bl PSVECSquareMag
/* 80B5D128  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5D12C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B5D130  40 81 00 58 */	ble lbl_80B5D188
/* 80B5D134  FC 00 08 34 */	frsqrte f0, f1
/* 80B5D138  C8 9E 01 60 */	lfd f4, 0x160(r30)
/* 80B5D13C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B5D140  C8 7E 01 68 */	lfd f3, 0x168(r30)
/* 80B5D144  FC 00 00 32 */	fmul f0, f0, f0
/* 80B5D148  FC 01 00 32 */	fmul f0, f1, f0
/* 80B5D14C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B5D150  FC 02 00 32 */	fmul f0, f2, f0
/* 80B5D154  FC 44 00 32 */	fmul f2, f4, f0
/* 80B5D158  FC 00 00 32 */	fmul f0, f0, f0
/* 80B5D15C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B5D160  FC 03 00 28 */	fsub f0, f3, f0
/* 80B5D164  FC 02 00 32 */	fmul f0, f2, f0
/* 80B5D168  FC 44 00 32 */	fmul f2, f4, f0
/* 80B5D16C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B5D170  FC 01 00 32 */	fmul f0, f1, f0
/* 80B5D174  FC 03 00 28 */	fsub f0, f3, f0
/* 80B5D178  FC 02 00 32 */	fmul f0, f2, f0
/* 80B5D17C  FC 41 00 32 */	fmul f2, f1, f0
/* 80B5D180  FC 40 10 18 */	frsp f2, f2
/* 80B5D184  48 00 00 90 */	b lbl_80B5D214
lbl_80B5D188:
/* 80B5D188  C8 1E 01 70 */	lfd f0, 0x170(r30)
/* 80B5D18C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B5D190  40 80 00 10 */	bge lbl_80B5D1A0
/* 80B5D194  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B5D198  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B5D19C  48 00 00 78 */	b lbl_80B5D214
lbl_80B5D1A0:
/* 80B5D1A0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B5D1A4  80 81 00 08 */	lwz r4, 8(r1)
/* 80B5D1A8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B5D1AC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B5D1B0  7C 03 00 00 */	cmpw r3, r0
/* 80B5D1B4  41 82 00 14 */	beq lbl_80B5D1C8
/* 80B5D1B8  40 80 00 40 */	bge lbl_80B5D1F8
/* 80B5D1BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B5D1C0  41 82 00 20 */	beq lbl_80B5D1E0
/* 80B5D1C4  48 00 00 34 */	b lbl_80B5D1F8
lbl_80B5D1C8:
/* 80B5D1C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B5D1CC  41 82 00 0C */	beq lbl_80B5D1D8
/* 80B5D1D0  38 00 00 01 */	li r0, 1
/* 80B5D1D4  48 00 00 28 */	b lbl_80B5D1FC
lbl_80B5D1D8:
/* 80B5D1D8  38 00 00 02 */	li r0, 2
/* 80B5D1DC  48 00 00 20 */	b lbl_80B5D1FC
lbl_80B5D1E0:
/* 80B5D1E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B5D1E4  41 82 00 0C */	beq lbl_80B5D1F0
/* 80B5D1E8  38 00 00 05 */	li r0, 5
/* 80B5D1EC  48 00 00 10 */	b lbl_80B5D1FC
lbl_80B5D1F0:
/* 80B5D1F0  38 00 00 03 */	li r0, 3
/* 80B5D1F4  48 00 00 08 */	b lbl_80B5D1FC
lbl_80B5D1F8:
/* 80B5D1F8  38 00 00 04 */	li r0, 4
lbl_80B5D1FC:
/* 80B5D1FC  2C 00 00 01 */	cmpwi r0, 1
/* 80B5D200  40 82 00 10 */	bne lbl_80B5D210
/* 80B5D204  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B5D208  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B5D20C  48 00 00 08 */	b lbl_80B5D214
lbl_80B5D210:
/* 80B5D210  FC 40 08 90 */	fmr f2, f1
lbl_80B5D214:
/* 80B5D214  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B5D218  4B 70 A4 5D */	bl cM_atan2s__Fff
/* 80B5D21C  7C 03 00 D0 */	neg r0, r3
/* 80B5D220  7C 05 07 34 */	extsh r5, r0
/* 80B5D224  7C A5 EA 14 */	add r5, r5, r29
lbl_80B5D228:
/* 80B5D228  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B5D22C  7C A5 02 14 */	add r5, r5, r0
/* 80B5D230  C0 7E 01 1C */	lfs f3, 0x11c(r30)
/* 80B5D234  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B5D238  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B5D23C  C8 5E 01 98 */	lfd f2, 0x198(r30)
/* 80B5D240  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B5D244  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B5D248  3C 60 43 30 */	lis r3, 0x4330
/* 80B5D24C  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B5D250  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B5D254  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B5D258  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B5D25C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B5D260  7C A0 07 34 */	extsh r0, r5
/* 80B5D264  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B5D268  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B5D26C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B5D270  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B5D274  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B5D278  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B5D27C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B5D280  FC 00 00 1E */	fctiwz f0, f0
/* 80B5D284  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B5D288  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B5D28C  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B5D290  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B5D294  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B5D298  39 61 00 60 */	addi r11, r1, 0x60
/* 80B5D29C  4B 80 4F 8D */	bl _restgpr_29
/* 80B5D2A0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B5D2A4  7C 08 03 A6 */	mtlr r0
/* 80B5D2A8  38 21 00 70 */	addi r1, r1, 0x70
/* 80B5D2AC  4E 80 00 20 */	blr 
