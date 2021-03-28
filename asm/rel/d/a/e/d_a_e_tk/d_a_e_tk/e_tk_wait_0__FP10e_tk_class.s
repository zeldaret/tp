lbl_807B86EC:
/* 807B86EC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807B86F0  7C 08 02 A6 */	mflr r0
/* 807B86F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 807B86F8  39 61 00 50 */	addi r11, r1, 0x50
/* 807B86FC  4B BA 9A E0 */	b _savegpr_29
/* 807B8700  7C 7E 1B 78 */	mr r30, r3
/* 807B8704  3C 80 80 7C */	lis r4, lit_3762@ha
/* 807B8708  3B E4 A2 6C */	addi r31, r4, lit_3762@l
/* 807B870C  38 00 00 01 */	li r0, 1
/* 807B8710  98 03 06 A0 */	stb r0, 0x6a0(r3)
/* 807B8714  A8 03 06 78 */	lha r0, 0x678(r3)
/* 807B8718  2C 00 00 01 */	cmpwi r0, 1
/* 807B871C  41 82 00 34 */	beq lbl_807B8750
/* 807B8720  40 80 01 BC */	bge lbl_807B88DC
/* 807B8724  2C 00 00 00 */	cmpwi r0, 0
/* 807B8728  40 80 00 08 */	bge lbl_807B8730
/* 807B872C  48 00 01 B0 */	b lbl_807B88DC
lbl_807B8730:
/* 807B8730  38 80 00 09 */	li r4, 9
/* 807B8734  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807B8738  38 A0 00 02 */	li r5, 2
/* 807B873C  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807B8740  4B FF FA F5 */	bl anm_init__FP10e_tk_classifUcf
/* 807B8744  38 00 00 01 */	li r0, 1
/* 807B8748  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B874C  48 00 01 90 */	b lbl_807B88DC
lbl_807B8750:
/* 807B8750  A8 1E 06 96 */	lha r0, 0x696(r30)
/* 807B8754  2C 00 00 00 */	cmpwi r0, 0
/* 807B8758  40 82 00 74 */	bne lbl_807B87CC
/* 807B875C  38 61 00 14 */	addi r3, r1, 0x14
/* 807B8760  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 807B8764  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807B8768  4B AA E3 CC */	b __mi__4cXyzCFRC3Vec
/* 807B876C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807B8770  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B8774  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807B8778  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B877C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807B8780  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B8784  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 807B8788  4B AA F2 04 */	b cM_rndFX__Ff
/* 807B878C  FC 00 08 1E */	fctiwz f0, f1
/* 807B8790  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807B8794  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 807B8798  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 807B879C  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 807B87A0  4B AA EE D4 */	b cM_atan2s__Fff
/* 807B87A4  7C 03 EA 14 */	add r0, r3, r29
/* 807B87A8  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 807B87AC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807B87B0  4B AA F1 A4 */	b cM_rndF__Ff
/* 807B87B4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807B87B8  EC 00 08 2A */	fadds f0, f0, f1
/* 807B87BC  FC 00 00 1E */	fctiwz f0, f0
/* 807B87C0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 807B87C4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 807B87C8  B0 1E 06 96 */	sth r0, 0x696(r30)
lbl_807B87CC:
/* 807B87CC  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 807B87D0  2C 00 00 00 */	cmpwi r0, 0
/* 807B87D4  40 82 00 90 */	bne lbl_807B8864
/* 807B87D8  7F C3 F3 78 */	mr r3, r30
/* 807B87DC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 807B87E0  4B FF FD FD */	bl way_bg_check__FP10e_tk_classf
/* 807B87E4  2C 03 00 00 */	cmpwi r3, 0
/* 807B87E8  41 82 00 7C */	beq lbl_807B8864
/* 807B87EC  38 00 00 28 */	li r0, 0x28
/* 807B87F0  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 807B87F4  38 61 00 08 */	addi r3, r1, 8
/* 807B87F8  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 807B87FC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807B8800  4B AA E3 34 */	b __mi__4cXyzCFRC3Vec
/* 807B8804  C0 01 00 08 */	lfs f0, 8(r1)
/* 807B8808  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B880C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807B8810  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B8814  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807B8818  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B881C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 807B8820  4B AA F1 6C */	b cM_rndFX__Ff
/* 807B8824  FC 00 08 1E */	fctiwz f0, f1
/* 807B8828  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 807B882C  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 807B8830  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 807B8834  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 807B8838  4B AA EE 3C */	b cM_atan2s__Fff
/* 807B883C  7C 03 EA 14 */	add r0, r3, r29
/* 807B8840  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 807B8844  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807B8848  4B AA F1 0C */	b cM_rndF__Ff
/* 807B884C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807B8850  EC 00 08 2A */	fadds f0, f0, f1
/* 807B8854  FC 00 00 1E */	fctiwz f0, f0
/* 807B8858  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807B885C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807B8860  B0 1E 06 96 */	sth r0, 0x696(r30)
lbl_807B8864:
/* 807B8864  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807B8868  2C 00 00 00 */	cmpwi r0, 0
/* 807B886C  40 82 00 70 */	bne lbl_807B88DC
/* 807B8870  7F C3 F3 78 */	mr r3, r30
/* 807B8874  4B FF FB B5 */	bl pl_y_check__FP10e_tk_class
/* 807B8878  2C 03 00 00 */	cmpwi r3, 0
/* 807B887C  41 82 00 60 */	beq lbl_807B88DC
/* 807B8880  7F C3 F3 78 */	mr r3, r30
/* 807B8884  3C 80 80 7C */	lis r4, l_HIO@ha
/* 807B8888  38 84 A4 48 */	addi r4, r4, l_HIO@l
/* 807B888C  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 807B8890  38 80 40 00 */	li r4, 0x4000
/* 807B8894  4B FF FB CD */	bl pl_check__FP10e_tk_classfs
/* 807B8898  2C 03 00 00 */	cmpwi r3, 0
/* 807B889C  41 82 00 40 */	beq lbl_807B88DC
/* 807B88A0  38 00 00 01 */	li r0, 1
/* 807B88A4  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 807B88A8  7F C3 F3 78 */	mr r3, r30
/* 807B88AC  3C 80 80 7C */	lis r4, l_HIO@ha
/* 807B88B0  38 84 A4 48 */	addi r4, r4, l_HIO@l
/* 807B88B4  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 807B88B8  38 80 40 00 */	li r4, 0x4000
/* 807B88BC  4B FF FB A5 */	bl pl_check__FP10e_tk_classfs
/* 807B88C0  2C 03 00 00 */	cmpwi r3, 0
/* 807B88C4  41 82 00 10 */	beq lbl_807B88D4
/* 807B88C8  38 00 00 0C */	li r0, 0xc
/* 807B88CC  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B88D0  48 00 00 0C */	b lbl_807B88DC
lbl_807B88D4:
/* 807B88D4  38 00 00 00 */	li r0, 0
/* 807B88D8  B0 1E 06 78 */	sth r0, 0x678(r30)
lbl_807B88DC:
/* 807B88DC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807B88E0  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 807B88E4  38 A0 00 10 */	li r5, 0x10
/* 807B88E8  38 C0 04 00 */	li r6, 0x400
/* 807B88EC  4B AB 7D 1C */	b cLib_addCalcAngleS2__FPssss
/* 807B88F0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807B88F4  38 80 00 00 */	li r4, 0
/* 807B88F8  38 A0 00 10 */	li r5, 0x10
/* 807B88FC  38 C0 04 00 */	li r6, 0x400
/* 807B8900  4B AB 7D 08 */	b cLib_addCalcAngleS2__FPssss
/* 807B8904  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807B8908  3C 80 80 7C */	lis r4, l_HIO@ha
/* 807B890C  38 84 A4 48 */	addi r4, r4, l_HIO@l
/* 807B8910  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 807B8914  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807B8918  EC 20 00 B2 */	fmuls f1, f0, f2
/* 807B891C  FC 60 10 90 */	fmr f3, f2
/* 807B8920  4B AB 71 1C */	b cLib_addCalc2__FPffff
/* 807B8924  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B8928  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B892C  80 63 00 00 */	lwz r3, 0(r3)
/* 807B8930  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807B8934  4B 85 3A A8 */	b mDoMtx_YrotS__FPA4_fs
/* 807B8938  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 807B893C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B8940  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B8944  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807B8948  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B894C  38 61 00 20 */	addi r3, r1, 0x20
/* 807B8950  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807B8954  4B AB 85 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B8958  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807B895C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807B8960  7C 65 1B 78 */	mr r5, r3
/* 807B8964  4B B8 E7 2C */	b PSVECAdd
/* 807B8968  39 61 00 50 */	addi r11, r1, 0x50
/* 807B896C  4B BA 98 BC */	b _restgpr_29
/* 807B8970  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807B8974  7C 08 03 A6 */	mtlr r0
/* 807B8978  38 21 00 50 */	addi r1, r1, 0x50
/* 807B897C  4E 80 00 20 */	blr 
