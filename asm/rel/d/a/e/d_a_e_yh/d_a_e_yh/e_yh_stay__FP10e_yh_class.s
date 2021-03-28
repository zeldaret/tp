lbl_807FDE6C:
/* 807FDE6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807FDE70  7C 08 02 A6 */	mflr r0
/* 807FDE74  90 01 00 34 */	stw r0, 0x34(r1)
/* 807FDE78  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807FDE7C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807FDE80  7C 7E 1B 78 */	mr r30, r3
/* 807FDE84  3C 60 80 80 */	lis r3, lit_3902@ha
/* 807FDE88  3B E3 42 7C */	addi r31, r3, lit_3902@l
/* 807FDE8C  38 00 00 0F */	li r0, 0xf
/* 807FDE90  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 807FDE94  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 807FDE98  2C 00 00 02 */	cmpwi r0, 2
/* 807FDE9C  41 82 00 80 */	beq lbl_807FDF1C
/* 807FDEA0  40 80 00 14 */	bge lbl_807FDEB4
/* 807FDEA4  2C 00 00 00 */	cmpwi r0, 0
/* 807FDEA8  41 82 00 18 */	beq lbl_807FDEC0
/* 807FDEAC  40 80 00 1C */	bge lbl_807FDEC8
/* 807FDEB0  48 00 02 FC */	b lbl_807FE1AC
lbl_807FDEB4:
/* 807FDEB4  2C 00 00 05 */	cmpwi r0, 5
/* 807FDEB8  41 82 00 90 */	beq lbl_807FDF48
/* 807FDEBC  48 00 02 F0 */	b lbl_807FE1AC
lbl_807FDEC0:
/* 807FDEC0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FDEC4  D0 1E 06 7C */	stfs f0, 0x67c(r30)
lbl_807FDEC8:
/* 807FDEC8  7F C3 F3 78 */	mr r3, r30
/* 807FDECC  38 80 00 0E */	li r4, 0xe
/* 807FDED0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807FDED4  38 A0 00 00 */	li r5, 0
/* 807FDED8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FDEDC  4B FF F7 E1 */	bl anm_init__FP10e_yh_classifUcf
/* 807FDEE0  7F C3 F3 78 */	mr r3, r30
/* 807FDEE4  38 80 00 15 */	li r4, 0x15
/* 807FDEE8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807FDEEC  38 A0 00 02 */	li r5, 2
/* 807FDEF0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807FDEF4  4B FF F8 75 */	bl leaf_anm_init__FP10e_yh_classifUcf
/* 807FDEF8  2C 03 00 00 */	cmpwi r3, 0
/* 807FDEFC  41 82 02 B0 */	beq lbl_807FE1AC
/* 807FDF00  38 00 00 05 */	li r0, 5
/* 807FDF04  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FDF08  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FDF0C  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 807FDF10  38 00 00 32 */	li r0, 0x32
/* 807FDF14  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807FDF18  48 00 02 94 */	b lbl_807FE1AC
lbl_807FDF1C:
/* 807FDF1C  88 1E 08 54 */	lbz r0, 0x854(r30)
/* 807FDF20  7C 00 07 75 */	extsb. r0, r0
/* 807FDF24  41 82 00 10 */	beq lbl_807FDF34
/* 807FDF28  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807FDF2C  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 807FDF30  48 00 00 0C */	b lbl_807FDF3C
lbl_807FDF34:
/* 807FDF34  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807FDF38  D0 1E 06 7C */	stfs f0, 0x67c(r30)
lbl_807FDF3C:
/* 807FDF3C  38 00 00 01 */	li r0, 1
/* 807FDF40  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FDF44  48 00 02 68 */	b lbl_807FE1AC
lbl_807FDF48:
/* 807FDF48  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807FDF4C  C0 3E 04 A8 */	lfs f1, 0x4a8(r30)
/* 807FDF50  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 807FDF54  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 807FDF58  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FDF5C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FDF60  4B A7 1A DC */	b cLib_addCalc2__FPffff
/* 807FDF64  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807FDF68  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 807FDF6C  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 807FDF70  EC 21 00 2A */	fadds f1, f1, f0
/* 807FDF74  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 807FDF78  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 807FDF7C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FDF80  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FDF84  4B A7 1A B8 */	b cLib_addCalc2__FPffff
/* 807FDF88  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807FDF8C  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 807FDF90  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 807FDF94  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 807FDF98  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FDF9C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FDFA0  4B A7 1A 9C */	b cLib_addCalc2__FPffff
/* 807FDFA4  38 7E 06 90 */	addi r3, r30, 0x690
/* 807FDFA8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FDFAC  FC 40 08 90 */	fmr f2, f1
/* 807FDFB0  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 807FDFB4  4B A7 1A 88 */	b cLib_addCalc2__FPffff
/* 807FDFB8  38 61 00 0C */	addi r3, r1, 0xc
/* 807FDFBC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807FDFC0  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 807FDFC4  4B A6 8B 70 */	b __mi__4cXyzCFRC3Vec
/* 807FDFC8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807FDFCC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807FDFD0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807FDFD4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807FDFD8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807FDFDC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807FDFE0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FDFE4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807FDFE8  38 61 00 18 */	addi r3, r1, 0x18
/* 807FDFEC  4B B4 91 4C */	b PSVECSquareMag
/* 807FDFF0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FDFF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FDFF8  40 81 00 58 */	ble lbl_807FE050
/* 807FDFFC  FC 00 08 34 */	frsqrte f0, f1
/* 807FE000  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807FE004  FC 44 00 32 */	fmul f2, f4, f0
/* 807FE008  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807FE00C  FC 00 00 32 */	fmul f0, f0, f0
/* 807FE010  FC 01 00 32 */	fmul f0, f1, f0
/* 807FE014  FC 03 00 28 */	fsub f0, f3, f0
/* 807FE018  FC 02 00 32 */	fmul f0, f2, f0
/* 807FE01C  FC 44 00 32 */	fmul f2, f4, f0
/* 807FE020  FC 00 00 32 */	fmul f0, f0, f0
/* 807FE024  FC 01 00 32 */	fmul f0, f1, f0
/* 807FE028  FC 03 00 28 */	fsub f0, f3, f0
/* 807FE02C  FC 02 00 32 */	fmul f0, f2, f0
/* 807FE030  FC 44 00 32 */	fmul f2, f4, f0
/* 807FE034  FC 00 00 32 */	fmul f0, f0, f0
/* 807FE038  FC 01 00 32 */	fmul f0, f1, f0
/* 807FE03C  FC 03 00 28 */	fsub f0, f3, f0
/* 807FE040  FC 02 00 32 */	fmul f0, f2, f0
/* 807FE044  FC 21 00 32 */	fmul f1, f1, f0
/* 807FE048  FC 20 08 18 */	frsp f1, f1
/* 807FE04C  48 00 00 88 */	b lbl_807FE0D4
lbl_807FE050:
/* 807FE050  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807FE054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FE058  40 80 00 10 */	bge lbl_807FE068
/* 807FE05C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807FE060  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807FE064  48 00 00 70 */	b lbl_807FE0D4
lbl_807FE068:
/* 807FE068  D0 21 00 08 */	stfs f1, 8(r1)
/* 807FE06C  80 81 00 08 */	lwz r4, 8(r1)
/* 807FE070  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807FE074  3C 00 7F 80 */	lis r0, 0x7f80
/* 807FE078  7C 03 00 00 */	cmpw r3, r0
/* 807FE07C  41 82 00 14 */	beq lbl_807FE090
/* 807FE080  40 80 00 40 */	bge lbl_807FE0C0
/* 807FE084  2C 03 00 00 */	cmpwi r3, 0
/* 807FE088  41 82 00 20 */	beq lbl_807FE0A8
/* 807FE08C  48 00 00 34 */	b lbl_807FE0C0
lbl_807FE090:
/* 807FE090  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807FE094  41 82 00 0C */	beq lbl_807FE0A0
/* 807FE098  38 00 00 01 */	li r0, 1
/* 807FE09C  48 00 00 28 */	b lbl_807FE0C4
lbl_807FE0A0:
/* 807FE0A0  38 00 00 02 */	li r0, 2
/* 807FE0A4  48 00 00 20 */	b lbl_807FE0C4
lbl_807FE0A8:
/* 807FE0A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807FE0AC  41 82 00 0C */	beq lbl_807FE0B8
/* 807FE0B0  38 00 00 05 */	li r0, 5
/* 807FE0B4  48 00 00 10 */	b lbl_807FE0C4
lbl_807FE0B8:
/* 807FE0B8  38 00 00 03 */	li r0, 3
/* 807FE0BC  48 00 00 08 */	b lbl_807FE0C4
lbl_807FE0C0:
/* 807FE0C0  38 00 00 04 */	li r0, 4
lbl_807FE0C4:
/* 807FE0C4  2C 00 00 01 */	cmpwi r0, 1
/* 807FE0C8  40 82 00 0C */	bne lbl_807FE0D4
/* 807FE0CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807FE0D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807FE0D4:
/* 807FE0D4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 807FE0D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FE0DC  40 80 00 7C */	bge lbl_807FE158
/* 807FE0E0  38 7E 06 7C */	addi r3, r30, 0x67c
/* 807FE0E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FE0E8  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 807FE0EC  4B A7 19 94 */	b cLib_addCalc0__FPfff
/* 807FE0F0  88 1E 08 54 */	lbz r0, 0x854(r30)
/* 807FE0F4  7C 00 07 75 */	extsb. r0, r0
/* 807FE0F8  41 82 00 1C */	beq lbl_807FE114
/* 807FE0FC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807FE100  38 80 40 00 */	li r4, 0x4000
/* 807FE104  38 A0 00 04 */	li r5, 4
/* 807FE108  38 C0 02 00 */	li r6, 0x200
/* 807FE10C  4B A7 24 FC */	b cLib_addCalcAngleS2__FPssss
/* 807FE110  48 00 00 18 */	b lbl_807FE128
lbl_807FE114:
/* 807FE114  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807FE118  38 80 C0 00 */	li r4, -16384
/* 807FE11C  38 A0 00 04 */	li r5, 4
/* 807FE120  38 C0 02 00 */	li r6, 0x200
/* 807FE124  4B A7 24 E4 */	b cLib_addCalcAngleS2__FPssss
lbl_807FE128:
/* 807FE128  38 7E 08 48 */	addi r3, r30, 0x848
/* 807FE12C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 807FE130  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FE134  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 807FE138  4B A7 19 04 */	b cLib_addCalc2__FPffff
/* 807FE13C  38 7E 06 94 */	addi r3, r30, 0x694
/* 807FE140  3C 80 80 80 */	lis r4, l_HIO@ha
/* 807FE144  38 84 47 28 */	addi r4, r4, l_HIO@l
/* 807FE148  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 807FE14C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FE150  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 807FE154  4B A7 18 E8 */	b cLib_addCalc2__FPffff
lbl_807FE158:
/* 807FE158  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807FE15C  2C 00 00 00 */	cmpwi r0, 0
/* 807FE160  40 82 00 4C */	bne lbl_807FE1AC
/* 807FE164  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 807FE168  28 00 00 01 */	cmplwi r0, 1
/* 807FE16C  41 82 00 18 */	beq lbl_807FE184
/* 807FE170  7F C3 F3 78 */	mr r3, r30
/* 807FE174  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 807FE178  4B FF F8 61 */	bl pl_check__FP10e_yh_classf
/* 807FE17C  2C 03 00 00 */	cmpwi r3, 0
/* 807FE180  41 82 00 2C */	beq lbl_807FE1AC
lbl_807FE184:
/* 807FE184  88 1E 08 54 */	lbz r0, 0x854(r30)
/* 807FE188  7C 00 07 75 */	extsb. r0, r0
/* 807FE18C  41 82 00 10 */	beq lbl_807FE19C
/* 807FE190  38 00 00 02 */	li r0, 2
/* 807FE194  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FE198  48 00 00 0C */	b lbl_807FE1A4
lbl_807FE19C:
/* 807FE19C  38 00 00 01 */	li r0, 1
/* 807FE1A0  B0 1E 06 6E */	sth r0, 0x66e(r30)
lbl_807FE1A4:
/* 807FE1A4  38 00 00 00 */	li r0, 0
/* 807FE1A8  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_807FE1AC:
/* 807FE1AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807FE1B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807FE1B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807FE1B8  7C 08 03 A6 */	mtlr r0
/* 807FE1BC  38 21 00 30 */	addi r1, r1, 0x30
/* 807FE1C0  4E 80 00 20 */	blr 
