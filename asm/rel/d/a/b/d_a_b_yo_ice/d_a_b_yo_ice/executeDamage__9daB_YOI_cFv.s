lbl_8063C900:
/* 8063C900  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8063C904  7C 08 02 A6 */	mflr r0
/* 8063C908  90 01 00 74 */	stw r0, 0x74(r1)
/* 8063C90C  39 61 00 70 */	addi r11, r1, 0x70
/* 8063C910  4B D2 58 CC */	b _savegpr_29
/* 8063C914  7C 7E 1B 78 */	mr r30, r3
/* 8063C918  3C 60 80 64 */	lis r3, lit_3776@ha
/* 8063C91C  3B E3 DC 84 */	addi r31, r3, lit_3776@l
/* 8063C920  38 61 00 1C */	addi r3, r1, 0x1c
/* 8063C924  80 9E 06 68 */	lwz r4, 0x668(r30)
/* 8063C928  48 00 13 2D */	bl getIceCenterPos__8daB_YO_cFv
/* 8063C92C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8063C930  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8063C934  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8063C938  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8063C93C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8063C940  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8063C944  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 8063C948  2C 00 00 01 */	cmpwi r0, 1
/* 8063C94C  41 82 03 2C */	beq lbl_8063CC78
/* 8063C950  40 80 00 10 */	bge lbl_8063C960
/* 8063C954  2C 00 00 00 */	cmpwi r0, 0
/* 8063C958  40 80 00 14 */	bge lbl_8063C96C
/* 8063C95C  48 00 03 1C */	b lbl_8063CC78
lbl_8063C960:
/* 8063C960  2C 00 00 03 */	cmpwi r0, 3
/* 8063C964  40 80 03 14 */	bge lbl_8063CC78
/* 8063C968  48 00 01 34 */	b lbl_8063CA9C
lbl_8063C96C:
/* 8063C96C  38 00 00 02 */	li r0, 2
/* 8063C970  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8063C974  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8063C978  4B C2 B0 14 */	b cM_rndFX__Ff
/* 8063C97C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8063C980  EC 00 08 2A */	fadds f0, f0, f1
/* 8063C984  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8063C988  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8063C98C  4B C2 B0 00 */	b cM_rndFX__Ff
/* 8063C990  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8063C994  EC 00 08 2A */	fadds f0, f0, f1
/* 8063C998  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8063C99C  38 00 00 00 */	li r0, 0
/* 8063C9A0  B0 1E 06 7C */	sth r0, 0x67c(r30)
/* 8063C9A4  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 8063C9A8  4B C2 AE C4 */	b cM_rnd__Fv
/* 8063C9AC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8063C9B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C9B4  40 80 00 28 */	bge lbl_8063C9DC
/* 8063C9B8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8063C9BC  4B C2 AF 98 */	b cM_rndF__Ff
/* 8063C9C0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8063C9C4  EC 00 08 2A */	fadds f0, f0, f1
/* 8063C9C8  FC 00 00 1E */	fctiwz f0, f0
/* 8063C9CC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8063C9D0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8063C9D4  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 8063C9D8  48 00 00 24 */	b lbl_8063C9FC
lbl_8063C9DC:
/* 8063C9DC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8063C9E0  4B C2 AF 74 */	b cM_rndF__Ff
/* 8063C9E4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8063C9E8  EC 00 08 2A */	fadds f0, f0, f1
/* 8063C9EC  FC 00 00 1E */	fctiwz f0, f0
/* 8063C9F0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8063C9F4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8063C9F8  B0 1E 06 9E */	sth r0, 0x69e(r30)
lbl_8063C9FC:
/* 8063C9FC  38 61 00 28 */	addi r3, r1, 0x28
/* 8063CA00  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8063CA04  4B C3 42 00 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8063CA08  80 9E 06 68 */	lwz r4, 0x668(r30)
/* 8063CA0C  A8 04 04 DE */	lha r0, 0x4de(r4)
/* 8063CA10  7C 00 18 50 */	subf r0, r0, r3
/* 8063CA14  7C 00 07 34 */	extsh r0, r0
/* 8063CA18  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 8063CA1C  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 8063CA20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8063CA24  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8063CA28  3C 00 43 30 */	lis r0, 0x4330
/* 8063CA2C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8063CA30  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8063CA34  EC 00 08 28 */	fsubs f0, f0, f1
/* 8063CA38  EC 02 00 32 */	fmuls f0, f2, f0
/* 8063CA3C  FC 00 00 1E */	fctiwz f0, f0
/* 8063CA40  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8063CA44  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8063CA48  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 8063CA4C  4B C2 AF 40 */	b cM_rndFX__Ff
/* 8063CA50  80 7E 06 68 */	lwz r3, 0x668(r30)
/* 8063CA54  A8 63 04 DE */	lha r3, 0x4de(r3)
/* 8063CA58  7F A0 07 34 */	extsh r0, r29
/* 8063CA5C  7C 03 02 14 */	add r0, r3, r0
/* 8063CA60  C8 5F 00 90 */	lfd f2, 0x90(r31)
/* 8063CA64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8063CA68  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8063CA6C  3C 00 43 30 */	lis r0, 0x4330
/* 8063CA70  90 01 00 48 */	stw r0, 0x48(r1)
/* 8063CA74  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8063CA78  EC 00 10 28 */	fsubs f0, f0, f2
/* 8063CA7C  EC 00 08 2A */	fadds f0, f0, f1
/* 8063CA80  FC 00 00 1E */	fctiwz f0, f0
/* 8063CA84  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8063CA88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8063CA8C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8063CA90  38 00 00 00 */	li r0, 0
/* 8063CA94  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8063CA98  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
lbl_8063CA9C:
/* 8063CA9C  38 7E 06 9E */	addi r3, r30, 0x69e
/* 8063CAA0  38 80 00 00 */	li r4, 0
/* 8063CAA4  38 A0 00 40 */	li r5, 0x40
/* 8063CAA8  4B C3 40 E8 */	b cLib_chaseAngleS__FPsss
/* 8063CAAC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8063CAB0  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 8063CAB4  7C 03 02 14 */	add r0, r3, r0
/* 8063CAB8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8063CABC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8063CAC0  38 80 00 00 */	li r4, 0
/* 8063CAC4  38 A0 00 40 */	li r5, 0x40
/* 8063CAC8  4B C3 40 C8 */	b cLib_chaseAngleS__FPsss
/* 8063CACC  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 8063CAD0  38 80 00 00 */	li r4, 0
/* 8063CAD4  38 A0 00 40 */	li r5, 0x40
/* 8063CAD8  4B C3 40 B8 */	b cLib_chaseAngleS__FPsss
/* 8063CADC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8063CAE0  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8063CAE4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8063CAE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8063CAEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8063CAF0  40 80 00 18 */	bge lbl_8063CB08
/* 8063CAF4  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063CAF8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8063CAFC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8063CB00  4B C3 3C 40 */	b cLib_chaseF__FPfff
/* 8063CB04  48 00 00 14 */	b lbl_8063CB18
lbl_8063CB08:
/* 8063CB08  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063CB0C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8063CB10  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8063CB14  4B C3 3C 2C */	b cLib_chaseF__FPfff
lbl_8063CB18:
/* 8063CB18  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8063CB1C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8063CB20  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8063CB24  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063CB28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8063CB2C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8063CB30  38 61 00 10 */	addi r3, r1, 0x10
/* 8063CB34  4B D0 A6 04 */	b PSVECSquareMag
/* 8063CB38  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063CB3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063CB40  40 81 00 58 */	ble lbl_8063CB98
/* 8063CB44  FC 00 08 34 */	frsqrte f0, f1
/* 8063CB48  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 8063CB4C  FC 44 00 32 */	fmul f2, f4, f0
/* 8063CB50  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 8063CB54  FC 00 00 32 */	fmul f0, f0, f0
/* 8063CB58  FC 01 00 32 */	fmul f0, f1, f0
/* 8063CB5C  FC 03 00 28 */	fsub f0, f3, f0
/* 8063CB60  FC 02 00 32 */	fmul f0, f2, f0
/* 8063CB64  FC 44 00 32 */	fmul f2, f4, f0
/* 8063CB68  FC 00 00 32 */	fmul f0, f0, f0
/* 8063CB6C  FC 01 00 32 */	fmul f0, f1, f0
/* 8063CB70  FC 03 00 28 */	fsub f0, f3, f0
/* 8063CB74  FC 02 00 32 */	fmul f0, f2, f0
/* 8063CB78  FC 44 00 32 */	fmul f2, f4, f0
/* 8063CB7C  FC 00 00 32 */	fmul f0, f0, f0
/* 8063CB80  FC 01 00 32 */	fmul f0, f1, f0
/* 8063CB84  FC 03 00 28 */	fsub f0, f3, f0
/* 8063CB88  FC 02 00 32 */	fmul f0, f2, f0
/* 8063CB8C  FC 21 00 32 */	fmul f1, f1, f0
/* 8063CB90  FC 20 08 18 */	frsp f1, f1
/* 8063CB94  48 00 00 88 */	b lbl_8063CC1C
lbl_8063CB98:
/* 8063CB98  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 8063CB9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063CBA0  40 80 00 10 */	bge lbl_8063CBB0
/* 8063CBA4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063CBA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8063CBAC  48 00 00 70 */	b lbl_8063CC1C
lbl_8063CBB0:
/* 8063CBB0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8063CBB4  80 81 00 08 */	lwz r4, 8(r1)
/* 8063CBB8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8063CBBC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8063CBC0  7C 03 00 00 */	cmpw r3, r0
/* 8063CBC4  41 82 00 14 */	beq lbl_8063CBD8
/* 8063CBC8  40 80 00 40 */	bge lbl_8063CC08
/* 8063CBCC  2C 03 00 00 */	cmpwi r3, 0
/* 8063CBD0  41 82 00 20 */	beq lbl_8063CBF0
/* 8063CBD4  48 00 00 34 */	b lbl_8063CC08
lbl_8063CBD8:
/* 8063CBD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063CBDC  41 82 00 0C */	beq lbl_8063CBE8
/* 8063CBE0  38 00 00 01 */	li r0, 1
/* 8063CBE4  48 00 00 28 */	b lbl_8063CC0C
lbl_8063CBE8:
/* 8063CBE8  38 00 00 02 */	li r0, 2
/* 8063CBEC  48 00 00 20 */	b lbl_8063CC0C
lbl_8063CBF0:
/* 8063CBF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063CBF4  41 82 00 0C */	beq lbl_8063CC00
/* 8063CBF8  38 00 00 05 */	li r0, 5
/* 8063CBFC  48 00 00 10 */	b lbl_8063CC0C
lbl_8063CC00:
/* 8063CC00  38 00 00 03 */	li r0, 3
/* 8063CC04  48 00 00 08 */	b lbl_8063CC0C
lbl_8063CC08:
/* 8063CC08  38 00 00 04 */	li r0, 4
lbl_8063CC0C:
/* 8063CC0C  2C 00 00 01 */	cmpwi r0, 1
/* 8063CC10  40 82 00 0C */	bne lbl_8063CC1C
/* 8063CC14  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063CC18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8063CC1C:
/* 8063CC1C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8063CC20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063CC24  4C 41 13 82 */	cror 2, 1, 2
/* 8063CC28  40 82 00 50 */	bne lbl_8063CC78
/* 8063CC2C  7F C3 F3 78 */	mr r3, r30
/* 8063CC30  4B FF DA C9 */	bl setWallBreakIceEffect__9daB_YOI_cFv
/* 8063CC34  80 7E 06 68 */	lwz r3, 0x668(r30)
/* 8063CC38  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 8063CC3C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8063CC40  4B FF 2F AC */	b onIceBreak__8daB_YO_cFUs
/* 8063CC44  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702FC@ha */
/* 8063CC48  38 03 02 FC */	addi r0, r3, 0x02FC /* 0x000702FC@l */
/* 8063CC4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063CC50  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063CC54  38 81 00 0C */	addi r4, r1, 0xc
/* 8063CC58  38 A0 00 00 */	li r5, 0
/* 8063CC5C  38 C0 FF FF */	li r6, -1
/* 8063CC60  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063CC64  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8063CC68  7D 89 03 A6 */	mtctr r12
/* 8063CC6C  4E 80 04 21 */	bctrl 
/* 8063CC70  7F C3 F3 78 */	mr r3, r30
/* 8063CC74  4B 9D D0 08 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8063CC78:
/* 8063CC78  39 61 00 70 */	addi r11, r1, 0x70
/* 8063CC7C  4B D2 55 AC */	b _restgpr_29
/* 8063CC80  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8063CC84  7C 08 03 A6 */	mtlr r0
/* 8063CC88  38 21 00 70 */	addi r1, r1, 0x70
/* 8063CC8C  4E 80 00 20 */	blr 
