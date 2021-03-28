lbl_807D8648:
/* 807D8648  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807D864C  7C 08 02 A6 */	mflr r0
/* 807D8650  90 01 00 54 */	stw r0, 0x54(r1)
/* 807D8654  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807D8658  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807D865C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 807D8660  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 807D8664  39 61 00 30 */	addi r11, r1, 0x30
/* 807D8668  4B B8 9B 74 */	b _savegpr_29
/* 807D866C  7C 7D 1B 78 */	mr r29, r3
/* 807D8670  3C 80 80 7E */	lis r4, lit_3882@ha
/* 807D8674  3B E4 29 8C */	addi r31, r4, lit_3882@l
/* 807D8678  C3 FF 00 48 */	lfs f31, 0x48(r31)
/* 807D867C  C3 DF 00 FC */	lfs f30, 0xfc(r31)
/* 807D8680  AB C3 04 DE */	lha r30, 0x4de(r3)
/* 807D8684  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807D8688  28 00 00 06 */	cmplwi r0, 6
/* 807D868C  41 81 01 D8 */	bgt lbl_807D8864
/* 807D8690  3C 80 80 7E */	lis r4, lit_6893@ha
/* 807D8694  38 84 2F E4 */	addi r4, r4, lit_6893@l
/* 807D8698  54 00 10 3A */	slwi r0, r0, 2
/* 807D869C  7C 04 00 2E */	lwzx r0, r4, r0
/* 807D86A0  7C 09 03 A6 */	mtctr r0
/* 807D86A4  4E 80 04 20 */	bctr 
lbl_807D86A8:
/* 807D86A8  38 00 00 1E */	li r0, 0x1e
/* 807D86AC  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 807D86B0  38 00 00 01 */	li r0, 1
/* 807D86B4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D86B8  38 80 00 2B */	li r4, 0x2b
/* 807D86BC  FC 20 F8 90 */	fmr f1, f31
/* 807D86C0  38 A0 00 02 */	li r5, 2
/* 807D86C4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D86C8  4B FF 9E 81 */	bl anm_init__FP10e_wb_classifUcf
/* 807D86CC  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 807D86D0  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 807D86D4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 807D86D8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807D86DC  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 807D86E0  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 807D86E4  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 807D86E8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807D86EC  EC 21 00 28 */	fsubs f1, f1, f0
/* 807D86F0  D0 21 00 08 */	stfs f1, 8(r1)
/* 807D86F4  C0 5F 01 CC */	lfs f2, 0x1cc(r31)
/* 807D86F8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807D86FC  EC 42 00 28 */	fsubs f2, f2, f0
/* 807D8700  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807D8704  4B A8 EF 70 */	b cM_atan2s__Fff
/* 807D8708  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 807D870C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807D8710  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 807D8714  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807D8718  B0 1D 05 DC */	sth r0, 0x5dc(r29)
lbl_807D871C:
/* 807D871C  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 807D8720  2C 00 00 00 */	cmpwi r0, 0
/* 807D8724  40 82 01 40 */	bne lbl_807D8864
/* 807D8728  38 00 00 02 */	li r0, 2
/* 807D872C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D8730  38 00 00 41 */	li r0, 0x41
/* 807D8734  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 807D8738  48 00 01 2C */	b lbl_807D8864
lbl_807D873C:
/* 807D873C  C3 FF 00 5C */	lfs f31, 0x5c(r31)
/* 807D8740  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 807D8744  2C 00 00 00 */	cmpwi r0, 0
/* 807D8748  40 82 01 1C */	bne lbl_807D8864
/* 807D874C  38 80 00 2A */	li r4, 0x2a
/* 807D8750  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807D8754  38 A0 00 02 */	li r5, 2
/* 807D8758  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D875C  4B FF 9D ED */	bl anm_init__FP10e_wb_classifUcf
/* 807D8760  38 00 00 03 */	li r0, 3
/* 807D8764  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D8768  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807D876C  60 00 00 08 */	ori r0, r0, 8
/* 807D8770  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 807D8774  38 00 00 28 */	li r0, 0x28
/* 807D8778  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 807D877C  48 00 00 E8 */	b lbl_807D8864
lbl_807D8780:
/* 807D8780  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 807D8784  2C 00 00 01 */	cmpwi r0, 1
/* 807D8788  40 82 00 DC */	bne lbl_807D8864
/* 807D878C  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807D8790  60 00 00 08 */	ori r0, r0, 8
/* 807D8794  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 807D8798  48 00 00 CC */	b lbl_807D8864
lbl_807D879C:
/* 807D879C  38 80 00 1B */	li r4, 0x1b
/* 807D87A0  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807D87A4  38 A0 00 00 */	li r5, 0
/* 807D87A8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D87AC  4B FF 9D 9D */	bl anm_init__FP10e_wb_classifUcf
/* 807D87B0  38 00 00 05 */	li r0, 5
/* 807D87B4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D87B8  48 00 00 AC */	b lbl_807D8864
lbl_807D87BC:
/* 807D87BC  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 807D87C0  38 80 00 01 */	li r4, 1
/* 807D87C4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D87C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D87CC  40 82 00 14 */	bne lbl_807D87E0
/* 807D87D0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D87D4  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 807D87D8  41 82 00 08 */	beq lbl_807D87E0
/* 807D87DC  38 80 00 00 */	li r4, 0
lbl_807D87E0:
/* 807D87E0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D87E4  41 82 00 80 */	beq lbl_807D8864
/* 807D87E8  7F A3 EB 78 */	mr r3, r29
/* 807D87EC  38 80 00 20 */	li r4, 0x20
/* 807D87F0  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D87F4  38 A0 00 02 */	li r5, 2
/* 807D87F8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D87FC  4B FF 9D 4D */	bl anm_init__FP10e_wb_classifUcf
/* 807D8800  38 00 00 06 */	li r0, 6
/* 807D8804  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D8808  38 00 00 50 */	li r0, 0x50
/* 807D880C  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 807D8810  48 00 00 54 */	b lbl_807D8864
lbl_807D8814:
/* 807D8814  C3 FF 00 24 */	lfs f31, 0x24(r31)
/* 807D8818  C3 DF 00 F8 */	lfs f30, 0xf8(r31)
/* 807D881C  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 807D8820  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807D8824  40 80 00 0C */	bge lbl_807D8830
/* 807D8828  38 00 00 01 */	li r0, 1
/* 807D882C  98 1D 14 2C */	stb r0, 0x142c(r29)
lbl_807D8830:
/* 807D8830  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 807D8834  2C 00 00 00 */	cmpwi r0, 0
/* 807D8838  40 82 00 2C */	bne lbl_807D8864
/* 807D883C  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 807D8840  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807D8844  EC 21 00 28 */	fsubs f1, f1, f0
/* 807D8848  D0 21 00 08 */	stfs f1, 8(r1)
/* 807D884C  C0 5F 01 D4 */	lfs f2, 0x1d4(r31)
/* 807D8850  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807D8854  EC 42 00 28 */	fsubs f2, f2, f0
/* 807D8858  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807D885C  4B A8 EE 18 */	b cM_atan2s__Fff
/* 807D8860  B0 7D 05 DC */	sth r3, 0x5dc(r29)
lbl_807D8864:
/* 807D8864  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807D8868  FC 20 F8 90 */	fmr f1, f31
/* 807D886C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8870  FC 60 F0 90 */	fmr f3, f30
/* 807D8874  4B A9 71 C8 */	b cLib_addCalc2__FPffff
/* 807D8878  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807D887C  A8 9D 05 DC */	lha r4, 0x5dc(r29)
/* 807D8880  38 A0 00 04 */	li r5, 4
/* 807D8884  38 C0 01 00 */	li r6, 0x100
/* 807D8888  4B A9 7D 80 */	b cLib_addCalcAngleS2__FPssss
/* 807D888C  38 7D 07 9A */	addi r3, r29, 0x79a
/* 807D8890  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807D8894  7C 1E 00 50 */	subf r0, r30, r0
/* 807D8898  54 00 18 38 */	slwi r0, r0, 3
/* 807D889C  7C 00 00 D0 */	neg r0, r0
/* 807D88A0  7C 04 07 34 */	extsh r4, r0
/* 807D88A4  38 A0 00 08 */	li r5, 8
/* 807D88A8  38 C0 02 00 */	li r6, 0x200
/* 807D88AC  4B A9 7D 5C */	b cLib_addCalcAngleS2__FPssss
/* 807D88B0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807D88B4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807D88B8  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 807D88BC  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 807D88C0  39 61 00 30 */	addi r11, r1, 0x30
/* 807D88C4  4B B8 99 64 */	b _restgpr_29
/* 807D88C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807D88CC  7C 08 03 A6 */	mtlr r0
/* 807D88D0  38 21 00 50 */	addi r1, r1, 0x50
/* 807D88D4  4E 80 00 20 */	blr 
