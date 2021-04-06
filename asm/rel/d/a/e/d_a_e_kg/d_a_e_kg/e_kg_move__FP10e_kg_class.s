lbl_806F8434:
/* 806F8434  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806F8438  7C 08 02 A6 */	mflr r0
/* 806F843C  90 01 00 64 */	stw r0, 0x64(r1)
/* 806F8440  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 806F8444  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 806F8448  39 61 00 50 */	addi r11, r1, 0x50
/* 806F844C  4B C6 9D 91 */	bl _savegpr_29
/* 806F8450  7C 7E 1B 78 */	mr r30, r3
/* 806F8454  3C 60 80 70 */	lis r3, lit_3788@ha /* 0x806FA3A4@ha */
/* 806F8458  3B E3 A3 A4 */	addi r31, r3, lit_3788@l /* 0x806FA3A4@l */
/* 806F845C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806F8460  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806F8464  FC 00 00 1E */	fctiwz f0, f0
/* 806F8468  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806F846C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 806F8470  C3 FF 00 04 */	lfs f31, 4(r31)
/* 806F8474  A8 1E 06 74 */	lha r0, 0x674(r30)
/* 806F8478  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 806F847C  40 82 00 40 */	bne lbl_806F84BC
/* 806F8480  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806F8484  4B B6 F4 D1 */	bl cM_rndF__Ff
/* 806F8488  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806F848C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F8490  40 80 00 2C */	bge lbl_806F84BC
/* 806F8494  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700C3@ha */
/* 806F8498  38 03 00 C3 */	addi r0, r3, 0x00C3 /* 0x000700C3@l */
/* 806F849C  90 01 00 08 */	stw r0, 8(r1)
/* 806F84A0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806F84A4  38 81 00 08 */	addi r4, r1, 8
/* 806F84A8  38 A0 FF FF */	li r5, -1
/* 806F84AC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806F84B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F84B4  7D 89 03 A6 */	mtctr r12
/* 806F84B8  4E 80 04 21 */	bctrl 
lbl_806F84BC:
/* 806F84BC  A8 1E 06 78 */	lha r0, 0x678(r30)
/* 806F84C0  2C 00 00 01 */	cmpwi r0, 1
/* 806F84C4  41 82 01 30 */	beq lbl_806F85F4
/* 806F84C8  40 80 01 D8 */	bge lbl_806F86A0
/* 806F84CC  2C 00 00 00 */	cmpwi r0, 0
/* 806F84D0  40 80 00 08 */	bge lbl_806F84D8
/* 806F84D4  48 00 01 CC */	b lbl_806F86A0
lbl_806F84D8:
/* 806F84D8  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 806F84DC  2C 00 00 00 */	cmpwi r0, 0
/* 806F84E0  40 82 01 C0 */	bne lbl_806F86A0
/* 806F84E4  7F C3 F3 78 */	mr r3, r30
/* 806F84E8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806F84EC  4B FF FE 3D */	bl way_bg_check__FP10e_kg_classf
/* 806F84F0  2C 03 00 00 */	cmpwi r3, 0
/* 806F84F4  41 82 00 2C */	beq lbl_806F8520
/* 806F84F8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806F84FC  4B B6 F4 91 */	bl cM_rndFX__Ff
/* 806F8500  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806F8504  EC 00 08 2A */	fadds f0, f0, f1
/* 806F8508  FC 00 00 1E */	fctiwz f0, f0
/* 806F850C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806F8510  80 61 00 34 */	lwz r3, 0x34(r1)
/* 806F8514  38 00 00 28 */	li r0, 0x28
/* 806F8518  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 806F851C  48 00 00 88 */	b lbl_806F85A4
lbl_806F8520:
/* 806F8520  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 806F8524  4B B6 F4 69 */	bl cM_rndFX__Ff
/* 806F8528  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 806F852C  EC 00 08 2A */	fadds f0, f0, f1
/* 806F8530  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806F8534  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806F8538  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806F853C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 806F8540  4B B6 F4 4D */	bl cM_rndFX__Ff
/* 806F8544  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 806F8548  EC 00 08 2A */	fadds f0, f0, f1
/* 806F854C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806F8550  38 61 00 0C */	addi r3, r1, 0xc
/* 806F8554  38 81 00 18 */	addi r4, r1, 0x18
/* 806F8558  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806F855C  4B B6 E5 D9 */	bl __mi__4cXyzCFRC3Vec
/* 806F8560  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 806F8564  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806F8568  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806F856C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806F8570  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 806F8574  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 806F8578  4B B6 F0 FD */	bl cM_atan2s__Fff
/* 806F857C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806F8580  7C 00 18 50 */	subf r0, r0, r3
/* 806F8584  7C 03 07 34 */	extsh r3, r0
/* 806F8588  2C 03 30 00 */	cmpwi r3, 0x3000
/* 806F858C  40 81 00 0C */	ble lbl_806F8598
/* 806F8590  38 60 30 00 */	li r3, 0x3000
/* 806F8594  48 00 00 10 */	b lbl_806F85A4
lbl_806F8598:
/* 806F8598  2C 03 D0 00 */	cmpwi r3, -12288
/* 806F859C  40 80 00 08 */	bge lbl_806F85A4
/* 806F85A0  38 60 D0 00 */	li r3, -12288
lbl_806F85A4:
/* 806F85A4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806F85A8  7C 00 1A 14 */	add r0, r0, r3
/* 806F85AC  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 806F85B0  7F C3 F3 78 */	mr r3, r30
/* 806F85B4  38 80 00 0F */	li r4, 0xf
/* 806F85B8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806F85BC  38 A0 00 02 */	li r5, 2
/* 806F85C0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806F85C4  4B FF F9 61 */	bl anm_init__FP10e_kg_classifUcf
/* 806F85C8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806F85CC  4B B6 F3 89 */	bl cM_rndF__Ff
/* 806F85D0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806F85D4  EC 00 08 2A */	fadds f0, f0, f1
/* 806F85D8  FC 00 00 1E */	fctiwz f0, f0
/* 806F85DC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806F85E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F85E4  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806F85E8  38 00 00 01 */	li r0, 1
/* 806F85EC  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 806F85F0  48 00 00 B0 */	b lbl_806F86A0
lbl_806F85F4:
/* 806F85F4  2C 1D 00 03 */	cmpwi r29, 3
/* 806F85F8  40 81 00 1C */	ble lbl_806F8614
/* 806F85FC  2C 1D 00 0B */	cmpwi r29, 0xb
/* 806F8600  41 80 00 0C */	blt lbl_806F860C
/* 806F8604  2C 1D 00 12 */	cmpwi r29, 0x12
/* 806F8608  40 81 00 0C */	ble lbl_806F8614
lbl_806F860C:
/* 806F860C  2C 1D 00 1A */	cmpwi r29, 0x1a
/* 806F8610  41 80 00 10 */	blt lbl_806F8620
lbl_806F8614:
/* 806F8614  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FA5F8@ha */
/* 806F8618  38 63 A5 F8 */	addi r3, r3, l_HIO@l /* 0x806FA5F8@l */
/* 806F861C  C3 E3 00 0C */	lfs f31, 0xc(r3)
lbl_806F8620:
/* 806F8620  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806F8624  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 806F8628  38 A0 00 08 */	li r5, 8
/* 806F862C  38 C0 04 00 */	li r6, 0x400
/* 806F8630  4B B7 7F D9 */	bl cLib_addCalcAngleS2__FPssss
/* 806F8634  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 806F8638  2C 00 00 00 */	cmpwi r0, 0
/* 806F863C  41 82 00 24 */	beq lbl_806F8660
/* 806F8640  A8 1E 06 96 */	lha r0, 0x696(r30)
/* 806F8644  2C 00 00 00 */	cmpwi r0, 0
/* 806F8648  40 82 00 58 */	bne lbl_806F86A0
/* 806F864C  7F C3 F3 78 */	mr r3, r30
/* 806F8650  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806F8654  4B FF FC D5 */	bl way_bg_check__FP10e_kg_classf
/* 806F8658  2C 03 00 00 */	cmpwi r3, 0
/* 806F865C  41 82 00 44 */	beq lbl_806F86A0
lbl_806F8660:
/* 806F8660  38 00 00 00 */	li r0, 0
/* 806F8664  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 806F8668  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806F866C  4B B6 F2 E9 */	bl cM_rndF__Ff
/* 806F8670  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806F8674  EC 00 08 2A */	fadds f0, f0, f1
/* 806F8678  FC 00 00 1E */	fctiwz f0, f0
/* 806F867C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806F8680  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F8684  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806F8688  7F C3 F3 78 */	mr r3, r30
/* 806F868C  38 80 00 0E */	li r4, 0xe
/* 806F8690  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806F8694  38 A0 00 02 */	li r5, 2
/* 806F8698  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806F869C  4B FF F8 89 */	bl anm_init__FP10e_kg_classifUcf
lbl_806F86A0:
/* 806F86A0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806F86A4  FC 20 F8 90 */	fmr f1, f31
/* 806F86A8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806F86AC  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806F86B0  3C 80 80 70 */	lis r4, l_HIO@ha /* 0x806FA5F8@ha */
/* 806F86B4  38 84 A5 F8 */	addi r4, r4, l_HIO@l /* 0x806FA5F8@l */
/* 806F86B8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 806F86BC  EC 63 00 32 */	fmuls f3, f3, f0
/* 806F86C0  4B B7 73 7D */	bl cLib_addCalc2__FPffff
/* 806F86C4  7F C3 F3 78 */	mr r3, r30
/* 806F86C8  3C 80 80 70 */	lis r4, l_HIO@ha /* 0x806FA5F8@ha */
/* 806F86CC  38 84 A5 F8 */	addi r4, r4, l_HIO@l /* 0x806FA5F8@l */
/* 806F86D0  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 806F86D4  38 80 60 00 */	li r4, 0x6000
/* 806F86D8  4B FF FA D1 */	bl pl_check__FP10e_kg_classfs
/* 806F86DC  2C 03 00 00 */	cmpwi r3, 0
/* 806F86E0  41 82 00 14 */	beq lbl_806F86F4
/* 806F86E4  38 00 00 01 */	li r0, 1
/* 806F86E8  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 806F86EC  38 00 00 00 */	li r0, 0
/* 806F86F0  B0 1E 06 78 */	sth r0, 0x678(r30)
lbl_806F86F4:
/* 806F86F4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 806F86F8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 806F86FC  39 61 00 50 */	addi r11, r1, 0x50
/* 806F8700  4B C6 9B 29 */	bl _restgpr_29
/* 806F8704  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806F8708  7C 08 03 A6 */	mtlr r0
/* 806F870C  38 21 00 60 */	addi r1, r1, 0x60
/* 806F8710  4E 80 00 20 */	blr 
