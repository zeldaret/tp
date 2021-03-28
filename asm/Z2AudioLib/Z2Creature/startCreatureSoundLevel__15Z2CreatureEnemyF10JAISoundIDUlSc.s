lbl_802C136C:
/* 802C136C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802C1370  7C 08 02 A6 */	mflr r0
/* 802C1374  90 01 00 64 */	stw r0, 0x64(r1)
/* 802C1378  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 802C137C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 802C1380  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 802C1384  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 802C1388  39 61 00 40 */	addi r11, r1, 0x40
/* 802C138C  48 0A 0E 4D */	bl _savegpr_28
/* 802C1390  7C 7C 1B 78 */	mr r28, r3
/* 802C1394  7C 9D 23 78 */	mr r29, r4
/* 802C1398  7C BE 2B 78 */	mr r30, r5
/* 802C139C  80 64 00 00 */	lwz r3, 0(r4)
/* 802C13A0  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 802C13A4  28 00 FF FF */	cmplwi r0, 0xffff
/* 802C13A8  40 82 00 7C */	bne lbl_802C1424
/* 802C13AC  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802C13B0  80 9C 00 04 */	lwz r4, 4(r28)
/* 802C13B4  38 A1 00 0C */	addi r5, r1, 0xc
/* 802C13B8  38 C0 00 00 */	li r6, 0
/* 802C13BC  4B FF C5 71 */	bl convertAbsToRel__10Z2AudienceFR3VecP3Veci
/* 802C13C0  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802C13C4  38 81 00 0C */	addi r4, r1, 0xc
/* 802C13C8  C0 22 C2 50 */	lfs f1, lit_4187(r2)
/* 802C13CC  38 A0 00 00 */	li r5, 0
/* 802C13D0  4B FF C5 8D */	bl calcRelPosVolume__10Z2AudienceFRC3Vecfi
/* 802C13D4  FF E0 08 90 */	fmr f31, f1
/* 802C13D8  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802C13DC  38 81 00 0C */	addi r4, r1, 0xc
/* 802C13E0  38 A0 00 00 */	li r5, 0
/* 802C13E4  4B FF C6 61 */	bl calcRelPosPan__10Z2AudienceFRC3Veci
/* 802C13E8  FF C0 08 90 */	fmr f30, f1
/* 802C13EC  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802C13F0  38 81 00 0C */	addi r4, r1, 0xc
/* 802C13F4  38 A0 00 00 */	li r5, 0
/* 802C13F8  4B FF C7 4D */	bl calcRelPosDolby__10Z2AudienceFRC3Veci
/* 802C13FC  FC 60 08 90 */	fmr f3, f1
/* 802C1400  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C1404  7C 64 1B 78 */	mr r4, r3
/* 802C1408  38 A0 00 07 */	li r5, 7
/* 802C140C  FC 20 F8 90 */	fmr f1, f31
/* 802C1410  38 C0 00 00 */	li r6, 0
/* 802C1414  FC 40 F0 90 */	fmr f2, f30
/* 802C1418  4B FF 2B D5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802C141C  38 60 00 00 */	li r3, 0
/* 802C1420  48 00 02 44 */	b lbl_802C1664
lbl_802C1424:
/* 802C1424  90 61 00 08 */	stw r3, 8(r1)
/* 802C1428  38 7C 00 08 */	addi r3, r28, 8
/* 802C142C  38 81 00 08 */	addi r4, r1, 8
/* 802C1430  81 9C 00 18 */	lwz r12, 0x18(r28)
/* 802C1434  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C1438  7D 89 03 A6 */	mtctr r12
/* 802C143C  4E 80 04 21 */	bctrl 
/* 802C1440  7C 7F 1B 78 */	mr r31, r3
/* 802C1444  88 1C 00 A0 */	lbz r0, 0xa0(r28)
/* 802C1448  2C 00 00 29 */	cmpwi r0, 0x29
/* 802C144C  41 82 00 98 */	beq lbl_802C14E4
/* 802C1450  40 80 00 10 */	bge lbl_802C1460
/* 802C1454  2C 00 00 23 */	cmpwi r0, 0x23
/* 802C1458  41 82 00 14 */	beq lbl_802C146C
/* 802C145C  48 00 01 48 */	b lbl_802C15A4
lbl_802C1460:
/* 802C1460  2C 00 00 36 */	cmpwi r0, 0x36
/* 802C1464  41 82 00 74 */	beq lbl_802C14D8
/* 802C1468  48 00 01 3C */	b lbl_802C15A4
lbl_802C146C:
/* 802C146C  28 1F 00 00 */	cmplwi r31, 0
/* 802C1470  41 82 01 F0 */	beq lbl_802C1660
/* 802C1474  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C1478  28 00 00 00 */	cmplwi r0, 0
/* 802C147C  41 82 01 E4 */	beq lbl_802C1660
/* 802C1480  80 7D 00 00 */	lwz r3, 0(r29)
/* 802C1484  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 802C1488  28 00 03 23 */	cmplwi r0, 0x323
/* 802C148C  40 82 01 D4 */	bne lbl_802C1660
/* 802C1490  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C1494  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 802C1498  3C 00 43 30 */	lis r0, 0x4330
/* 802C149C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C14A0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C14A4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C14A8  C0 42 C2 20 */	lfs f2, lit_3669(r2)
/* 802C14AC  C0 62 C2 48 */	lfs f3, lit_4091(r2)
/* 802C14B0  C0 82 C2 40 */	lfs f4, lit_3720(r2)
/* 802C14B4  C0 A2 C2 4C */	lfs f5, lit_4092(r2)
/* 802C14B8  C0 C2 C2 54 */	lfs f6, lit_4188(r2)
/* 802C14BC  38 60 00 01 */	li r3, 1
/* 802C14C0  4B FE 82 35 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C14C4  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C14C8  38 63 00 48 */	addi r3, r3, 0x48
/* 802C14CC  38 80 00 00 */	li r4, 0
/* 802C14D0  4B FE 18 E5 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C14D4  48 00 01 8C */	b lbl_802C1660
lbl_802C14D8:
/* 802C14D8  7F C4 F3 78 */	mr r4, r30
/* 802C14DC  48 00 19 05 */	bl Z2_E_sw_modPitch__FP17Z2SoundHandlePoolUl
/* 802C14E0  48 00 01 80 */	b lbl_802C1660
lbl_802C14E4:
/* 802C14E4  28 1F 00 00 */	cmplwi r31, 0
/* 802C14E8  41 82 00 BC */	beq lbl_802C15A4
/* 802C14EC  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C14F0  28 00 00 00 */	cmplwi r0, 0
/* 802C14F4  41 82 00 B0 */	beq lbl_802C15A4
/* 802C14F8  80 7D 00 00 */	lwz r3, 0(r29)
/* 802C14FC  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 802C1500  28 00 04 64 */	cmplwi r0, 0x464
/* 802C1504  40 82 00 A0 */	bne lbl_802C15A4
/* 802C1508  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C150C  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 802C1510  3C 00 43 30 */	lis r0, 0x4330
/* 802C1514  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C1518  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C151C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C1520  C0 42 C2 58 */	lfs f2, lit_4189(r2)
/* 802C1524  C0 62 C2 5C */	lfs f3, lit_4190(r2)
/* 802C1528  C0 82 C2 60 */	lfs f4, lit_4191(r2)
/* 802C152C  C0 A2 C2 64 */	lfs f5, lit_4192(r2)
/* 802C1530  C0 C2 C2 20 */	lfs f6, lit_3669(r2)
/* 802C1534  38 60 00 01 */	li r3, 1
/* 802C1538  4B FE 81 BD */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C153C  FF C0 08 90 */	fmr f30, f1
/* 802C1540  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C1544  93 C1 00 24 */	stw r30, 0x24(r1)
/* 802C1548  3C 00 43 30 */	lis r0, 0x4330
/* 802C154C  90 01 00 20 */	stw r0, 0x20(r1)
/* 802C1550  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802C1554  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C1558  C0 42 C2 58 */	lfs f2, lit_4189(r2)
/* 802C155C  C0 62 C2 5C */	lfs f3, lit_4190(r2)
/* 802C1560  C0 82 C2 40 */	lfs f4, lit_3720(r2)
/* 802C1564  C0 A2 C2 14 */	lfs f5, lit_3666(r2)
/* 802C1568  C0 C2 C2 20 */	lfs f6, lit_3669(r2)
/* 802C156C  38 60 00 01 */	li r3, 1
/* 802C1570  4B FE 81 85 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C1574  FF E0 08 90 */	fmr f31, f1
/* 802C1578  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C157C  38 63 00 48 */	addi r3, r3, 0x48
/* 802C1580  FC 20 F0 90 */	fmr f1, f30
/* 802C1584  38 80 00 00 */	li r4, 0
/* 802C1588  4B FE 18 2D */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C158C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C1590  38 63 00 48 */	addi r3, r3, 0x48
/* 802C1594  FC 20 F8 90 */	fmr f1, f31
/* 802C1598  38 80 00 00 */	li r4, 0
/* 802C159C  4B FE 18 71 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C15A0  48 00 00 C0 */	b lbl_802C1660
lbl_802C15A4:
/* 802C15A4  28 1F 00 00 */	cmplwi r31, 0
/* 802C15A8  41 82 00 B8 */	beq lbl_802C1660
/* 802C15AC  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C15B0  28 00 00 00 */	cmplwi r0, 0
/* 802C15B4  41 82 00 AC */	beq lbl_802C1660
/* 802C15B8  80 7D 00 00 */	lwz r3, 0(r29)
/* 802C15BC  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 802C15C0  28 00 04 62 */	cmplwi r0, 0x462
/* 802C15C4  40 82 00 9C */	bne lbl_802C1660
/* 802C15C8  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C15CC  93 C1 00 24 */	stw r30, 0x24(r1)
/* 802C15D0  3C 00 43 30 */	lis r0, 0x4330
/* 802C15D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 802C15D8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802C15DC  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C15E0  C0 42 C2 34 */	lfs f2, lit_3717(r2)
/* 802C15E4  C0 62 C2 08 */	lfs f3, lit_3663(r2)
/* 802C15E8  C0 82 C2 40 */	lfs f4, lit_3720(r2)
/* 802C15EC  FC A0 10 90 */	fmr f5, f2
/* 802C15F0  C0 C2 C2 20 */	lfs f6, lit_3669(r2)
/* 802C15F4  38 60 00 01 */	li r3, 1
/* 802C15F8  4B FE 80 FD */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C15FC  FF C0 08 90 */	fmr f30, f1
/* 802C1600  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C1604  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 802C1608  3C 00 43 30 */	lis r0, 0x4330
/* 802C160C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C1610  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C1614  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C1618  C0 42 C2 68 */	lfs f2, lit_4193(r2)
/* 802C161C  C0 62 C2 6C */	lfs f3, lit_4194(r2)
/* 802C1620  C0 82 C2 40 */	lfs f4, lit_3720(r2)
/* 802C1624  C0 A2 C2 14 */	lfs f5, lit_3666(r2)
/* 802C1628  C0 C2 C2 18 */	lfs f6, lit_3667(r2)
/* 802C162C  38 60 00 01 */	li r3, 1
/* 802C1630  4B FE 80 C5 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C1634  FF E0 08 90 */	fmr f31, f1
/* 802C1638  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C163C  38 63 00 48 */	addi r3, r3, 0x48
/* 802C1640  FC 20 F0 90 */	fmr f1, f30
/* 802C1644  38 80 00 00 */	li r4, 0
/* 802C1648  4B FE 17 6D */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C164C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C1650  38 63 00 48 */	addi r3, r3, 0x48
/* 802C1654  FC 20 F8 90 */	fmr f1, f31
/* 802C1658  38 80 00 00 */	li r4, 0
/* 802C165C  4B FE 17 B1 */	bl movePitch__18JAISoundParamsMoveFfUl
lbl_802C1660:
/* 802C1660  7F E3 FB 78 */	mr r3, r31
lbl_802C1664:
/* 802C1664  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 802C1668  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 802C166C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 802C1670  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 802C1674  39 61 00 40 */	addi r11, r1, 0x40
/* 802C1678  48 0A 0B AD */	bl _restgpr_28
/* 802C167C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802C1680  7C 08 03 A6 */	mtlr r0
/* 802C1684  38 21 00 60 */	addi r1, r1, 0x60
/* 802C1688  4E 80 00 20 */	blr 
