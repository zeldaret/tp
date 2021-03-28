lbl_807AAF70:
/* 807AAF70  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807AAF74  7C 08 02 A6 */	mflr r0
/* 807AAF78  90 01 00 64 */	stw r0, 0x64(r1)
/* 807AAF7C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807AAF80  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807AAF84  39 61 00 50 */	addi r11, r1, 0x50
/* 807AAF88  4B BB 72 50 */	b _savegpr_28
/* 807AAF8C  7C 7C 1B 78 */	mr r28, r3
/* 807AAF90  7C 9D 23 78 */	mr r29, r4
/* 807AAF94  3C 60 80 7B */	lis r3, lit_3909@ha
/* 807AAF98  3B E3 FD 2C */	addi r31, r3, lit_3909@l
/* 807AAF9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807AAFA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807AAFA4  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 807AAFA8  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 807AAFAC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807AAFB0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807AAFB4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AAFB8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807AAFBC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 807AAFC0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807AAFC4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807AAFC8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807AAFCC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807AAFD0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 807AAFD4  38 61 00 28 */	addi r3, r1, 0x28
/* 807AAFD8  38 81 00 34 */	addi r4, r1, 0x34
/* 807AAFDC  4B B9 C3 C0 */	b PSVECSquareDistance
/* 807AAFE0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AAFE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AAFE8  40 81 00 58 */	ble lbl_807AB040
/* 807AAFEC  FC 00 08 34 */	frsqrte f0, f1
/* 807AAFF0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807AAFF4  FC 44 00 32 */	fmul f2, f4, f0
/* 807AAFF8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807AAFFC  FC 00 00 32 */	fmul f0, f0, f0
/* 807AB000  FC 01 00 32 */	fmul f0, f1, f0
/* 807AB004  FC 03 00 28 */	fsub f0, f3, f0
/* 807AB008  FC 02 00 32 */	fmul f0, f2, f0
/* 807AB00C  FC 44 00 32 */	fmul f2, f4, f0
/* 807AB010  FC 00 00 32 */	fmul f0, f0, f0
/* 807AB014  FC 01 00 32 */	fmul f0, f1, f0
/* 807AB018  FC 03 00 28 */	fsub f0, f3, f0
/* 807AB01C  FC 02 00 32 */	fmul f0, f2, f0
/* 807AB020  FC 44 00 32 */	fmul f2, f4, f0
/* 807AB024  FC 00 00 32 */	fmul f0, f0, f0
/* 807AB028  FC 01 00 32 */	fmul f0, f1, f0
/* 807AB02C  FC 03 00 28 */	fsub f0, f3, f0
/* 807AB030  FC 02 00 32 */	fmul f0, f2, f0
/* 807AB034  FF E1 00 32 */	fmul f31, f1, f0
/* 807AB038  FF E0 F8 18 */	frsp f31, f31
/* 807AB03C  48 00 00 90 */	b lbl_807AB0CC
lbl_807AB040:
/* 807AB040  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807AB044  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AB048  40 80 00 10 */	bge lbl_807AB058
/* 807AB04C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AB050  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 807AB054  48 00 00 78 */	b lbl_807AB0CC
lbl_807AB058:
/* 807AB058  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807AB05C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807AB060  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807AB064  3C 00 7F 80 */	lis r0, 0x7f80
/* 807AB068  7C 03 00 00 */	cmpw r3, r0
/* 807AB06C  41 82 00 14 */	beq lbl_807AB080
/* 807AB070  40 80 00 40 */	bge lbl_807AB0B0
/* 807AB074  2C 03 00 00 */	cmpwi r3, 0
/* 807AB078  41 82 00 20 */	beq lbl_807AB098
/* 807AB07C  48 00 00 34 */	b lbl_807AB0B0
lbl_807AB080:
/* 807AB080  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AB084  41 82 00 0C */	beq lbl_807AB090
/* 807AB088  38 00 00 01 */	li r0, 1
/* 807AB08C  48 00 00 28 */	b lbl_807AB0B4
lbl_807AB090:
/* 807AB090  38 00 00 02 */	li r0, 2
/* 807AB094  48 00 00 20 */	b lbl_807AB0B4
lbl_807AB098:
/* 807AB098  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AB09C  41 82 00 0C */	beq lbl_807AB0A8
/* 807AB0A0  38 00 00 05 */	li r0, 5
/* 807AB0A4  48 00 00 10 */	b lbl_807AB0B4
lbl_807AB0A8:
/* 807AB0A8  38 00 00 03 */	li r0, 3
/* 807AB0AC  48 00 00 08 */	b lbl_807AB0B4
lbl_807AB0B0:
/* 807AB0B0  38 00 00 04 */	li r0, 4
lbl_807AB0B4:
/* 807AB0B4  2C 00 00 01 */	cmpwi r0, 1
/* 807AB0B8  40 82 00 10 */	bne lbl_807AB0C8
/* 807AB0BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AB0C0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 807AB0C4  48 00 00 08 */	b lbl_807AB0CC
lbl_807AB0C8:
/* 807AB0C8  FF E0 08 90 */	fmr f31, f1
lbl_807AB0CC:
/* 807AB0CC  88 1C 06 E7 */	lbz r0, 0x6e7(r28)
/* 807AB0D0  28 00 00 00 */	cmplwi r0, 0
/* 807AB0D4  41 82 00 70 */	beq lbl_807AB144
/* 807AB0D8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 807AB0DC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807AB0E0  40 81 00 18 */	ble lbl_807AB0F8
/* 807AB0E4  A8 1C 06 82 */	lha r0, 0x682(r28)
/* 807AB0E8  2C 00 00 00 */	cmpwi r0, 0
/* 807AB0EC  40 82 00 0C */	bne lbl_807AB0F8
/* 807AB0F0  38 00 00 00 */	li r0, 0
/* 807AB0F4  98 1C 06 E7 */	stb r0, 0x6e7(r28)
lbl_807AB0F8:
/* 807AB0F8  2C 1D 00 00 */	cmpwi r29, 0
/* 807AB0FC  41 82 01 F0 */	beq lbl_807AB2EC
/* 807AB100  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807AB104  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807AB108  40 80 01 E4 */	bge lbl_807AB2EC
/* 807AB10C  A8 7C 06 CC */	lha r3, 0x6cc(r28)
/* 807AB110  38 63 80 00 */	addi r3, r3, -32768
/* 807AB114  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807AB118  7C 03 00 50 */	subf r0, r3, r0
/* 807AB11C  7C 03 07 34 */	extsh r3, r0
/* 807AB120  4B BB 9F B0 */	b abs
/* 807AB124  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807AB128  40 80 01 C4 */	bge lbl_807AB2EC
/* 807AB12C  7F 83 E3 78 */	mr r3, r28
/* 807AB130  38 80 00 03 */	li r4, 3
/* 807AB134  38 A0 00 00 */	li r5, 0
/* 807AB138  4B FF CA 2D */	bl setActionMode__8daE_SW_cFss
/* 807AB13C  38 60 00 01 */	li r3, 1
/* 807AB140  48 00 01 B0 */	b lbl_807AB2F0
lbl_807AB144:
/* 807AB144  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807AB148  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807AB14C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807AB150  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AB154  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807AB158  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 807AB15C  C0 5C 04 B0 */	lfs f2, 0x4b0(r28)
/* 807AB160  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 807AB164  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807AB168  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807AB16C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 807AB170  38 61 00 10 */	addi r3, r1, 0x10
/* 807AB174  38 81 00 1C */	addi r4, r1, 0x1c
/* 807AB178  4B B9 C2 24 */	b PSVECSquareDistance
/* 807AB17C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AB180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AB184  40 81 00 58 */	ble lbl_807AB1DC
/* 807AB188  FC 00 08 34 */	frsqrte f0, f1
/* 807AB18C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807AB190  FC 44 00 32 */	fmul f2, f4, f0
/* 807AB194  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807AB198  FC 00 00 32 */	fmul f0, f0, f0
/* 807AB19C  FC 01 00 32 */	fmul f0, f1, f0
/* 807AB1A0  FC 03 00 28 */	fsub f0, f3, f0
/* 807AB1A4  FC 02 00 32 */	fmul f0, f2, f0
/* 807AB1A8  FC 44 00 32 */	fmul f2, f4, f0
/* 807AB1AC  FC 00 00 32 */	fmul f0, f0, f0
/* 807AB1B0  FC 01 00 32 */	fmul f0, f1, f0
/* 807AB1B4  FC 03 00 28 */	fsub f0, f3, f0
/* 807AB1B8  FC 02 00 32 */	fmul f0, f2, f0
/* 807AB1BC  FC 44 00 32 */	fmul f2, f4, f0
/* 807AB1C0  FC 00 00 32 */	fmul f0, f0, f0
/* 807AB1C4  FC 01 00 32 */	fmul f0, f1, f0
/* 807AB1C8  FC 03 00 28 */	fsub f0, f3, f0
/* 807AB1CC  FC 02 00 32 */	fmul f0, f2, f0
/* 807AB1D0  FC 21 00 32 */	fmul f1, f1, f0
/* 807AB1D4  FC 20 08 18 */	frsp f1, f1
/* 807AB1D8  48 00 00 88 */	b lbl_807AB260
lbl_807AB1DC:
/* 807AB1DC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807AB1E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AB1E4  40 80 00 10 */	bge lbl_807AB1F4
/* 807AB1E8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AB1EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807AB1F0  48 00 00 70 */	b lbl_807AB260
lbl_807AB1F4:
/* 807AB1F4  D0 21 00 08 */	stfs f1, 8(r1)
/* 807AB1F8  80 81 00 08 */	lwz r4, 8(r1)
/* 807AB1FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807AB200  3C 00 7F 80 */	lis r0, 0x7f80
/* 807AB204  7C 03 00 00 */	cmpw r3, r0
/* 807AB208  41 82 00 14 */	beq lbl_807AB21C
/* 807AB20C  40 80 00 40 */	bge lbl_807AB24C
/* 807AB210  2C 03 00 00 */	cmpwi r3, 0
/* 807AB214  41 82 00 20 */	beq lbl_807AB234
/* 807AB218  48 00 00 34 */	b lbl_807AB24C
lbl_807AB21C:
/* 807AB21C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AB220  41 82 00 0C */	beq lbl_807AB22C
/* 807AB224  38 00 00 01 */	li r0, 1
/* 807AB228  48 00 00 28 */	b lbl_807AB250
lbl_807AB22C:
/* 807AB22C  38 00 00 02 */	li r0, 2
/* 807AB230  48 00 00 20 */	b lbl_807AB250
lbl_807AB234:
/* 807AB234  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AB238  41 82 00 0C */	beq lbl_807AB244
/* 807AB23C  38 00 00 05 */	li r0, 5
/* 807AB240  48 00 00 10 */	b lbl_807AB250
lbl_807AB244:
/* 807AB244  38 00 00 03 */	li r0, 3
/* 807AB248  48 00 00 08 */	b lbl_807AB250
lbl_807AB24C:
/* 807AB24C  38 00 00 04 */	li r0, 4
lbl_807AB250:
/* 807AB250  2C 00 00 01 */	cmpwi r0, 1
/* 807AB254  40 82 00 0C */	bne lbl_807AB260
/* 807AB258  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AB25C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807AB260:
/* 807AB260  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 807AB264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AB268  40 80 00 84 */	bge lbl_807AB2EC
/* 807AB26C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 807AB270  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807AB274  40 80 00 78 */	bge lbl_807AB2EC
/* 807AB278  38 00 00 01 */	li r0, 1
/* 807AB27C  98 1C 06 E7 */	stb r0, 0x6e7(r28)
/* 807AB280  7F C3 F3 78 */	mr r3, r30
/* 807AB284  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 807AB288  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807AB28C  7D 89 03 A6 */	mtctr r12
/* 807AB290  4E 80 04 21 */	bctrl 
/* 807AB294  28 03 00 00 */	cmplwi r3, 0
/* 807AB298  40 82 00 0C */	bne lbl_807AB2A4
/* 807AB29C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807AB2A0  48 00 00 08 */	b lbl_807AB2A8
lbl_807AB2A4:
/* 807AB2A4  C0 3F 00 64 */	lfs f1, 0x64(r31)
lbl_807AB2A8:
/* 807AB2A8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807AB2AC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807AB2B0  40 81 00 3C */	ble lbl_807AB2EC
/* 807AB2B4  A8 7C 06 CC */	lha r3, 0x6cc(r28)
/* 807AB2B8  38 63 80 00 */	addi r3, r3, -32768
/* 807AB2BC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807AB2C0  7C 03 00 50 */	subf r0, r3, r0
/* 807AB2C4  7C 03 07 34 */	extsh r3, r0
/* 807AB2C8  4B BB 9E 08 */	b abs
/* 807AB2CC  2C 03 18 00 */	cmpwi r3, 0x1800
/* 807AB2D0  40 80 00 1C */	bge lbl_807AB2EC
/* 807AB2D4  7F 83 E3 78 */	mr r3, r28
/* 807AB2D8  38 80 00 0C */	li r4, 0xc
/* 807AB2DC  38 A0 00 00 */	li r5, 0
/* 807AB2E0  4B FF C8 85 */	bl setActionMode__8daE_SW_cFss
/* 807AB2E4  38 60 00 01 */	li r3, 1
/* 807AB2E8  48 00 00 08 */	b lbl_807AB2F0
lbl_807AB2EC:
/* 807AB2EC  38 60 00 00 */	li r3, 0
lbl_807AB2F0:
/* 807AB2F0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807AB2F4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807AB2F8  39 61 00 50 */	addi r11, r1, 0x50
/* 807AB2FC  4B BB 6F 28 */	b _restgpr_28
/* 807AB300  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807AB304  7C 08 03 A6 */	mtlr r0
/* 807AB308  38 21 00 60 */	addi r1, r1, 0x60
/* 807AB30C  4E 80 00 20 */	blr 
