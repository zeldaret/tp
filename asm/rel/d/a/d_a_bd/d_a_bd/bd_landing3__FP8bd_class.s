lbl_804D8798:
/* 804D8798  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D879C  7C 08 02 A6 */	mflr r0
/* 804D87A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D87A4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804D87A8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804D87AC  7C 7F 1B 78 */	mr r31, r3
/* 804D87B0  3C 60 80 4E */	lis r3, lit_3942@ha /* 0x804D9E64@ha */
/* 804D87B4  3B C3 9E 64 */	addi r30, r3, lit_3942@l /* 0x804D9E64@l */
/* 804D87B8  A8 1F 06 1C */	lha r0, 0x61c(r31)
/* 804D87BC  2C 00 00 01 */	cmpwi r0, 1
/* 804D87C0  41 82 00 1C */	beq lbl_804D87DC
/* 804D87C4  40 80 00 18 */	bge lbl_804D87DC
/* 804D87C8  2C 00 00 00 */	cmpwi r0, 0
/* 804D87CC  40 80 00 08 */	bge lbl_804D87D4
/* 804D87D0  48 00 00 0C */	b lbl_804D87DC
lbl_804D87D4:
/* 804D87D4  38 00 00 01 */	li r0, 1
/* 804D87D8  B0 1F 06 1C */	sth r0, 0x61c(r31)
lbl_804D87DC:
/* 804D87DC  80 7F 06 2C */	lwz r3, 0x62c(r31)
/* 804D87E0  28 03 00 00 */	cmplwi r3, 0
/* 804D87E4  41 82 00 20 */	beq lbl_804D8804
/* 804D87E8  C0 03 00 00 */	lfs f0, 0(r3)
/* 804D87EC  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 804D87F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 804D87F4  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 804D87F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 804D87FC  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 804D8800  48 00 00 1C */	b lbl_804D881C
lbl_804D8804:
/* 804D8804  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 804D8808  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 804D880C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 804D8810  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 804D8814  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 804D8818  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
lbl_804D881C:
/* 804D881C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 804D8820  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 804D8824  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 804D8828  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 804D882C  FC 00 02 10 */	fabs f0, f0
/* 804D8830  FC 60 00 18 */	frsp f3, f0
/* 804D8834  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804D8838  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 804D883C  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 804D8840  4B D9 71 FD */	bl cLib_addCalc2__FPffff
/* 804D8844  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 804D8848  FC 00 02 10 */	fabs f0, f0
/* 804D884C  FC 60 00 18 */	frsp f3, f0
/* 804D8850  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 804D8854  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 804D8858  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 804D885C  4B D9 71 E1 */	bl cLib_addCalc2__FPffff
/* 804D8860  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 804D8864  FC 00 02 10 */	fabs f0, f0
/* 804D8868  FC 60 00 18 */	frsp f3, f0
/* 804D886C  38 7F 04 D8 */	addi r3, r31, 0x4d8
/* 804D8870  C0 3F 05 CC */	lfs f1, 0x5cc(r31)
/* 804D8874  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 804D8878  4B D9 71 C5 */	bl cLib_addCalc2__FPffff
/* 804D887C  38 61 00 0C */	addi r3, r1, 0xc
/* 804D8880  38 9F 05 C4 */	addi r4, r31, 0x5c4
/* 804D8884  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804D8888  4B D8 E2 AD */	bl __mi__4cXyzCFRC3Vec
/* 804D888C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804D8890  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804D8894  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D8898  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D889C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 804D88A0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 804D88A4  4B D8 ED D1 */	bl cM_atan2s__Fff
/* 804D88A8  7C 64 1B 78 */	mr r4, r3
/* 804D88AC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 804D88B0  38 A0 00 04 */	li r5, 4
/* 804D88B4  38 C0 03 E8 */	li r6, 0x3e8
/* 804D88B8  4B D9 7D 51 */	bl cLib_addCalcAngleS2__FPssss
/* 804D88BC  38 61 00 18 */	addi r3, r1, 0x18
/* 804D88C0  4B E6 E8 79 */	bl PSVECSquareMag
/* 804D88C4  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 804D88C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D88CC  40 81 00 58 */	ble lbl_804D8924
/* 804D88D0  FC 00 08 34 */	frsqrte f0, f1
/* 804D88D4  C8 9E 00 20 */	lfd f4, 0x20(r30)
/* 804D88D8  FC 44 00 32 */	fmul f2, f4, f0
/* 804D88DC  C8 7E 00 28 */	lfd f3, 0x28(r30)
/* 804D88E0  FC 00 00 32 */	fmul f0, f0, f0
/* 804D88E4  FC 01 00 32 */	fmul f0, f1, f0
/* 804D88E8  FC 03 00 28 */	fsub f0, f3, f0
/* 804D88EC  FC 02 00 32 */	fmul f0, f2, f0
/* 804D88F0  FC 44 00 32 */	fmul f2, f4, f0
/* 804D88F4  FC 00 00 32 */	fmul f0, f0, f0
/* 804D88F8  FC 01 00 32 */	fmul f0, f1, f0
/* 804D88FC  FC 03 00 28 */	fsub f0, f3, f0
/* 804D8900  FC 02 00 32 */	fmul f0, f2, f0
/* 804D8904  FC 44 00 32 */	fmul f2, f4, f0
/* 804D8908  FC 00 00 32 */	fmul f0, f0, f0
/* 804D890C  FC 01 00 32 */	fmul f0, f1, f0
/* 804D8910  FC 03 00 28 */	fsub f0, f3, f0
/* 804D8914  FC 02 00 32 */	fmul f0, f2, f0
/* 804D8918  FC 21 00 32 */	fmul f1, f1, f0
/* 804D891C  FC 20 08 18 */	frsp f1, f1
/* 804D8920  48 00 00 88 */	b lbl_804D89A8
lbl_804D8924:
/* 804D8924  C8 1E 00 30 */	lfd f0, 0x30(r30)
/* 804D8928  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D892C  40 80 00 10 */	bge lbl_804D893C
/* 804D8930  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804D8934  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804D8938  48 00 00 70 */	b lbl_804D89A8
lbl_804D893C:
/* 804D893C  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D8940  80 81 00 08 */	lwz r4, 8(r1)
/* 804D8944  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804D8948  3C 00 7F 80 */	lis r0, 0x7f80
/* 804D894C  7C 03 00 00 */	cmpw r3, r0
/* 804D8950  41 82 00 14 */	beq lbl_804D8964
/* 804D8954  40 80 00 40 */	bge lbl_804D8994
/* 804D8958  2C 03 00 00 */	cmpwi r3, 0
/* 804D895C  41 82 00 20 */	beq lbl_804D897C
/* 804D8960  48 00 00 34 */	b lbl_804D8994
lbl_804D8964:
/* 804D8964  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D8968  41 82 00 0C */	beq lbl_804D8974
/* 804D896C  38 00 00 01 */	li r0, 1
/* 804D8970  48 00 00 28 */	b lbl_804D8998
lbl_804D8974:
/* 804D8974  38 00 00 02 */	li r0, 2
/* 804D8978  48 00 00 20 */	b lbl_804D8998
lbl_804D897C:
/* 804D897C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D8980  41 82 00 0C */	beq lbl_804D898C
/* 804D8984  38 00 00 05 */	li r0, 5
/* 804D8988  48 00 00 10 */	b lbl_804D8998
lbl_804D898C:
/* 804D898C  38 00 00 03 */	li r0, 3
/* 804D8990  48 00 00 08 */	b lbl_804D8998
lbl_804D8994:
/* 804D8994  38 00 00 04 */	li r0, 4
lbl_804D8998:
/* 804D8998  2C 00 00 01 */	cmpwi r0, 1
/* 804D899C  40 82 00 0C */	bne lbl_804D89A8
/* 804D89A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804D89A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804D89A8:
/* 804D89A8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 804D89AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D89B0  40 80 00 6C */	bge lbl_804D8A1C
/* 804D89B4  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 804D89B8  28 00 00 01 */	cmplwi r0, 1
/* 804D89BC  41 80 00 30 */	blt lbl_804D89EC
/* 804D89C0  38 00 00 07 */	li r0, 7
/* 804D89C4  B0 1F 06 1A */	sth r0, 0x61a(r31)
/* 804D89C8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 804D89CC  4B D8 EF 89 */	bl cM_rndF__Ff
/* 804D89D0  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 804D89D4  EC 00 08 2A */	fadds f0, f0, f1
/* 804D89D8  FC 00 00 1E */	fctiwz f0, f0
/* 804D89DC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804D89E0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804D89E4  B0 1F 06 52 */	sth r0, 0x652(r31)
/* 804D89E8  48 00 00 2C */	b lbl_804D8A14
lbl_804D89EC:
/* 804D89EC  38 00 00 06 */	li r0, 6
/* 804D89F0  B0 1F 06 1A */	sth r0, 0x61a(r31)
/* 804D89F4  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 804D89F8  4B D8 EF 5D */	bl cM_rndF__Ff
/* 804D89FC  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 804D8A00  EC 00 08 2A */	fadds f0, f0, f1
/* 804D8A04  FC 00 00 1E */	fctiwz f0, f0
/* 804D8A08  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804D8A0C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804D8A10  B0 1F 06 52 */	sth r0, 0x652(r31)
lbl_804D8A14:
/* 804D8A14  38 00 00 00 */	li r0, 0
/* 804D8A18  B0 1F 06 1C */	sth r0, 0x61c(r31)
lbl_804D8A1C:
/* 804D8A1C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804D8A20  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804D8A24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D8A28  7C 08 03 A6 */	mtlr r0
/* 804D8A2C  38 21 00 40 */	addi r1, r1, 0x40
/* 804D8A30  4E 80 00 20 */	blr 
