lbl_80C09298:
/* 80C09298  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C0929C  7C 08 02 A6 */	mflr r0
/* 80C092A0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C092A4  39 61 00 70 */	addi r11, r1, 0x70
/* 80C092A8  4B 75 8F 31 */	bl _savegpr_28
/* 80C092AC  7C 7C 1B 78 */	mr r28, r3
/* 80C092B0  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C092B4  3B C4 FA 7C */	addi r30, r4, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C092B8  3C 80 80 C1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C0FE68@ha */
/* 80C092BC  3B E4 FE 68 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80C0FE68@l */
/* 80C092C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C092C4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C092C8  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80C092CC  38 80 00 00 */	li r4, 0
/* 80C092D0  90 83 05 5C */	stw r4, 0x55c(r3)
/* 80C092D4  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C092D8  2C 00 00 01 */	cmpwi r0, 1
/* 80C092DC  41 82 00 40 */	beq lbl_80C0931C
/* 80C092E0  40 80 00 10 */	bge lbl_80C092F0
/* 80C092E4  2C 00 00 00 */	cmpwi r0, 0
/* 80C092E8  40 80 00 14 */	bge lbl_80C092FC
/* 80C092EC  48 00 06 08 */	b lbl_80C098F4
lbl_80C092F0:
/* 80C092F0  2C 00 00 03 */	cmpwi r0, 3
/* 80C092F4  40 80 06 00 */	bge lbl_80C098F4
/* 80C092F8  48 00 05 F4 */	b lbl_80C098EC
lbl_80C092FC:
/* 80C092FC  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C09300  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C09304  38 00 FF FF */	li r0, -1
/* 80C09308  90 1C 20 18 */	stw r0, 0x2018(r28)
/* 80C0930C  38 00 00 01 */	li r0, 1
/* 80C09310  B0 1C 20 54 */	sth r0, 0x2054(r28)
/* 80C09314  90 1C 20 9C */	stw r0, 0x209c(r28)
/* 80C09318  48 00 05 DC */	b lbl_80C098F4
lbl_80C0931C:
/* 80C0931C  80 9C 20 18 */	lwz r4, 0x2018(r28)
/* 80C09320  38 04 00 01 */	addi r0, r4, 1
/* 80C09324  28 00 00 06 */	cmplwi r0, 6
/* 80C09328  41 81 05 CC */	bgt lbl_80C098F4
/* 80C0932C  3C 80 80 C1 */	lis r4, lit_8138@ha /* 0x80C102C8@ha */
/* 80C09330  38 84 02 C8 */	addi r4, r4, lit_8138@l /* 0x80C102C8@l */
/* 80C09334  54 00 10 3A */	slwi r0, r0, 2
/* 80C09338  7C 04 00 2E */	lwzx r0, r4, r0
/* 80C0933C  7C 09 03 A6 */	mtctr r0
/* 80C09340  4E 80 04 20 */	bctr 
lbl_80C09344:
/* 80C09344  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C09348  38 63 00 0C */	addi r3, r3, 0xc
/* 80C0934C  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C09350  4B 71 F0 DD */	bl checkPass__12J3DFrameCtrlFf
/* 80C09354  2C 03 00 00 */	cmpwi r3, 0
/* 80C09358  41 82 00 18 */	beq lbl_80C09370
/* 80C0935C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C09360  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C09364  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C09368  38 00 00 00 */	li r0, 0
/* 80C0936C  90 1C 20 18 */	stw r0, 0x2018(r28)
lbl_80C09370:
/* 80C09370  7F A3 EB 78 */	mr r3, r29
/* 80C09374  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C09378  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80C0937C  7D 89 03 A6 */	mtctr r12
/* 80C09380  4E 80 04 21 */	bctrl 
/* 80C09384  28 03 00 00 */	cmplwi r3, 0
/* 80C09388  40 82 01 60 */	bne lbl_80C094E8
/* 80C0938C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C09390  C0 1E 02 C4 */	lfs f0, 0x2c4(r30)
/* 80C09394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C09398  40 80 00 CC */	bge lbl_80C09464
/* 80C0939C  38 00 00 01 */	li r0, 1
/* 80C093A0  90 1C 20 18 */	stw r0, 0x2018(r28)
/* 80C093A4  C0 1C 20 34 */	lfs f0, 0x2034(r28)
/* 80C093A8  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80C093AC  C0 1C 20 38 */	lfs f0, 0x2038(r28)
/* 80C093B0  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80C093B4  C0 1C 20 3C */	lfs f0, 0x203c(r28)
/* 80C093B8  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80C093BC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C093C0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80C093C4  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80C093C8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C093CC  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80C093D0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80C093D4  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 80C093D8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C093DC  4B 66 78 29 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C093E0  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 80C093E4  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C093E8  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80C093EC  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C093F0  B0 1C 09 1C */	sth r0, 0x91c(r28)
/* 80C093F4  38 00 00 00 */	li r0, 0
/* 80C093F8  90 1C 1F EC */	stw r0, 0x1fec(r28)
/* 80C093FC  7F 83 E3 78 */	mr r3, r28
/* 80C09400  38 80 00 00 */	li r4, 0
/* 80C09404  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C09408  4B FF 83 85 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0940C  7F 83 E3 78 */	mr r3, r28
/* 80C09410  38 80 00 0D */	li r4, 0xd
/* 80C09414  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C09418  4B FF 83 95 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0941C  7F 83 E3 78 */	mr r3, r28
/* 80C09420  38 80 00 01 */	li r4, 1
/* 80C09424  4B FF 96 B1 */	bl setLookMode__11daObj_GrA_cFi
/* 80C09428  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80C0942C  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C09430  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C09434  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 80C09438  28 00 00 2B */	cmplwi r0, 0x2b
/* 80C0943C  40 82 00 0C */	bne lbl_80C09448
/* 80C09440  38 00 00 00 */	li r0, 0
/* 80C09444  98 1D 05 6A */	stb r0, 0x56a(r29)
lbl_80C09448:
/* 80C09448  3C 60 80 45 */	lis r3, g_dComIfGoat_gameInfo@ha /* 0x80450618@ha */
/* 80C0944C  84 03 06 18 */	lwzu r0, g_dComIfGoat_gameInfo@l(r3)  /* 0x80450618@l */
/* 80C09450  7C 00 E0 40 */	cmplw r0, r28
/* 80C09454  40 82 00 94 */	bne lbl_80C094E8
/* 80C09458  38 00 00 00 */	li r0, 0
/* 80C0945C  90 03 00 00 */	stw r0, 0(r3)
/* 80C09460  48 00 00 88 */	b lbl_80C094E8
lbl_80C09464:
/* 80C09464  38 00 00 3C */	li r0, 0x3c
/* 80C09468  90 1C 1F EC */	stw r0, 0x1fec(r28)
/* 80C0946C  38 00 00 05 */	li r0, 5
/* 80C09470  90 1C 20 18 */	stw r0, 0x2018(r28)
/* 80C09474  38 7C 15 28 */	addi r3, r28, 0x1528
/* 80C09478  4B 54 45 D1 */	bl reverseDir__16daBaseNpc_path_cFv
/* 80C0947C  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80C09480  3C 63 00 01 */	addis r3, r3, 1
/* 80C09484  38 03 80 00 */	addi r0, r3, -32768
/* 80C09488  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80C0948C  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C09490  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80C09494  C8 3E 01 30 */	lfd f1, 0x130(r30)
/* 80C09498  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C0949C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C094A0  3C 00 43 30 */	lis r0, 0x4330
/* 80C094A4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80C094A8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80C094AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C094B0  FC 00 00 1E */	fctiwz f0, f0
/* 80C094B4  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80C094B8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80C094BC  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80C094C0  7F A3 EB 78 */	mr r3, r29
/* 80C094C4  7F 84 E3 78 */	mr r4, r28
/* 80C094C8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C094CC  81 8C 02 3C */	lwz r12, 0x23c(r12)
/* 80C094D0  7D 89 03 A6 */	mtctr r12
/* 80C094D4  4E 80 04 21 */	bctrl 
/* 80C094D8  38 00 00 01 */	li r0, 1
/* 80C094DC  98 1C 20 14 */	stb r0, 0x2014(r28)
/* 80C094E0  38 00 00 07 */	li r0, 7
/* 80C094E4  B0 1C 20 54 */	sth r0, 0x2054(r28)
lbl_80C094E8:
/* 80C094E8  38 00 00 00 */	li r0, 0
/* 80C094EC  B0 1C 20 56 */	sth r0, 0x2056(r28)
/* 80C094F0  48 00 04 04 */	b lbl_80C098F4
lbl_80C094F4:
/* 80C094F4  38 7C 1F EC */	addi r3, r28, 0x1fec
/* 80C094F8  4B FF BA 45 */	bl func_80C04F3C
/* 80C094FC  2C 03 00 00 */	cmpwi r3, 0
/* 80C09500  40 82 03 F4 */	bne lbl_80C098F4
/* 80C09504  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C09508  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0950C  A0 03 00 02 */	lhz r0, 2(r3)
/* 80C09510  28 00 00 00 */	cmplwi r0, 0
/* 80C09514  40 82 00 84 */	bne lbl_80C09598
/* 80C09518  80 7F 04 3C */	lwz r3, 0x43c(r31)
/* 80C0951C  80 1F 04 40 */	lwz r0, 0x440(r31)
/* 80C09520  90 61 00 38 */	stw r3, 0x38(r1)
/* 80C09524  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C09528  80 1F 04 44 */	lwz r0, 0x444(r31)
/* 80C0952C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C09530  7F 83 E3 78 */	mr r3, r28
/* 80C09534  38 81 00 38 */	addi r4, r1, 0x38
/* 80C09538  4B FF 83 BD */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0953C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C09540  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C09544  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80C09548  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80C0954C  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80C09550  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80C09554  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80C09558  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80C0955C  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80C09560  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80C09564  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80C09568  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80C0956C  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80C09570  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 80C09574  A8 1C 04 B6 */	lha r0, 0x4b6(r28)
/* 80C09578  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80C0957C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C09580  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80C09584  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C09588  B0 1C 09 1C */	sth r0, 0x91c(r28)
/* 80C0958C  38 00 00 07 */	li r0, 7
/* 80C09590  B0 1C 20 54 */	sth r0, 0x2054(r28)
/* 80C09594  48 00 03 60 */	b lbl_80C098F4
lbl_80C09598:
/* 80C09598  38 00 00 02 */	li r0, 2
/* 80C0959C  90 1C 20 18 */	stw r0, 0x2018(r28)
/* 80C095A0  48 00 03 54 */	b lbl_80C098F4
lbl_80C095A4:
/* 80C095A4  A8 1C 20 54 */	lha r0, 0x2054(r28)
/* 80C095A8  2C 00 00 05 */	cmpwi r0, 5
/* 80C095AC  41 80 03 48 */	blt lbl_80C098F4
/* 80C095B0  38 00 00 05 */	li r0, 5
/* 80C095B4  90 1C 08 48 */	stw r0, 0x848(r28)
/* 80C095B8  38 80 FF FF */	li r4, -1
/* 80C095BC  38 A0 00 01 */	li r5, 1
/* 80C095C0  4B FF B3 39 */	bl evtcutTalk__11daObj_GrA_cFii
/* 80C095C4  38 00 00 03 */	li r0, 3
/* 80C095C8  90 1C 20 18 */	stw r0, 0x2018(r28)
/* 80C095CC  48 00 03 28 */	b lbl_80C098F4
lbl_80C095D0:
/* 80C095D0  38 80 FF FF */	li r4, -1
/* 80C095D4  38 A0 00 00 */	li r5, 0
/* 80C095D8  4B FF B3 21 */	bl evtcutTalk__11daObj_GrA_cFii
/* 80C095DC  2C 03 00 00 */	cmpwi r3, 0
/* 80C095E0  41 82 00 38 */	beq lbl_80C09618
/* 80C095E4  7F 83 E3 78 */	mr r3, r28
/* 80C095E8  38 80 00 00 */	li r4, 0
/* 80C095EC  4B FF 94 E9 */	bl setLookMode__11daObj_GrA_cFi
/* 80C095F0  38 00 00 04 */	li r0, 4
/* 80C095F4  90 1C 20 18 */	stw r0, 0x2018(r28)
/* 80C095F8  7F 83 E3 78 */	mr r3, r28
/* 80C095FC  38 80 00 01 */	li r4, 1
/* 80C09600  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C09604  4B FF 81 89 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C09608  7F 83 E3 78 */	mr r3, r28
/* 80C0960C  38 80 00 0D */	li r4, 0xd
/* 80C09610  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C09614  4B FF 81 99 */	bl setFaceMotion__11daObj_GrA_cFif
lbl_80C09618:
/* 80C09618  38 00 00 00 */	li r0, 0
/* 80C0961C  B0 1C 20 56 */	sth r0, 0x2056(r28)
/* 80C09620  48 00 02 D4 */	b lbl_80C098F4
lbl_80C09624:
/* 80C09624  A8 1C 20 54 */	lha r0, 0x2054(r28)
/* 80C09628  2C 00 00 00 */	cmpwi r0, 0
/* 80C0962C  41 82 00 5C */	beq lbl_80C09688
/* 80C09630  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80C09634  38 9E 00 00 */	addi r4, r30, 0
/* 80C09638  C0 24 00 90 */	lfs f1, 0x90(r4)
/* 80C0963C  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80C09640  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C09644  C0 5E 02 4C */	lfs f2, 0x24c(r30)
/* 80C09648  C0 7E 02 50 */	lfs f3, 0x250(r30)
/* 80C0964C  4B 66 63 F1 */	bl cLib_addCalc2__FPffff
/* 80C09650  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C09654  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80C09658  4B 66 75 AD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0965C  7C 64 1B 78 */	mr r4, r3
/* 80C09660  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C09664  38 A0 00 01 */	li r5, 1
/* 80C09668  38 DE 00 00 */	addi r6, r30, 0
/* 80C0966C  A8 C6 00 88 */	lha r6, 0x88(r6)
/* 80C09670  4B 66 6F 99 */	bl cLib_addCalcAngleS2__FPssss
/* 80C09674  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C09678  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80C0967C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C09680  B0 1C 09 1C */	sth r0, 0x91c(r28)
/* 80C09684  48 00 02 70 */	b lbl_80C098F4
lbl_80C09688:
/* 80C09688  80 9F 04 48 */	lwz r4, 0x448(r31)
/* 80C0968C  80 1F 04 4C */	lwz r0, 0x44c(r31)
/* 80C09690  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80C09694  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C09698  80 1F 04 50 */	lwz r0, 0x450(r31)
/* 80C0969C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C096A0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C096A4  4B FF 82 51 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C096A8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C096AC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C096B0  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80C096B4  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80C096B8  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80C096BC  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80C096C0  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80C096C4  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80C096C8  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80C096CC  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80C096D0  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80C096D4  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80C096D8  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80C096DC  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 80C096E0  A8 1C 04 B6 */	lha r0, 0x4b6(r28)
/* 80C096E4  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80C096E8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C096EC  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80C096F0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C096F4  B0 1C 09 1C */	sth r0, 0x91c(r28)
/* 80C096F8  48 00 01 FC */	b lbl_80C098F4
lbl_80C096FC:
/* 80C096FC  38 7C 1F EC */	addi r3, r28, 0x1fec
/* 80C09700  4B FF B8 3D */	bl func_80C04F3C
/* 80C09704  2C 03 00 00 */	cmpwi r3, 0
/* 80C09708  40 82 00 88 */	bne lbl_80C09790
/* 80C0970C  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80C09710  3C 63 00 01 */	addis r3, r3, 1
/* 80C09714  38 03 80 00 */	addi r0, r3, -32768
/* 80C09718  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80C0971C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C09720  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80C09724  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C09728  B0 1C 09 1C */	sth r0, 0x91c(r28)
/* 80C0972C  80 7F 04 54 */	lwz r3, 0x454(r31)
/* 80C09730  80 1F 04 58 */	lwz r0, 0x458(r31)
/* 80C09734  90 61 00 20 */	stw r3, 0x20(r1)
/* 80C09738  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C0973C  80 1F 04 5C */	lwz r0, 0x45c(r31)
/* 80C09740  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C09744  7F 83 E3 78 */	mr r3, r28
/* 80C09748  38 81 00 20 */	addi r4, r1, 0x20
/* 80C0974C  4B FF 81 A9 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C09750  38 7C 15 28 */	addi r3, r28, 0x1528
/* 80C09754  4B 54 42 F5 */	bl reverseDir__16daBaseNpc_path_cFv
/* 80C09758  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C0975C  A8 03 00 12 */	lha r0, 0x12(r3)
/* 80C09760  C8 3E 01 30 */	lfd f1, 0x130(r30)
/* 80C09764  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C09768  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C0976C  3C 00 43 30 */	lis r0, 0x4330
/* 80C09770  90 01 00 58 */	stw r0, 0x58(r1)
/* 80C09774  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80C09778  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C0977C  FC 00 00 1E */	fctiwz f0, f0
/* 80C09780  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80C09784  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C09788  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80C0978C  48 00 01 68 */	b lbl_80C098F4
lbl_80C09790:
/* 80C09790  3B A0 00 00 */	li r29, 0
/* 80C09794  38 7C 15 28 */	addi r3, r28, 0x1528
/* 80C09798  4B 54 42 11 */	bl isPath__16daBaseNpc_path_cFv
/* 80C0979C  2C 03 00 00 */	cmpwi r3, 0
/* 80C097A0  41 82 00 58 */	beq lbl_80C097F8
/* 80C097A4  48 00 00 48 */	b lbl_80C097EC
lbl_80C097A8:
/* 80C097A8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80C097AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C097B0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C097B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C097B8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80C097BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C097C0  38 7C 15 28 */	addi r3, r28, 0x1528
/* 80C097C4  38 81 00 14 */	addi r4, r1, 0x14
/* 80C097C8  4B 54 42 9D */	bl chkPnt__16daBaseNpc_path_cF4cXyz
/* 80C097CC  7C 60 00 34 */	cntlzw r0, r3
/* 80C097D0  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80C097D4  40 82 00 28 */	bne lbl_80C097FC
/* 80C097D8  38 7C 15 28 */	addi r3, r28, 0x1528
/* 80C097DC  4B 54 42 E9 */	bl setNextPnt__16daBaseNpc_path_cFv
/* 80C097E0  2C 03 00 00 */	cmpwi r3, 0
/* 80C097E4  41 82 00 08 */	beq lbl_80C097EC
/* 80C097E8  3B A0 00 01 */	li r29, 1
lbl_80C097EC:
/* 80C097EC  2C 1D 00 00 */	cmpwi r29, 0
/* 80C097F0  41 82 FF B8 */	beq lbl_80C097A8
/* 80C097F4  48 00 00 08 */	b lbl_80C097FC
lbl_80C097F8:
/* 80C097F8  3B A0 00 01 */	li r29, 1
lbl_80C097FC:
/* 80C097FC  2C 1D 00 00 */	cmpwi r29, 0
/* 80C09800  40 82 00 BC */	bne lbl_80C098BC
/* 80C09804  38 7C 15 28 */	addi r3, r28, 0x1528
/* 80C09808  4B 54 42 FD */	bl getIdx__16daBaseNpc_path_cFv
/* 80C0980C  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 80C09810  38 61 00 08 */	addi r3, r1, 8
/* 80C09814  38 9C 15 28 */	addi r4, r28, 0x1528
/* 80C09818  4B 54 42 FD */	bl getPntPos__16daBaseNpc_path_cFUs
/* 80C0981C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C09820  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C09824  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C09828  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C0982C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C09830  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C09834  AB BC 04 DE */	lha r29, 0x4de(r28)
/* 80C09838  7F 83 E3 78 */	mr r3, r28
/* 80C0983C  4B FF E4 B5 */	bl getSpeed__11daObj_GrA_cFv
/* 80C09840  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80C09844  38 9E 00 00 */	addi r4, r30, 0
/* 80C09848  C0 44 00 A8 */	lfs f2, 0xa8(r4)
/* 80C0984C  4B 66 6E F5 */	bl cLib_chaseF__FPfff
/* 80C09850  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C09854  38 81 00 44 */	addi r4, r1, 0x44
/* 80C09858  4B 66 73 AD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0985C  7C 64 1B 78 */	mr r4, r3
/* 80C09860  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C09864  38 A0 00 08 */	li r5, 8
/* 80C09868  A8 DC 1F 3C */	lha r6, 0x1f3c(r28)
/* 80C0986C  4B 66 6D 9D */	bl cLib_addCalcAngleS2__FPssss
/* 80C09870  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C09874  7C 7D 00 50 */	subf r3, r29, r0
/* 80C09878  4B 75 B8 59 */	bl abs
/* 80C0987C  B0 7C 1F 3C */	sth r3, 0x1f3c(r28)
/* 80C09880  38 7C 1F 3C */	addi r3, r28, 0x1f3c
/* 80C09884  38 9E 00 00 */	addi r4, r30, 0
/* 80C09888  A8 84 00 88 */	lha r4, 0x88(r4)
/* 80C0988C  38 A0 00 08 */	li r5, 8
/* 80C09890  38 C0 00 40 */	li r6, 0x40
/* 80C09894  4B 66 6D 75 */	bl cLib_addCalcAngleS2__FPssss
/* 80C09898  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80C0989C  3C 63 00 01 */	addis r3, r3, 1
/* 80C098A0  38 03 80 00 */	addi r0, r3, -32768
/* 80C098A4  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80C098A8  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80C098AC  3C 63 00 01 */	addis r3, r3, 1
/* 80C098B0  38 03 80 00 */	addi r0, r3, -32768
/* 80C098B4  B0 1C 09 1C */	sth r0, 0x91c(r28)
/* 80C098B8  48 00 00 18 */	b lbl_80C098D0
lbl_80C098BC:
/* 80C098BC  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80C098C0  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C098C4  C0 5E 02 4C */	lfs f2, 0x24c(r30)
/* 80C098C8  C0 7E 02 50 */	lfs f3, 0x250(r30)
/* 80C098CC  4B 66 61 71 */	bl cLib_addCalc2__FPffff
lbl_80C098D0:
/* 80C098D0  C0 3E 02 AC */	lfs f1, 0x2ac(r30)
/* 80C098D4  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80C098D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C098DC  FC 00 00 50 */	fneg f0, f0
/* 80C098E0  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C098E4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C098E8  48 00 00 0C */	b lbl_80C098F4
lbl_80C098EC:
/* 80C098EC  98 9C 20 14 */	stb r4, 0x2014(r28)
/* 80C098F0  90 9C 20 9C */	stw r4, 0x209c(r28)
lbl_80C098F4:
/* 80C098F4  7F 83 E3 78 */	mr r3, r28
/* 80C098F8  48 00 16 9D */	bl rollAttackedDemo__11daObj_GrA_cFv
/* 80C098FC  38 60 00 01 */	li r3, 1
/* 80C09900  39 61 00 70 */	addi r11, r1, 0x70
/* 80C09904  4B 75 89 21 */	bl _restgpr_28
/* 80C09908  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C0990C  7C 08 03 A6 */	mtlr r0
/* 80C09910  38 21 00 70 */	addi r1, r1, 0x70
/* 80C09914  4E 80 00 20 */	blr 
