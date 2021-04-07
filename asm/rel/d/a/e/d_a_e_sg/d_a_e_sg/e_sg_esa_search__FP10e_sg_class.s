lbl_8078BC24:
/* 8078BC24  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8078BC28  7C 08 02 A6 */	mflr r0
/* 8078BC2C  90 01 00 84 */	stw r0, 0x84(r1)
/* 8078BC30  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8078BC34  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8078BC38  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8078BC3C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8078BC40  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8078BC44  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8078BC48  39 61 00 50 */	addi r11, r1, 0x50
/* 8078BC4C  4B BD 65 91 */	bl _savegpr_29
/* 8078BC50  7C 7E 1B 78 */	mr r30, r3
/* 8078BC54  3C 60 80 79 */	lis r3, lit_3767@ha /* 0x8078DDA4@ha */
/* 8078BC58  3B E3 DD A4 */	addi r31, r3, lit_3767@l /* 0x8078DDA4@l */
/* 8078BC5C  80 1E 06 CC */	lwz r0, 0x6cc(r30)
/* 8078BC60  90 01 00 0C */	stw r0, 0xc(r1)
/* 8078BC64  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8078BC68  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8078BC6C  38 81 00 0C */	addi r4, r1, 0xc
/* 8078BC70  4B 88 DB 89 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8078BC74  7C 7D 1B 79 */	or. r29, r3, r3
/* 8078BC78  40 82 00 34 */	bne lbl_8078BCAC
/* 8078BC7C  38 00 00 00 */	li r0, 0
/* 8078BC80  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8078BC84  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8078BC88  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078BC8C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8078BC90  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8078BC94  4B AD BC C1 */	bl cM_rndF__Ff
/* 8078BC98  FC 00 08 1E */	fctiwz f0, f1
/* 8078BC9C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078BCA0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8078BCA4  B0 1E 06 60 */	sth r0, 0x660(r30)
/* 8078BCA8  48 00 03 90 */	b lbl_8078C038
lbl_8078BCAC:
/* 8078BCAC  A8 1E 06 60 */	lha r0, 0x660(r30)
/* 8078BCB0  2C 00 00 00 */	cmpwi r0, 0
/* 8078BCB4  40 82 00 A8 */	bne lbl_8078BD5C
/* 8078BCB8  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 8078BCBC  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8078BCC0  28 1E 00 00 */	cmplwi r30, 0
/* 8078BCC4  41 82 00 0C */	beq lbl_8078BCD0
/* 8078BCC8  80 1E 00 04 */	lwz r0, 4(r30)
/* 8078BCCC  48 00 00 08 */	b lbl_8078BCD4
lbl_8078BCD0:
/* 8078BCD0  38 00 FF FF */	li r0, -1
lbl_8078BCD4:
/* 8078BCD4  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8078BCD8  7C 03 00 40 */	cmplw r3, r0
/* 8078BCDC  40 82 00 80 */	bne lbl_8078BD5C
/* 8078BCE0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8078BCE4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8078BCE8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8078BCEC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8078BCF0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8078BCF4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8078BCF8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8078BCFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078BD00  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8078BD04  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8078BD08  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 8078BD0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078BD10  41 81 00 1C */	bgt lbl_8078BD2C
/* 8078BD14  7F C3 F3 78 */	mr r3, r30
/* 8078BD18  38 81 00 1C */	addi r4, r1, 0x1c
/* 8078BD1C  38 A0 00 00 */	li r5, 0
/* 8078BD20  4B FF E8 69 */	bl otherBgCheck__FP10fopAc_ac_cP4cXyzP4cXyz
/* 8078BD24  2C 03 00 00 */	cmpwi r3, 0
/* 8078BD28  41 82 00 34 */	beq lbl_8078BD5C
lbl_8078BD2C:
/* 8078BD2C  38 00 00 00 */	li r0, 0
/* 8078BD30  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8078BD34  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8078BD38  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078BD3C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8078BD40  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8078BD44  4B AD BC 11 */	bl cM_rndF__Ff
/* 8078BD48  FC 00 08 1E */	fctiwz f0, f1
/* 8078BD4C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078BD50  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8078BD54  B0 1E 06 60 */	sth r0, 0x660(r30)
/* 8078BD58  48 00 02 E0 */	b lbl_8078C038
lbl_8078BD5C:
/* 8078BD5C  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 8078BD60  2C 00 00 00 */	cmpwi r0, 0
/* 8078BD64  41 82 00 08 */	beq lbl_8078BD6C
/* 8078BD68  48 00 00 10 */	b lbl_8078BD78
lbl_8078BD6C:
/* 8078BD6C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8078BD70  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 8078BD74  C3 FF 00 48 */	lfs f31, 0x48(r31)
lbl_8078BD78:
/* 8078BD78  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8078BD7C  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8078BD80  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8078BD84  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8078BD88  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8078BD8C  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 8078BD90  38 61 00 10 */	addi r3, r1, 0x10
/* 8078BD94  38 9E 06 78 */	addi r4, r30, 0x678
/* 8078BD98  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8078BD9C  4B AD AD 99 */	bl __mi__4cXyzCFRC3Vec
/* 8078BDA0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8078BDA4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8078BDA8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8078BDAC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8078BDB0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8078BDB4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8078BDB8  AB BE 04 DE */	lha r29, 0x4de(r30)
/* 8078BDBC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8078BDC0  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8078BDC4  EF A1 00 32 */	fmuls f29, f1, f0
/* 8078BDC8  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8078BDCC  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8078BDD0  40 81 00 08 */	ble lbl_8078BDD8
/* 8078BDD4  FF A0 00 90 */	fmr f29, f0
lbl_8078BDD8:
/* 8078BDD8  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 8078BDDC  1C 00 04 B0 */	mulli r0, r0, 0x4b0
/* 8078BDE0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8078BDE4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8078BDE8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8078BDEC  7F C3 04 2E */	lfsx f30, r3, r0
/* 8078BDF0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8078BDF4  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8078BDF8  4B AD B8 7D */	bl cM_atan2s__Fff
/* 8078BDFC  EC 1D 07 B2 */	fmuls f0, f29, f30
/* 8078BE00  FC 00 00 1E */	fctiwz f0, f0
/* 8078BE04  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078BE08  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8078BE0C  7C 00 1A 14 */	add r0, r0, r3
/* 8078BE10  7C 04 07 34 */	extsh r4, r0
/* 8078BE14  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8078BE18  38 A0 00 04 */	li r5, 4
/* 8078BE1C  38 C0 09 00 */	li r6, 0x900
/* 8078BE20  4B AE 47 E9 */	bl cLib_addCalcAngleS2__FPssss
/* 8078BE24  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8078BE28  EC 20 00 32 */	fmuls f1, f0, f0
/* 8078BE2C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8078BE30  EC 00 00 32 */	fmuls f0, f0, f0
/* 8078BE34  EC 41 00 2A */	fadds f2, f1, f0
/* 8078BE38  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078BE3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078BE40  40 81 00 0C */	ble lbl_8078BE4C
/* 8078BE44  FC 00 10 34 */	frsqrte f0, f2
/* 8078BE48  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8078BE4C:
/* 8078BE4C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8078BE50  4B AD B8 25 */	bl cM_atan2s__Fff
/* 8078BE54  7C 03 00 D0 */	neg r0, r3
/* 8078BE58  7C 04 07 34 */	extsh r4, r0
/* 8078BE5C  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 8078BE60  38 A0 00 04 */	li r5, 4
/* 8078BE64  38 C0 09 00 */	li r6, 0x900
/* 8078BE68  4B AE 47 A1 */	bl cLib_addCalcAngleS2__FPssss
/* 8078BE6C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8078BE70  7F A0 E8 50 */	subf r29, r0, r29
/* 8078BE74  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8078BE78  7F A0 07 34 */	extsh r0, r29
/* 8078BE7C  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 8078BE80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8078BE84  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8078BE88  3C 00 43 30 */	lis r0, 0x4330
/* 8078BE8C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8078BE90  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8078BE94  EC 00 08 28 */	fsubs f0, f0, f1
/* 8078BE98  EC 22 00 32 */	fmuls f1, f2, f0
/* 8078BE9C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8078BEA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078BEA4  40 81 00 0C */	ble lbl_8078BEB0
/* 8078BEA8  FC 20 00 90 */	fmr f1, f0
/* 8078BEAC  48 00 00 14 */	b lbl_8078BEC0
lbl_8078BEB0:
/* 8078BEB0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8078BEB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078BEB8  40 80 00 08 */	bge lbl_8078BEC0
/* 8078BEBC  FC 20 00 90 */	fmr f1, f0
lbl_8078BEC0:
/* 8078BEC0  38 7E 06 A8 */	addi r3, r30, 0x6a8
/* 8078BEC4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8078BEC8  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 8078BECC  4B AE 3B 71 */	bl cLib_addCalc2__FPffff
/* 8078BED0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8078BED4  C0 3E 06 94 */	lfs f1, 0x694(r30)
/* 8078BED8  3C 80 80 79 */	lis r4, l_HIO@ha /* 0x8078E0EC@ha */
/* 8078BEDC  38 84 E0 EC */	addi r4, r4, l_HIO@l /* 0x8078E0EC@l */
/* 8078BEE0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8078BEE4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8078BEE8  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8078BEEC  FC 60 F8 90 */	fmr f3, f31
/* 8078BEF0  4B AE 3B 4D */	bl cLib_addCalc2__FPffff
/* 8078BEF4  3B A0 13 88 */	li r29, 0x1388
/* 8078BEF8  38 61 00 28 */	addi r3, r1, 0x28
/* 8078BEFC  4B BB B2 3D */	bl PSVECSquareMag
/* 8078BF00  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078BF04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078BF08  40 81 00 58 */	ble lbl_8078BF60
/* 8078BF0C  FC 00 08 34 */	frsqrte f0, f1
/* 8078BF10  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 8078BF14  FC 44 00 32 */	fmul f2, f4, f0
/* 8078BF18  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 8078BF1C  FC 00 00 32 */	fmul f0, f0, f0
/* 8078BF20  FC 01 00 32 */	fmul f0, f1, f0
/* 8078BF24  FC 03 00 28 */	fsub f0, f3, f0
/* 8078BF28  FC 02 00 32 */	fmul f0, f2, f0
/* 8078BF2C  FC 44 00 32 */	fmul f2, f4, f0
/* 8078BF30  FC 00 00 32 */	fmul f0, f0, f0
/* 8078BF34  FC 01 00 32 */	fmul f0, f1, f0
/* 8078BF38  FC 03 00 28 */	fsub f0, f3, f0
/* 8078BF3C  FC 02 00 32 */	fmul f0, f2, f0
/* 8078BF40  FC 44 00 32 */	fmul f2, f4, f0
/* 8078BF44  FC 00 00 32 */	fmul f0, f0, f0
/* 8078BF48  FC 01 00 32 */	fmul f0, f1, f0
/* 8078BF4C  FC 03 00 28 */	fsub f0, f3, f0
/* 8078BF50  FC 02 00 32 */	fmul f0, f2, f0
/* 8078BF54  FC 21 00 32 */	fmul f1, f1, f0
/* 8078BF58  FC 20 08 18 */	frsp f1, f1
/* 8078BF5C  48 00 00 88 */	b lbl_8078BFE4
lbl_8078BF60:
/* 8078BF60  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 8078BF64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078BF68  40 80 00 10 */	bge lbl_8078BF78
/* 8078BF6C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8078BF70  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8078BF74  48 00 00 70 */	b lbl_8078BFE4
lbl_8078BF78:
/* 8078BF78  D0 21 00 08 */	stfs f1, 8(r1)
/* 8078BF7C  80 81 00 08 */	lwz r4, 8(r1)
/* 8078BF80  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8078BF84  3C 00 7F 80 */	lis r0, 0x7f80
/* 8078BF88  7C 03 00 00 */	cmpw r3, r0
/* 8078BF8C  41 82 00 14 */	beq lbl_8078BFA0
/* 8078BF90  40 80 00 40 */	bge lbl_8078BFD0
/* 8078BF94  2C 03 00 00 */	cmpwi r3, 0
/* 8078BF98  41 82 00 20 */	beq lbl_8078BFB8
/* 8078BF9C  48 00 00 34 */	b lbl_8078BFD0
lbl_8078BFA0:
/* 8078BFA0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078BFA4  41 82 00 0C */	beq lbl_8078BFB0
/* 8078BFA8  38 00 00 01 */	li r0, 1
/* 8078BFAC  48 00 00 28 */	b lbl_8078BFD4
lbl_8078BFB0:
/* 8078BFB0  38 00 00 02 */	li r0, 2
/* 8078BFB4  48 00 00 20 */	b lbl_8078BFD4
lbl_8078BFB8:
/* 8078BFB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078BFBC  41 82 00 0C */	beq lbl_8078BFC8
/* 8078BFC0  38 00 00 05 */	li r0, 5
/* 8078BFC4  48 00 00 10 */	b lbl_8078BFD4
lbl_8078BFC8:
/* 8078BFC8  38 00 00 03 */	li r0, 3
/* 8078BFCC  48 00 00 08 */	b lbl_8078BFD4
lbl_8078BFD0:
/* 8078BFD0  38 00 00 04 */	li r0, 4
lbl_8078BFD4:
/* 8078BFD4  2C 00 00 01 */	cmpwi r0, 1
/* 8078BFD8  40 82 00 0C */	bne lbl_8078BFE4
/* 8078BFDC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8078BFE0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8078BFE4:
/* 8078BFE4  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8078BFE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078BFEC  40 80 00 38 */	bge lbl_8078C024
/* 8078BFF0  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 8078BFF4  1C 00 31 00 */	mulli r0, r0, 0x3100
/* 8078BFF8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8078BFFC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8078C000  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8078C004  7C 43 04 2E */	lfsx f2, r3, r0
/* 8078C008  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8078C00C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8078C010  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8078C014  EC 01 00 2A */	fadds f0, f1, f0
/* 8078C018  FC 00 00 1E */	fctiwz f0, f0
/* 8078C01C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078C020  83 A1 00 3C */	lwz r29, 0x3c(r1)
lbl_8078C024:
/* 8078C024  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 8078C028  7F A4 EB 78 */	mr r4, r29
/* 8078C02C  38 A0 00 01 */	li r5, 1
/* 8078C030  38 C0 40 00 */	li r6, 0x4000
/* 8078C034  4B AE 45 D5 */	bl cLib_addCalcAngleS2__FPssss
lbl_8078C038:
/* 8078C038  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8078C03C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8078C040  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8078C044  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8078C048  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8078C04C  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8078C050  39 61 00 50 */	addi r11, r1, 0x50
/* 8078C054  4B BD 61 D5 */	bl _restgpr_29
/* 8078C058  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8078C05C  7C 08 03 A6 */	mtlr r0
/* 8078C060  38 21 00 80 */	addi r1, r1, 0x80
/* 8078C064  4E 80 00 20 */	blr 
