lbl_8073B428:
/* 8073B428  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073B42C  7C 08 02 A6 */	mflr r0
/* 8073B430  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073B434  39 61 00 30 */	addi r11, r1, 0x30
/* 8073B438  4B C2 6D A5 */	bl _savegpr_29
/* 8073B43C  7C 7E 1B 78 */	mr r30, r3
/* 8073B440  3C 60 80 74 */	lis r3, lit_3910@ha /* 0x8073CEA8@ha */
/* 8073B444  3B E3 CE A8 */	addi r31, r3, lit_3910@l /* 0x8073CEA8@l */
/* 8073B448  80 9E 06 78 */	lwz r4, 0x678(r30)
/* 8073B44C  28 04 00 08 */	cmplwi r4, 8
/* 8073B450  41 81 03 EC */	bgt lbl_8073B83C
/* 8073B454  3C 60 80 74 */	lis r3, lit_4453@ha /* 0x8073D178@ha */
/* 8073B458  38 63 D1 78 */	addi r3, r3, lit_4453@l /* 0x8073D178@l */
/* 8073B45C  54 80 10 3A */	slwi r0, r4, 2
/* 8073B460  7C 03 00 2E */	lwzx r0, r3, r0
/* 8073B464  7C 09 03 A6 */	mtctr r0
/* 8073B468  4E 80 04 20 */	bctr 
lbl_8073B46C:
/* 8073B46C  2C 04 00 00 */	cmpwi r4, 0
/* 8073B470  40 82 00 78 */	bne lbl_8073B4E8
/* 8073B474  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8073B478  4B B2 C5 15 */	bl cM_rndFX__Ff
/* 8073B47C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8073B480  EC 00 08 2A */	fadds f0, f0, f1
/* 8073B484  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8073B488  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8073B48C  4B B2 C5 01 */	bl cM_rndFX__Ff
/* 8073B490  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8073B494  EC 00 08 2A */	fadds f0, f0, f1
/* 8073B498  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8073B49C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073B4A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073B4A4  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8073B4A8  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8073B4AC  4B B2 C4 E1 */	bl cM_rndFX__Ff
/* 8073B4B0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8073B4B4  C8 5F 00 80 */	lfd f2, 0x80(r31)
/* 8073B4B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073B4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073B4C0  3C 00 43 30 */	lis r0, 0x4330
/* 8073B4C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8073B4C8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8073B4CC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8073B4D0  EC 00 08 2A */	fadds f0, f0, f1
/* 8073B4D4  FC 00 00 1E */	fctiwz f0, f0
/* 8073B4D8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8073B4DC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8073B4E0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8073B4E4  48 00 00 70 */	b lbl_8073B554
lbl_8073B4E8:
/* 8073B4E8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8073B4EC  4B B2 C4 A1 */	bl cM_rndFX__Ff
/* 8073B4F0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8073B4F4  EC 00 08 2A */	fadds f0, f0, f1
/* 8073B4F8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8073B4FC  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8073B500  4B B2 C4 55 */	bl cM_rndF__Ff
/* 8073B504  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8073B508  EC 00 08 2A */	fadds f0, f0, f1
/* 8073B50C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8073B510  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8073B514  4B B2 C4 79 */	bl cM_rndFX__Ff
/* 8073B518  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8073B51C  EC 40 08 2A */	fadds f2, f0, f1
/* 8073B520  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8073B524  C8 3F 00 80 */	lfd f1, 0x80(r31)
/* 8073B528  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073B52C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8073B530  3C 00 43 30 */	lis r0, 0x4330
/* 8073B534  90 01 00 18 */	stw r0, 0x18(r1)
/* 8073B538  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8073B53C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8073B540  EC 00 10 2A */	fadds f0, f0, f2
/* 8073B544  FC 00 00 1E */	fctiwz f0, f0
/* 8073B548  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8073B54C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073B550  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8073B554:
/* 8073B554  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8073B558  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8073B55C  38 00 00 02 */	li r0, 2
/* 8073B560  90 1E 06 78 */	stw r0, 0x678(r30)
/* 8073B564  7F C3 F3 78 */	mr r3, r30
/* 8073B568  38 80 00 06 */	li r4, 6
/* 8073B56C  38 A0 00 00 */	li r5, 0
/* 8073B570  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8073B574  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8073B578  4B FF EE DD */	bl setBck__8daE_OT_cFiUcff
/* 8073B57C  48 00 02 C0 */	b lbl_8073B83C
lbl_8073B580:
/* 8073B580  80 1E 07 04 */	lwz r0, 0x704(r30)
/* 8073B584  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8073B588  40 82 00 18 */	bne lbl_8073B5A0
/* 8073B58C  C0 3E 06 88 */	lfs f1, 0x688(r30)
/* 8073B590  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8073B594  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073B598  4C 41 13 82 */	cror 2, 1, 2
/* 8073B59C  40 82 02 A0 */	bne lbl_8073B83C
lbl_8073B5A0:
/* 8073B5A0  C0 3E 06 88 */	lfs f1, 0x688(r30)
/* 8073B5A4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8073B5A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073B5AC  4C 41 13 82 */	cror 2, 1, 2
/* 8073B5B0  40 82 00 0C */	bne lbl_8073B5BC
/* 8073B5B4  7F C3 F3 78 */	mr r3, r30
/* 8073B5B8  4B FF F2 81 */	bl setWaterEffect__8daE_OT_cFv
lbl_8073B5BC:
/* 8073B5BC  38 00 00 03 */	li r0, 3
/* 8073B5C0  90 1E 06 78 */	stw r0, 0x678(r30)
/* 8073B5C4  48 00 02 78 */	b lbl_8073B83C
lbl_8073B5C8:
/* 8073B5C8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8073B5CC  38 80 00 01 */	li r4, 1
/* 8073B5D0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8073B5D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8073B5D8  40 82 00 18 */	bne lbl_8073B5F0
/* 8073B5DC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073B5E0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8073B5E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073B5E8  41 82 00 08 */	beq lbl_8073B5F0
/* 8073B5EC  38 80 00 00 */	li r4, 0
lbl_8073B5F0:
/* 8073B5F0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8073B5F4  41 82 02 48 */	beq lbl_8073B83C
/* 8073B5F8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8073B5FC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8073B600  38 00 00 04 */	li r0, 4
/* 8073B604  90 1E 06 78 */	stw r0, 0x678(r30)
/* 8073B608  7F C3 F3 78 */	mr r3, r30
/* 8073B60C  38 80 00 08 */	li r4, 8
/* 8073B610  38 A0 00 02 */	li r5, 2
/* 8073B614  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8073B618  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8073B61C  4B FF EE 39 */	bl setBck__8daE_OT_cFiUcff
/* 8073B620  48 00 02 1C */	b lbl_8073B83C
lbl_8073B624:
/* 8073B624  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8073B628  38 63 00 0C */	addi r3, r3, 0xc
/* 8073B62C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073B630  4B BE CD FD */	bl checkPass__12J3DFrameCtrlFf
/* 8073B634  2C 03 00 00 */	cmpwi r3, 0
/* 8073B638  41 82 00 30 */	beq lbl_8073B668
/* 8073B63C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070237@ha */
/* 8073B640  38 03 02 37 */	addi r0, r3, 0x0237 /* 0x00070237@l */
/* 8073B644  90 01 00 08 */	stw r0, 8(r1)
/* 8073B648  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8073B64C  38 81 00 08 */	addi r4, r1, 8
/* 8073B650  38 A0 00 00 */	li r5, 0
/* 8073B654  38 C0 FF FF */	li r6, -1
/* 8073B658  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 8073B65C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8073B660  7D 89 03 A6 */	mtctr r12
/* 8073B664  4E 80 04 21 */	bctrl 
lbl_8073B668:
/* 8073B668  7F C3 F3 78 */	mr r3, r30
/* 8073B66C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073B670  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073B674  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8073B678  4B 8D F0 99 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8073B67C  7C 65 1B 78 */	mr r5, r3
/* 8073B680  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8073B684  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 8073B688  54 00 FF 7C */	rlwinm r0, r0, 0x1f, 0x1d, 0x1e
/* 8073B68C  3C 80 80 74 */	lis r4, data_8073CFBC@ha /* 0x8073CFBC@ha */
/* 8073B690  38 84 CF BC */	addi r4, r4, data_8073CFBC@l /* 0x8073CFBC@l */
/* 8073B694  7C 04 02 AE */	lhax r0, r4, r0
/* 8073B698  7C 00 2A 14 */	add r0, r0, r5
/* 8073B69C  7C 04 07 34 */	extsh r4, r0
/* 8073B6A0  38 A0 00 10 */	li r5, 0x10
/* 8073B6A4  38 C0 08 00 */	li r6, 0x800
/* 8073B6A8  38 E0 01 00 */	li r7, 0x100
/* 8073B6AC  4B B3 4E 95 */	bl cLib_addCalcAngleS__FPsssss
/* 8073B6B0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8073B6B4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8073B6B8  3C 84 00 01 */	addis r4, r4, 1
/* 8073B6BC  38 04 80 00 */	addi r0, r4, -32768
/* 8073B6C0  7C 04 07 34 */	extsh r4, r0
/* 8073B6C4  38 A0 00 10 */	li r5, 0x10
/* 8073B6C8  38 C0 08 00 */	li r6, 0x800
/* 8073B6CC  38 E0 01 00 */	li r7, 0x100
/* 8073B6D0  4B B3 4E 71 */	bl cLib_addCalcAngleS__FPsssss
/* 8073B6D4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8073B6D8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073B6DC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8073B6E0  4B B3 50 61 */	bl cLib_chaseF__FPfff
/* 8073B6E4  2C 03 00 00 */	cmpwi r3, 0
/* 8073B6E8  41 82 01 54 */	beq lbl_8073B83C
/* 8073B6EC  7F C3 F3 78 */	mr r3, r30
/* 8073B6F0  38 80 00 02 */	li r4, 2
/* 8073B6F4  38 A0 00 0A */	li r5, 0xa
/* 8073B6F8  4B FF EE 01 */	bl setActionMode__8daE_OT_cFii
/* 8073B6FC  48 00 01 40 */	b lbl_8073B83C
lbl_8073B700:
/* 8073B700  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8073B704  4B B2 C2 89 */	bl cM_rndFX__Ff
/* 8073B708  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8073B70C  EC 00 08 2A */	fadds f0, f0, f1
/* 8073B710  FC 00 00 1E */	fctiwz f0, f0
/* 8073B714  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8073B718  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8073B71C  98 1E 06 94 */	stb r0, 0x694(r30)
/* 8073B720  38 00 00 06 */	li r0, 6
/* 8073B724  90 1E 06 78 */	stw r0, 0x678(r30)
/* 8073B728  7F C3 F3 78 */	mr r3, r30
/* 8073B72C  38 80 00 06 */	li r4, 6
/* 8073B730  38 A0 00 00 */	li r5, 0
/* 8073B734  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8073B738  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8073B73C  4B FF ED 19 */	bl setBck__8daE_OT_cFiUcff
/* 8073B740  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8073B744  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8073B748  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8073B74C:
/* 8073B74C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8073B750  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8073B754  EC 01 00 2A */	fadds f0, f1, f0
/* 8073B758  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8073B75C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8073B760  4B B2 C1 F5 */	bl cM_rndF__Ff
/* 8073B764  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 8073B768  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8073B76C  4B B2 C2 21 */	bl cM_rndFX__Ff
/* 8073B770  FC 00 08 1E */	fctiwz f0, f1
/* 8073B774  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8073B778  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8073B77C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8073B780  88 1E 06 94 */	lbz r0, 0x694(r30)
/* 8073B784  28 00 00 00 */	cmplwi r0, 0
/* 8073B788  40 82 00 B4 */	bne lbl_8073B83C
/* 8073B78C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8073B790  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8073B794  38 00 00 07 */	li r0, 7
/* 8073B798  90 1E 06 78 */	stw r0, 0x678(r30)
/* 8073B79C  48 00 00 A0 */	b lbl_8073B83C
lbl_8073B7A0:
/* 8073B7A0  80 1E 07 04 */	lwz r0, 0x704(r30)
/* 8073B7A4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8073B7A8  40 82 00 18 */	bne lbl_8073B7C0
/* 8073B7AC  C0 3E 06 88 */	lfs f1, 0x688(r30)
/* 8073B7B0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8073B7B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073B7B8  4C 41 13 82 */	cror 2, 1, 2
/* 8073B7BC  40 82 00 80 */	bne lbl_8073B83C
lbl_8073B7C0:
/* 8073B7C0  C0 3E 06 88 */	lfs f1, 0x688(r30)
/* 8073B7C4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8073B7C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073B7CC  4C 41 13 82 */	cror 2, 1, 2
/* 8073B7D0  40 82 00 0C */	bne lbl_8073B7DC
/* 8073B7D4  7F C3 F3 78 */	mr r3, r30
/* 8073B7D8  4B FF F0 61 */	bl setWaterEffect__8daE_OT_cFv
lbl_8073B7DC:
/* 8073B7DC  38 00 00 08 */	li r0, 8
/* 8073B7E0  90 1E 06 78 */	stw r0, 0x678(r30)
/* 8073B7E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8073B7E8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8073B7EC  48 00 00 50 */	b lbl_8073B83C
lbl_8073B7F0:
/* 8073B7F0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8073B7F4  38 80 00 01 */	li r4, 1
/* 8073B7F8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8073B7FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8073B800  40 82 00 18 */	bne lbl_8073B818
/* 8073B804  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073B808  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8073B80C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073B810  41 82 00 08 */	beq lbl_8073B818
/* 8073B814  38 80 00 00 */	li r4, 0
lbl_8073B818:
/* 8073B818  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8073B81C  41 82 00 20 */	beq lbl_8073B83C
/* 8073B820  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 8073B824  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 8073B828  90 1E 09 14 */	stw r0, 0x914(r30)
/* 8073B82C  7F C3 F3 78 */	mr r3, r30
/* 8073B830  38 80 00 02 */	li r4, 2
/* 8073B834  38 A0 00 00 */	li r5, 0
/* 8073B838  4B FF EC C1 */	bl setActionMode__8daE_OT_cFii
lbl_8073B83C:
/* 8073B83C  39 61 00 30 */	addi r11, r1, 0x30
/* 8073B840  4B C2 69 E9 */	bl _restgpr_29
/* 8073B844  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073B848  7C 08 03 A6 */	mtlr r0
/* 8073B84C  38 21 00 30 */	addi r1, r1, 0x30
/* 8073B850  4E 80 00 20 */	blr 
