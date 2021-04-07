lbl_807BED70:
/* 807BED70  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807BED74  7C 08 02 A6 */	mflr r0
/* 807BED78  90 01 00 64 */	stw r0, 0x64(r1)
/* 807BED7C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 807BED80  93 C1 00 58 */	stw r30, 0x58(r1)
/* 807BED84  7C 7E 1B 78 */	mr r30, r3
/* 807BED88  3C 80 80 7C */	lis r4, lit_3908@ha /* 0x807C1FB8@ha */
/* 807BED8C  3B E4 1F B8 */	addi r31, r4, lit_3908@l /* 0x807C1FB8@l */
/* 807BED90  80 03 06 BC */	lwz r0, 0x6bc(r3)
/* 807BED94  28 00 00 08 */	cmplwi r0, 8
/* 807BED98  41 81 05 A8 */	bgt lbl_807BF340
/* 807BED9C  3C 80 80 7C */	lis r4, lit_4800@ha /* 0x807C21E8@ha */
/* 807BEDA0  38 84 21 E8 */	addi r4, r4, lit_4800@l /* 0x807C21E8@l */
/* 807BEDA4  54 00 10 3A */	slwi r0, r0, 2
/* 807BEDA8  7C 04 00 2E */	lwzx r0, r4, r0
/* 807BEDAC  7C 09 03 A6 */	mtctr r0
/* 807BEDB0  4E 80 04 20 */	bctr 
lbl_807BEDB4:
/* 807BEDB4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807BEDB8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807BEDBC  38 80 00 0E */	li r4, 0xe
/* 807BEDC0  38 A0 00 02 */	li r5, 2
/* 807BEDC4  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807BEDC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807BEDCC  4B FF ED 15 */	bl setBck__8daE_TT_cFiUcff
/* 807BEDD0  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 807BEDD4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807BEDD8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807BEDDC  41 82 01 54 */	beq lbl_807BEF30
/* 807BEDE0  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 807BEDE4  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807BEDE8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807BEDEC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807BEDF0  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 807BEDF4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807BEDF8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807BEDFC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807BEE00  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807BEE04  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 807BEE08  38 61 00 30 */	addi r3, r1, 0x30
/* 807BEE0C  38 81 00 3C */	addi r4, r1, 0x3c
/* 807BEE10  4B B8 85 8D */	bl PSVECSquareDistance
/* 807BEE14  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807BEE18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BEE1C  40 81 00 58 */	ble lbl_807BEE74
/* 807BEE20  FC 00 08 34 */	frsqrte f0, f1
/* 807BEE24  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807BEE28  FC 44 00 32 */	fmul f2, f4, f0
/* 807BEE2C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807BEE30  FC 00 00 32 */	fmul f0, f0, f0
/* 807BEE34  FC 01 00 32 */	fmul f0, f1, f0
/* 807BEE38  FC 03 00 28 */	fsub f0, f3, f0
/* 807BEE3C  FC 02 00 32 */	fmul f0, f2, f0
/* 807BEE40  FC 44 00 32 */	fmul f2, f4, f0
/* 807BEE44  FC 00 00 32 */	fmul f0, f0, f0
/* 807BEE48  FC 01 00 32 */	fmul f0, f1, f0
/* 807BEE4C  FC 03 00 28 */	fsub f0, f3, f0
/* 807BEE50  FC 02 00 32 */	fmul f0, f2, f0
/* 807BEE54  FC 44 00 32 */	fmul f2, f4, f0
/* 807BEE58  FC 00 00 32 */	fmul f0, f0, f0
/* 807BEE5C  FC 01 00 32 */	fmul f0, f1, f0
/* 807BEE60  FC 03 00 28 */	fsub f0, f3, f0
/* 807BEE64  FC 02 00 32 */	fmul f0, f2, f0
/* 807BEE68  FC 21 00 32 */	fmul f1, f1, f0
/* 807BEE6C  FC 20 08 18 */	frsp f1, f1
/* 807BEE70  48 00 00 88 */	b lbl_807BEEF8
lbl_807BEE74:
/* 807BEE74  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807BEE78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BEE7C  40 80 00 10 */	bge lbl_807BEE8C
/* 807BEE80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BEE84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807BEE88  48 00 00 70 */	b lbl_807BEEF8
lbl_807BEE8C:
/* 807BEE8C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807BEE90  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807BEE94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807BEE98  3C 00 7F 80 */	lis r0, 0x7f80
/* 807BEE9C  7C 03 00 00 */	cmpw r3, r0
/* 807BEEA0  41 82 00 14 */	beq lbl_807BEEB4
/* 807BEEA4  40 80 00 40 */	bge lbl_807BEEE4
/* 807BEEA8  2C 03 00 00 */	cmpwi r3, 0
/* 807BEEAC  41 82 00 20 */	beq lbl_807BEECC
/* 807BEEB0  48 00 00 34 */	b lbl_807BEEE4
lbl_807BEEB4:
/* 807BEEB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BEEB8  41 82 00 0C */	beq lbl_807BEEC4
/* 807BEEBC  38 00 00 01 */	li r0, 1
/* 807BEEC0  48 00 00 28 */	b lbl_807BEEE8
lbl_807BEEC4:
/* 807BEEC4  38 00 00 02 */	li r0, 2
/* 807BEEC8  48 00 00 20 */	b lbl_807BEEE8
lbl_807BEECC:
/* 807BEECC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BEED0  41 82 00 0C */	beq lbl_807BEEDC
/* 807BEED4  38 00 00 05 */	li r0, 5
/* 807BEED8  48 00 00 10 */	b lbl_807BEEE8
lbl_807BEEDC:
/* 807BEEDC  38 00 00 03 */	li r0, 3
/* 807BEEE0  48 00 00 08 */	b lbl_807BEEE8
lbl_807BEEE4:
/* 807BEEE4  38 00 00 04 */	li r0, 4
lbl_807BEEE8:
/* 807BEEE8  2C 00 00 01 */	cmpwi r0, 1
/* 807BEEEC  40 82 00 0C */	bne lbl_807BEEF8
/* 807BEEF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BEEF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807BEEF8:
/* 807BEEF8  C0 5E 06 D4 */	lfs f2, 0x6d4(r30)
/* 807BEEFC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807BEF00  EC 02 00 28 */	fsubs f0, f2, f0
/* 807BEF04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BEF08  40 80 00 28 */	bge lbl_807BEF30
/* 807BEF0C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 807BEF10  4B AA 8A 45 */	bl cM_rndF__Ff
/* 807BEF14  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807BEF18  EC 00 08 2A */	fadds f0, f0, f1
/* 807BEF1C  FC 00 00 1E */	fctiwz f0, f0
/* 807BEF20  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 807BEF24  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 807BEF28  98 1E 06 EA */	stb r0, 0x6ea(r30)
/* 807BEF2C  48 00 00 28 */	b lbl_807BEF54
lbl_807BEF30:
/* 807BEF30  4B AA 89 3D */	bl cM_rnd__Fv
/* 807BEF34  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 807BEF38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BEF3C  40 80 00 10 */	bge lbl_807BEF4C
/* 807BEF40  38 00 00 1E */	li r0, 0x1e
/* 807BEF44  98 1E 06 EA */	stb r0, 0x6ea(r30)
/* 807BEF48  48 00 00 0C */	b lbl_807BEF54
lbl_807BEF4C:
/* 807BEF4C  38 00 00 0A */	li r0, 0xa
/* 807BEF50  98 1E 06 EA */	stb r0, 0x6ea(r30)
lbl_807BEF54:
/* 807BEF54  38 00 00 01 */	li r0, 1
/* 807BEF58  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807BEF5C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807BEF60  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807BEF64  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807BEF68  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807BEF6C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807BEF70  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807BEF74  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 807BEF78  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807BEF7C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807BEF80  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807BEF84  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 807BEF88  38 61 00 18 */	addi r3, r1, 0x18
/* 807BEF8C  38 81 00 24 */	addi r4, r1, 0x24
/* 807BEF90  4B B8 84 0D */	bl PSVECSquareDistance
/* 807BEF94  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807BEF98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BEF9C  40 81 00 58 */	ble lbl_807BEFF4
/* 807BEFA0  FC 00 08 34 */	frsqrte f0, f1
/* 807BEFA4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807BEFA8  FC 44 00 32 */	fmul f2, f4, f0
/* 807BEFAC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807BEFB0  FC 00 00 32 */	fmul f0, f0, f0
/* 807BEFB4  FC 01 00 32 */	fmul f0, f1, f0
/* 807BEFB8  FC 03 00 28 */	fsub f0, f3, f0
/* 807BEFBC  FC 02 00 32 */	fmul f0, f2, f0
/* 807BEFC0  FC 44 00 32 */	fmul f2, f4, f0
/* 807BEFC4  FC 00 00 32 */	fmul f0, f0, f0
/* 807BEFC8  FC 01 00 32 */	fmul f0, f1, f0
/* 807BEFCC  FC 03 00 28 */	fsub f0, f3, f0
/* 807BEFD0  FC 02 00 32 */	fmul f0, f2, f0
/* 807BEFD4  FC 44 00 32 */	fmul f2, f4, f0
/* 807BEFD8  FC 00 00 32 */	fmul f0, f0, f0
/* 807BEFDC  FC 01 00 32 */	fmul f0, f1, f0
/* 807BEFE0  FC 03 00 28 */	fsub f0, f3, f0
/* 807BEFE4  FC 02 00 32 */	fmul f0, f2, f0
/* 807BEFE8  FC 21 00 32 */	fmul f1, f1, f0
/* 807BEFEC  FC 20 08 18 */	frsp f1, f1
/* 807BEFF0  48 00 00 88 */	b lbl_807BF078
lbl_807BEFF4:
/* 807BEFF4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807BEFF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BEFFC  40 80 00 10 */	bge lbl_807BF00C
/* 807BF000  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BF004  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807BF008  48 00 00 70 */	b lbl_807BF078
lbl_807BF00C:
/* 807BF00C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807BF010  80 81 00 08 */	lwz r4, 8(r1)
/* 807BF014  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807BF018  3C 00 7F 80 */	lis r0, 0x7f80
/* 807BF01C  7C 03 00 00 */	cmpw r3, r0
/* 807BF020  41 82 00 14 */	beq lbl_807BF034
/* 807BF024  40 80 00 40 */	bge lbl_807BF064
/* 807BF028  2C 03 00 00 */	cmpwi r3, 0
/* 807BF02C  41 82 00 20 */	beq lbl_807BF04C
/* 807BF030  48 00 00 34 */	b lbl_807BF064
lbl_807BF034:
/* 807BF034  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BF038  41 82 00 0C */	beq lbl_807BF044
/* 807BF03C  38 00 00 01 */	li r0, 1
/* 807BF040  48 00 00 28 */	b lbl_807BF068
lbl_807BF044:
/* 807BF044  38 00 00 02 */	li r0, 2
/* 807BF048  48 00 00 20 */	b lbl_807BF068
lbl_807BF04C:
/* 807BF04C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BF050  41 82 00 0C */	beq lbl_807BF05C
/* 807BF054  38 00 00 05 */	li r0, 5
/* 807BF058  48 00 00 10 */	b lbl_807BF068
lbl_807BF05C:
/* 807BF05C  38 00 00 03 */	li r0, 3
/* 807BF060  48 00 00 08 */	b lbl_807BF068
lbl_807BF064:
/* 807BF064  38 00 00 04 */	li r0, 4
lbl_807BF068:
/* 807BF068  2C 00 00 01 */	cmpwi r0, 1
/* 807BF06C  40 82 00 0C */	bne lbl_807BF078
/* 807BF070  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BF074  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807BF078:
/* 807BF078  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807BF07C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BF080  40 81 00 4C */	ble lbl_807BF0CC
/* 807BF084  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807BF088  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 807BF08C  4B AB 1B 79 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807BF090  B0 7E 06 E0 */	sth r3, 0x6e0(r30)
/* 807BF094  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 807BF098  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807BF09C  7C 00 18 50 */	subf r0, r0, r3
/* 807BF0A0  7C 00 07 34 */	extsh r0, r0
/* 807BF0A4  2C 00 30 00 */	cmpwi r0, 0x3000
/* 807BF0A8  40 81 00 10 */	ble lbl_807BF0B8
/* 807BF0AC  38 03 D0 00 */	addi r0, r3, -12288
/* 807BF0B0  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 807BF0B4  48 00 00 30 */	b lbl_807BF0E4
lbl_807BF0B8:
/* 807BF0B8  2C 00 D0 00 */	cmpwi r0, -12288
/* 807BF0BC  40 80 00 28 */	bge lbl_807BF0E4
/* 807BF0C0  38 03 30 00 */	addi r0, r3, 0x3000
/* 807BF0C4  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 807BF0C8  48 00 00 1C */	b lbl_807BF0E4
lbl_807BF0CC:
/* 807BF0CC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 807BF0D0  4B AA 88 BD */	bl cM_rndFX__Ff
/* 807BF0D4  FC 00 08 1E */	fctiwz f0, f1
/* 807BF0D8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 807BF0DC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 807BF0E0  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
lbl_807BF0E4:
/* 807BF0E4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807BF0E8  38 63 00 0C */	addi r3, r3, 0xc
/* 807BF0EC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807BF0F0  4B B6 93 3D */	bl checkPass__12J3DFrameCtrlFf
/* 807BF0F4  2C 03 00 00 */	cmpwi r3, 0
/* 807BF0F8  41 82 00 2C */	beq lbl_807BF124
/* 807BF0FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070255@ha */
/* 807BF100  38 03 02 55 */	addi r0, r3, 0x0255 /* 0x00070255@l */
/* 807BF104  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BF108  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BF10C  38 81 00 14 */	addi r4, r1, 0x14
/* 807BF110  38 A0 FF FF */	li r5, -1
/* 807BF114  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807BF118  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BF11C  7D 89 03 A6 */	mtctr r12
/* 807BF120  4E 80 04 21 */	bctrl 
lbl_807BF124:
/* 807BF124  88 1E 06 EA */	lbz r0, 0x6ea(r30)
/* 807BF128  28 00 00 1E */	cmplwi r0, 0x1e
/* 807BF12C  40 80 00 24 */	bge lbl_807BF150
/* 807BF130  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807BF134  A8 9E 06 E0 */	lha r4, 0x6e0(r30)
/* 807BF138  38 A0 00 08 */	li r5, 8
/* 807BF13C  38 C0 04 00 */	li r6, 0x400
/* 807BF140  38 E0 01 00 */	li r7, 0x100
/* 807BF144  4B AB 13 FD */	bl cLib_addCalcAngleS__FPsssss
/* 807BF148  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807BF14C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_807BF150:
/* 807BF150  88 1E 06 EA */	lbz r0, 0x6ea(r30)
/* 807BF154  28 00 00 00 */	cmplwi r0, 0
/* 807BF158  40 82 00 28 */	bne lbl_807BF180
/* 807BF15C  38 00 00 05 */	li r0, 5
/* 807BF160  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807BF164  7F C3 F3 78 */	mr r3, r30
/* 807BF168  38 80 00 0B */	li r4, 0xb
/* 807BF16C  38 A0 00 00 */	li r5, 0
/* 807BF170  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807BF174  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807BF178  4B FF E9 69 */	bl setBck__8daE_TT_cFiUcff
/* 807BF17C  48 00 01 C4 */	b lbl_807BF340
lbl_807BF180:
/* 807BF180  7F C3 F3 78 */	mr r3, r30
/* 807BF184  4B FF FA 29 */	bl checkPlayerSearch__8daE_TT_cFv
/* 807BF188  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807BF18C  41 82 01 B4 */	beq lbl_807BF340
/* 807BF190  7F C3 F3 78 */	mr r3, r30
/* 807BF194  38 80 00 01 */	li r4, 1
/* 807BF198  38 A0 00 00 */	li r5, 0
/* 807BF19C  4B FF EA 49 */	bl setActionMode__8daE_TT_cFii
/* 807BF1A0  48 00 01 A0 */	b lbl_807BF340
lbl_807BF1A4:
/* 807BF1A4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807BF1A8  38 63 00 0C */	addi r3, r3, 0xc
/* 807BF1AC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 807BF1B0  4B B6 92 7D */	bl checkPass__12J3DFrameCtrlFf
/* 807BF1B4  2C 03 00 00 */	cmpwi r3, 0
/* 807BF1B8  41 82 00 30 */	beq lbl_807BF1E8
/* 807BF1BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007024E@ha */
/* 807BF1C0  38 03 02 4E */	addi r0, r3, 0x024E /* 0x0007024E@l */
/* 807BF1C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BF1C8  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BF1CC  38 81 00 10 */	addi r4, r1, 0x10
/* 807BF1D0  38 A0 00 00 */	li r5, 0
/* 807BF1D4  38 C0 FF FF */	li r6, -1
/* 807BF1D8  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807BF1DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BF1E0  7D 89 03 A6 */	mtctr r12
/* 807BF1E4  4E 80 04 21 */	bctrl 
lbl_807BF1E8:
/* 807BF1E8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807BF1EC  38 80 00 01 */	li r4, 1
/* 807BF1F0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807BF1F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BF1F8  40 82 00 18 */	bne lbl_807BF210
/* 807BF1FC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807BF200  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807BF204  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BF208  41 82 00 08 */	beq lbl_807BF210
/* 807BF20C  38 80 00 00 */	li r4, 0
lbl_807BF210:
/* 807BF210  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807BF214  41 82 01 2C */	beq lbl_807BF340
/* 807BF218  7F C3 F3 78 */	mr r3, r30
/* 807BF21C  38 80 00 0C */	li r4, 0xc
/* 807BF220  38 A0 00 00 */	li r5, 0
/* 807BF224  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807BF228  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807BF22C  4B FF E8 B5 */	bl setBck__8daE_TT_cFiUcff
/* 807BF230  38 00 00 06 */	li r0, 6
/* 807BF234  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807BF238  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807BF23C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807BF240  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 807BF244  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807BF248  48 00 00 F8 */	b lbl_807BF340
lbl_807BF24C:
/* 807BF24C  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 807BF250  60 00 00 01 */	ori r0, r0, 1
/* 807BF254  90 1E 09 50 */	stw r0, 0x950(r30)
/* 807BF258  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 807BF25C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 807BF260  41 82 00 0C */	beq lbl_807BF26C
/* 807BF264  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807BF268  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807BF26C:
/* 807BF26C  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 807BF270  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807BF274  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 807BF278  4C 40 13 82 */	cror 2, 0, 2
/* 807BF27C  40 82 00 C4 */	bne lbl_807BF340
/* 807BF280  7F C3 F3 78 */	mr r3, r30
/* 807BF284  38 80 00 0D */	li r4, 0xd
/* 807BF288  38 A0 00 00 */	li r5, 0
/* 807BF28C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807BF290  4B FF E8 51 */	bl setBck__8daE_TT_cFiUcff
/* 807BF294  38 00 00 07 */	li r0, 7
/* 807BF298  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807BF29C  48 00 00 A4 */	b lbl_807BF340
lbl_807BF2A0:
/* 807BF2A0  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 807BF2A4  60 00 00 01 */	ori r0, r0, 1
/* 807BF2A8  90 1E 09 50 */	stw r0, 0x950(r30)
/* 807BF2AC  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 807BF2B0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807BF2B4  41 82 00 8C */	beq lbl_807BF340
/* 807BF2B8  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 807BF2BC  80 9E 05 BC */	lwz r4, 0x5bc(r30)
/* 807BF2C0  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 807BF2C4  38 00 00 08 */	li r0, 8
/* 807BF2C8  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807BF2CC  4B FF F1 6D */	bl setWaterEffect__8daE_TT_cFv
/* 807BF2D0  38 00 00 05 */	li r0, 5
/* 807BF2D4  98 1E 06 EA */	stb r0, 0x6ea(r30)
/* 807BF2D8  48 00 00 68 */	b lbl_807BF340
lbl_807BF2DC:
/* 807BF2DC  88 1E 06 EA */	lbz r0, 0x6ea(r30)
/* 807BF2E0  28 00 00 00 */	cmplwi r0, 0
/* 807BF2E4  41 82 00 10 */	beq lbl_807BF2F4
/* 807BF2E8  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 807BF2EC  60 00 00 01 */	ori r0, r0, 1
/* 807BF2F0  90 1E 09 50 */	stw r0, 0x950(r30)
lbl_807BF2F4:
/* 807BF2F4  7F C3 F3 78 */	mr r3, r30
/* 807BF2F8  4B FF E8 8D */	bl calcHitGroundSpeed__8daE_TT_cFv
/* 807BF2FC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807BF300  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807BF304  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807BF308  40 82 00 38 */	bne lbl_807BF340
/* 807BF30C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807BF310  38 80 00 01 */	li r4, 1
/* 807BF314  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807BF318  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BF31C  40 82 00 14 */	bne lbl_807BF330
/* 807BF320  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807BF324  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BF328  41 82 00 08 */	beq lbl_807BF330
/* 807BF32C  38 80 00 00 */	li r4, 0
lbl_807BF330:
/* 807BF330  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807BF334  41 82 00 0C */	beq lbl_807BF340
/* 807BF338  38 00 00 00 */	li r0, 0
/* 807BF33C  90 1E 06 BC */	stw r0, 0x6bc(r30)
lbl_807BF340:
/* 807BF340  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 807BF344  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 807BF348  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807BF34C  7C 08 03 A6 */	mtlr r0
/* 807BF350  38 21 00 60 */	addi r1, r1, 0x60
/* 807BF354  4E 80 00 20 */	blr 
