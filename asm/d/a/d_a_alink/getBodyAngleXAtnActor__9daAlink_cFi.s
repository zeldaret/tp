lbl_800BB084:
/* 800BB084  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800BB088  7C 08 02 A6 */	mflr r0
/* 800BB08C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800BB090  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800BB094  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800BB098  7C 7F 1B 78 */	mr r31, r3
/* 800BB09C  7C 9E 23 78 */	mr r30, r4
/* 800BB0A0  80 03 27 EC */	lwz r0, 0x27ec(r3)
/* 800BB0A4  28 00 00 00 */	cmplwi r0, 0
/* 800BB0A8  41 82 01 CC */	beq lbl_800BB274
/* 800BB0AC  38 81 00 24 */	addi r4, r1, 0x24
/* 800BB0B0  4B FF FF 71 */	bl getBodyAngleXBasePos__9daAlink_cFP4cXyz
/* 800BB0B4  38 61 00 0C */	addi r3, r1, 0xc
/* 800BB0B8  80 9F 27 EC */	lwz r4, 0x27ec(r31)
/* 800BB0BC  38 84 05 38 */	addi r4, r4, 0x538
/* 800BB0C0  38 A1 00 24 */	addi r5, r1, 0x24
/* 800BB0C4  48 1A BA 71 */	bl __mi__4cXyzCFRC3Vec
/* 800BB0C8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800BB0CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800BB0D0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800BB0D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800BB0D8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800BB0DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800BB0E0  7F E3 FB 78 */	mr r3, r31
/* 800BB0E4  38 81 00 18 */	addi r4, r1, 0x18
/* 800BB0E8  48 02 73 95 */	bl multVecMagneBootInvMtx__9daAlink_cFP4cXyz
/* 800BB0EC  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 800BB0F0  C0 02 93 D4 */	lfs f0, lit_11442(r2)
/* 800BB0F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BB0F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800BB0FC  38 61 00 18 */	addi r3, r1, 0x18
/* 800BB100  48 28 C0 39 */	bl PSVECSquareMag
/* 800BB104  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BB108  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BB10C  40 81 00 58 */	ble lbl_800BB164
/* 800BB110  FC 00 08 34 */	frsqrte f0, f1
/* 800BB114  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800BB118  FC 44 00 32 */	fmul f2, f4, f0
/* 800BB11C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800BB120  FC 00 00 32 */	fmul f0, f0, f0
/* 800BB124  FC 01 00 32 */	fmul f0, f1, f0
/* 800BB128  FC 03 00 28 */	fsub f0, f3, f0
/* 800BB12C  FC 02 00 32 */	fmul f0, f2, f0
/* 800BB130  FC 44 00 32 */	fmul f2, f4, f0
/* 800BB134  FC 00 00 32 */	fmul f0, f0, f0
/* 800BB138  FC 01 00 32 */	fmul f0, f1, f0
/* 800BB13C  FC 03 00 28 */	fsub f0, f3, f0
/* 800BB140  FC 02 00 32 */	fmul f0, f2, f0
/* 800BB144  FC 44 00 32 */	fmul f2, f4, f0
/* 800BB148  FC 00 00 32 */	fmul f0, f0, f0
/* 800BB14C  FC 01 00 32 */	fmul f0, f1, f0
/* 800BB150  FC 03 00 28 */	fsub f0, f3, f0
/* 800BB154  FC 02 00 32 */	fmul f0, f2, f0
/* 800BB158  FC 21 00 32 */	fmul f1, f1, f0
/* 800BB15C  FC 20 08 18 */	frsp f1, f1
/* 800BB160  48 00 00 88 */	b lbl_800BB1E8
lbl_800BB164:
/* 800BB164  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800BB168  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BB16C  40 80 00 10 */	bge lbl_800BB17C
/* 800BB170  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800BB174  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800BB178  48 00 00 70 */	b lbl_800BB1E8
lbl_800BB17C:
/* 800BB17C  D0 21 00 08 */	stfs f1, 8(r1)
/* 800BB180  80 81 00 08 */	lwz r4, 8(r1)
/* 800BB184  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800BB188  3C 00 7F 80 */	lis r0, 0x7f80
/* 800BB18C  7C 03 00 00 */	cmpw r3, r0
/* 800BB190  41 82 00 14 */	beq lbl_800BB1A4
/* 800BB194  40 80 00 40 */	bge lbl_800BB1D4
/* 800BB198  2C 03 00 00 */	cmpwi r3, 0
/* 800BB19C  41 82 00 20 */	beq lbl_800BB1BC
/* 800BB1A0  48 00 00 34 */	b lbl_800BB1D4
lbl_800BB1A4:
/* 800BB1A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BB1A8  41 82 00 0C */	beq lbl_800BB1B4
/* 800BB1AC  38 00 00 01 */	li r0, 1
/* 800BB1B0  48 00 00 28 */	b lbl_800BB1D8
lbl_800BB1B4:
/* 800BB1B4  38 00 00 02 */	li r0, 2
/* 800BB1B8  48 00 00 20 */	b lbl_800BB1D8
lbl_800BB1BC:
/* 800BB1BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BB1C0  41 82 00 0C */	beq lbl_800BB1CC
/* 800BB1C4  38 00 00 05 */	li r0, 5
/* 800BB1C8  48 00 00 10 */	b lbl_800BB1D8
lbl_800BB1CC:
/* 800BB1CC  38 00 00 03 */	li r0, 3
/* 800BB1D0  48 00 00 08 */	b lbl_800BB1D8
lbl_800BB1D4:
/* 800BB1D4  38 00 00 04 */	li r0, 4
lbl_800BB1D8:
/* 800BB1D8  2C 00 00 01 */	cmpwi r0, 1
/* 800BB1DC  40 82 00 0C */	bne lbl_800BB1E8
/* 800BB1E0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800BB1E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800BB1E8:
/* 800BB1E8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800BB1EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BB1F0  40 80 00 0C */	bge lbl_800BB1FC
/* 800BB1F4  3B C0 00 00 */	li r30, 0
/* 800BB1F8  48 00 00 80 */	b lbl_800BB278
lbl_800BB1FC:
/* 800BB1FC  38 61 00 18 */	addi r3, r1, 0x18
/* 800BB200  48 1A BF 51 */	bl atan2sY_XZ__4cXyzCFv
/* 800BB204  2C 1E 00 00 */	cmpwi r30, 0
/* 800BB208  41 82 00 40 */	beq lbl_800BB248
/* 800BB20C  3C 80 80 39 */	lis r4, m__17daAlinkHIO_cut_c0@ha
/* 800BB210  38 A4 DE 8C */	addi r5, r4, m__17daAlinkHIO_cut_c0@l
/* 800BB214  A8 85 00 5E */	lha r4, 0x5e(r5)
/* 800BB218  A8 05 00 60 */	lha r0, 0x60(r5)
/* 800BB21C  7C 63 07 34 */	extsh r3, r3
/* 800BB220  7C 03 00 00 */	cmpw r3, r0
/* 800BB224  40 80 00 08 */	bge lbl_800BB22C
/* 800BB228  48 00 00 18 */	b lbl_800BB240
lbl_800BB22C:
/* 800BB22C  7C 80 07 34 */	extsh r0, r4
/* 800BB230  7C 03 00 00 */	cmpw r3, r0
/* 800BB234  40 81 00 08 */	ble lbl_800BB23C
/* 800BB238  7C 83 23 78 */	mr r3, r4
lbl_800BB23C:
/* 800BB23C  7C 60 1B 78 */	mr r0, r3
lbl_800BB240:
/* 800BB240  7C 1E 07 34 */	extsh r30, r0
/* 800BB244  48 00 00 34 */	b lbl_800BB278
lbl_800BB248:
/* 800BB248  7C 63 07 34 */	extsh r3, r3
/* 800BB24C  2C 03 E0 00 */	cmpwi r3, -8192
/* 800BB250  40 80 00 0C */	bge lbl_800BB25C
/* 800BB254  38 00 E0 00 */	li r0, -8192
/* 800BB258  48 00 00 14 */	b lbl_800BB26C
lbl_800BB25C:
/* 800BB25C  2C 03 20 00 */	cmpwi r3, 0x2000
/* 800BB260  38 00 20 00 */	li r0, 0x2000
/* 800BB264  41 81 00 08 */	bgt lbl_800BB26C
/* 800BB268  7C 60 1B 78 */	mr r0, r3
lbl_800BB26C:
/* 800BB26C  7C 1E 07 34 */	extsh r30, r0
/* 800BB270  48 00 00 08 */	b lbl_800BB278
lbl_800BB274:
/* 800BB274  3B C0 00 00 */	li r30, 0
lbl_800BB278:
/* 800BB278  7F E3 FB 78 */	mr r3, r31
/* 800BB27C  4B FF 68 ED */	bl checkNotItemSinkLimit__9daAlink_cFv
/* 800BB280  2C 03 00 00 */	cmpwi r3, 0
/* 800BB284  41 82 00 10 */	beq lbl_800BB294
/* 800BB288  7F C0 07 35 */	extsh. r0, r30
/* 800BB28C  40 81 00 08 */	ble lbl_800BB294
/* 800BB290  3B C0 00 00 */	li r30, 0
lbl_800BB294:
/* 800BB294  7F C3 F3 78 */	mr r3, r30
/* 800BB298  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800BB29C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800BB2A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800BB2A4  7C 08 03 A6 */	mtlr r0
/* 800BB2A8  38 21 00 40 */	addi r1, r1, 0x40
/* 800BB2AC  4E 80 00 20 */	blr 
