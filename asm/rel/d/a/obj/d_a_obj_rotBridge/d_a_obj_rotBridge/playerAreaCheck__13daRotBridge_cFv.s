lbl_80CBF050:
/* 80CBF050  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CBF054  7C 08 02 A6 */	mflr r0
/* 80CBF058  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CBF05C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80CBF060  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80CBF064  7C 7F 1B 78 */	mr r31, r3
/* 80CBF068  3C 60 80 CC */	lis r3, lit_3626@ha
/* 80CBF06C  3B C3 F6 68 */	addi r30, r3, lit_3626@l
/* 80CBF070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBF074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBF078  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80CBF07C  38 61 00 18 */	addi r3, r1, 0x18
/* 80CBF080  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CBF084  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80CBF088  4B 5A 7A AC */	b __mi__4cXyzCFRC3Vec
/* 80CBF08C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80CBF090  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80CBF094  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CBF098  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CBF09C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80CBF0A0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80CBF0A4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80CBF0A8  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80CBF0AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CBF0B0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CBF0B4  38 61 00 0C */	addi r3, r1, 0xc
/* 80CBF0B8  4B 68 80 80 */	b PSVECSquareMag
/* 80CBF0BC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80CBF0C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBF0C4  40 81 00 58 */	ble lbl_80CBF11C
/* 80CBF0C8  FC 00 08 34 */	frsqrte f0, f1
/* 80CBF0CC  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 80CBF0D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CBF0D4  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 80CBF0D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CBF0DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CBF0E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80CBF0E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80CBF0E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80CBF0EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80CBF0F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CBF0F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CBF0F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CBF0FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CBF100  FC 00 00 32 */	fmul f0, f0, f0
/* 80CBF104  FC 01 00 32 */	fmul f0, f1, f0
/* 80CBF108  FC 03 00 28 */	fsub f0, f3, f0
/* 80CBF10C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CBF110  FC 21 00 32 */	fmul f1, f1, f0
/* 80CBF114  FC 20 08 18 */	frsp f1, f1
/* 80CBF118  48 00 00 88 */	b lbl_80CBF1A0
lbl_80CBF11C:
/* 80CBF11C  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 80CBF120  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBF124  40 80 00 10 */	bge lbl_80CBF134
/* 80CBF128  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CBF12C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CBF130  48 00 00 70 */	b lbl_80CBF1A0
lbl_80CBF134:
/* 80CBF134  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CBF138  80 81 00 08 */	lwz r4, 8(r1)
/* 80CBF13C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CBF140  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CBF144  7C 03 00 00 */	cmpw r3, r0
/* 80CBF148  41 82 00 14 */	beq lbl_80CBF15C
/* 80CBF14C  40 80 00 40 */	bge lbl_80CBF18C
/* 80CBF150  2C 03 00 00 */	cmpwi r3, 0
/* 80CBF154  41 82 00 20 */	beq lbl_80CBF174
/* 80CBF158  48 00 00 34 */	b lbl_80CBF18C
lbl_80CBF15C:
/* 80CBF15C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CBF160  41 82 00 0C */	beq lbl_80CBF16C
/* 80CBF164  38 00 00 01 */	li r0, 1
/* 80CBF168  48 00 00 28 */	b lbl_80CBF190
lbl_80CBF16C:
/* 80CBF16C  38 00 00 02 */	li r0, 2
/* 80CBF170  48 00 00 20 */	b lbl_80CBF190
lbl_80CBF174:
/* 80CBF174  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CBF178  41 82 00 0C */	beq lbl_80CBF184
/* 80CBF17C  38 00 00 05 */	li r0, 5
/* 80CBF180  48 00 00 10 */	b lbl_80CBF190
lbl_80CBF184:
/* 80CBF184  38 00 00 03 */	li r0, 3
/* 80CBF188  48 00 00 08 */	b lbl_80CBF190
lbl_80CBF18C:
/* 80CBF18C  38 00 00 04 */	li r0, 4
lbl_80CBF190:
/* 80CBF190  2C 00 00 01 */	cmpwi r0, 1
/* 80CBF194  40 82 00 0C */	bne lbl_80CBF1A0
/* 80CBF198  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CBF19C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CBF1A0:
/* 80CBF1A0  38 00 00 00 */	li r0, 0
/* 80CBF1A4  98 1F 05 B0 */	stb r0, 0x5b0(r31)
/* 80CBF1A8  3C 60 80 CC */	lis r3, l_HIO@ha
/* 80CBF1AC  38 63 F7 94 */	addi r3, r3, l_HIO@l
/* 80CBF1B0  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80CBF1B4  54 00 10 3A */	slwi r0, r0, 2
/* 80CBF1B8  7C 63 02 14 */	add r3, r3, r0
/* 80CBF1BC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CBF1C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBF1C4  4C 40 13 82 */	cror 2, 0, 2
/* 80CBF1C8  40 82 00 0C */	bne lbl_80CBF1D4
/* 80CBF1CC  38 00 00 01 */	li r0, 1
/* 80CBF1D0  98 1F 05 B0 */	stb r0, 0x5b0(r31)
lbl_80CBF1D4:
/* 80CBF1D4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80CBF1D8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80CBF1DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CBF1E0  7C 08 03 A6 */	mtlr r0
/* 80CBF1E4  38 21 00 40 */	addi r1, r1, 0x40
/* 80CBF1E8  4E 80 00 20 */	blr 
