lbl_807C839C:
/* 807C839C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807C83A0  7C 08 02 A6 */	mflr r0
/* 807C83A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 807C83A8  39 61 00 40 */	addi r11, r1, 0x40
/* 807C83AC  4B B9 9E 31 */	bl _savegpr_29
/* 807C83B0  7C 7D 1B 78 */	mr r29, r3
/* 807C83B4  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807C83B8  3B E3 EC A8 */	addi r31, r3, lit_3907@l /* 0x807CECA8@l */
/* 807C83BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C83C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C83C4  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 807C83C8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807C83CC  80 63 00 04 */	lwz r3, 4(r3)
/* 807C83D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807C83D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807C83D8  38 63 06 30 */	addi r3, r3, 0x630
/* 807C83DC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807C83E0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807C83E4  4B B7 E0 CD */	bl PSMTXCopy
/* 807C83E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807C83EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807C83F0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807C83F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807C83F8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807C83FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807C8400  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807C8404  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807C8408  80 1D 13 20 */	lwz r0, 0x1320(r29)
/* 807C840C  2C 00 00 02 */	cmpwi r0, 2
/* 807C8410  41 82 03 E0 */	beq lbl_807C87F0
/* 807C8414  40 80 00 14 */	bge lbl_807C8428
/* 807C8418  2C 00 00 00 */	cmpwi r0, 0
/* 807C841C  41 82 00 18 */	beq lbl_807C8434
/* 807C8420  40 80 00 BC */	bge lbl_807C84DC
/* 807C8424  48 00 03 CC */	b lbl_807C87F0
lbl_807C8428:
/* 807C8428  2C 00 00 04 */	cmpwi r0, 4
/* 807C842C  40 80 03 C4 */	bge lbl_807C87F0
/* 807C8430  48 00 03 7C */	b lbl_807C87AC
lbl_807C8434:
/* 807C8434  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C8438  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807C843C  7F A3 EB 78 */	mr r3, r29
/* 807C8440  38 80 00 28 */	li r4, 0x28
/* 807C8444  38 A0 00 00 */	li r5, 0
/* 807C8448  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C844C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C8450  4B FF B3 C9 */	bl setBck__8daE_VA_cFiUcff
/* 807C8454  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032E@ha */
/* 807C8458  38 03 03 2E */	addi r0, r3, 0x032E /* 0x0007032E@l */
/* 807C845C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C8460  38 7D 12 54 */	addi r3, r29, 0x1254
/* 807C8464  38 81 00 14 */	addi r4, r1, 0x14
/* 807C8468  38 A0 FF FF */	li r5, -1
/* 807C846C  81 9D 12 54 */	lwz r12, 0x1254(r29)
/* 807C8470  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C8474  7D 89 03 A6 */	mtctr r12
/* 807C8478  4E 80 04 21 */	bctrl 
/* 807C847C  38 60 00 01 */	li r3, 1
/* 807C8480  90 7D 13 20 */	stw r3, 0x1320(r29)
/* 807C8484  38 00 00 00 */	li r0, 0
/* 807C8488  90 1D 13 24 */	stw r0, 0x1324(r29)
/* 807C848C  90 1D 13 5C */	stw r0, 0x135c(r29)
/* 807C8490  98 7D 13 7F */	stb r3, 0x137f(r29)
/* 807C8494  80 1D 1C C8 */	lwz r0, 0x1cc8(r29)
/* 807C8498  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C849C  90 1D 1C C8 */	stw r0, 0x1cc8(r29)
/* 807C84A0  80 1D 1E 04 */	lwz r0, 0x1e04(r29)
/* 807C84A4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C84A8  90 1D 1E 04 */	stw r0, 0x1e04(r29)
/* 807C84AC  38 61 00 18 */	addi r3, r1, 0x18
/* 807C84B0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807C84B4  4B AA 87 51 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807C84B8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807C84BC  7C 00 18 50 */	subf r0, r0, r3
/* 807C84C0  7C 00 07 35 */	extsh. r0, r0
/* 807C84C4  40 80 00 10 */	bge lbl_807C84D4
/* 807C84C8  38 00 00 00 */	li r0, 0
/* 807C84CC  98 1D 13 90 */	stb r0, 0x1390(r29)
/* 807C84D0  48 00 00 0C */	b lbl_807C84DC
lbl_807C84D4:
/* 807C84D4  38 00 00 01 */	li r0, 1
/* 807C84D8  98 1D 13 90 */	stb r0, 0x1390(r29)
lbl_807C84DC:
/* 807C84DC  7F C3 F3 78 */	mr r3, r30
/* 807C84E0  88 1D 13 90 */	lbz r0, 0x1390(r29)
/* 807C84E4  28 00 00 00 */	cmplwi r0, 0
/* 807C84E8  41 82 00 14 */	beq lbl_807C84FC
/* 807C84EC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807C84F0  38 04 C0 00 */	addi r0, r4, -16384
/* 807C84F4  7C 04 07 34 */	extsh r4, r0
/* 807C84F8  48 00 00 10 */	b lbl_807C8508
lbl_807C84FC:
/* 807C84FC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807C8500  38 04 40 00 */	addi r0, r4, 0x4000
/* 807C8504  7C 04 07 34 */	extsh r4, r0
lbl_807C8508:
/* 807C8508  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807C850C  81 8C 01 E4 */	lwz r12, 0x1e4(r12)
/* 807C8510  7D 89 03 A6 */	mtctr r12
/* 807C8514  4E 80 04 21 */	bctrl 
/* 807C8518  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 807C851C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 807C8520  41 82 01 10 */	beq lbl_807C8630
/* 807C8524  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 807C8528  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 807C852C  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 807C8530  80 7D 13 5C */	lwz r3, 0x135c(r29)
/* 807C8534  38 03 00 01 */	addi r0, r3, 1
/* 807C8538  90 1D 13 5C */	stw r0, 0x135c(r29)
/* 807C853C  80 7D 13 24 */	lwz r3, 0x1324(r29)
/* 807C8540  38 03 00 01 */	addi r0, r3, 1
/* 807C8544  90 1D 13 24 */	stw r0, 0x1324(r29)
/* 807C8548  80 1D 13 5C */	lwz r0, 0x135c(r29)
/* 807C854C  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 807C8550  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807C8554  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807C8558  3C 00 43 30 */	lis r0, 0x4330
/* 807C855C  90 01 00 28 */	stw r0, 0x28(r1)
/* 807C8560  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 807C8564  EC 20 08 28 */	fsubs f1, f0, f1
/* 807C8568  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807C856C  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807C8570  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 807C8574  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C8578  4C 41 13 82 */	cror 2, 1, 2
/* 807C857C  40 82 00 54 */	bne lbl_807C85D0
/* 807C8580  38 00 00 00 */	li r0, 0
/* 807C8584  90 1D 13 5C */	stw r0, 0x135c(r29)
/* 807C8588  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 807C858C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 807C8590  90 1E 05 78 */	stw r0, 0x578(r30)
/* 807C8594  7F A3 EB 78 */	mr r3, r29
/* 807C8598  38 80 00 0B */	li r4, 0xb
/* 807C859C  38 A0 00 00 */	li r5, 0
/* 807C85A0  4B FF B3 79 */	bl setActionMode__8daE_VA_cFii
/* 807C85A4  38 7D 12 54 */	addi r3, r29, 0x1254
/* 807C85A8  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 807C85AC  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 807C85B0  38 A0 00 20 */	li r5, 0x20
/* 807C85B4  81 9D 12 54 */	lwz r12, 0x1254(r29)
/* 807C85B8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 807C85BC  7D 89 03 A6 */	mtctr r12
/* 807C85C0  4E 80 04 21 */	bctrl 
/* 807C85C4  38 00 00 00 */	li r0, 0
/* 807C85C8  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807C85CC  48 00 02 7C */	b lbl_807C8848
lbl_807C85D0:
/* 807C85D0  7F A3 EB 78 */	mr r3, r29
/* 807C85D4  38 80 00 28 */	li r4, 0x28
/* 807C85D8  38 A0 00 00 */	li r5, 0
/* 807C85DC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C85E0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C85E4  4B FF B2 35 */	bl setBck__8daE_VA_cFiUcff
/* 807C85E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032E@ha */
/* 807C85EC  38 03 03 2E */	addi r0, r3, 0x032E /* 0x0007032E@l */
/* 807C85F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C85F4  38 7D 12 54 */	addi r3, r29, 0x1254
/* 807C85F8  38 81 00 10 */	addi r4, r1, 0x10
/* 807C85FC  38 A0 FF FF */	li r5, -1
/* 807C8600  81 9D 12 54 */	lwz r12, 0x1254(r29)
/* 807C8604  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C8608  7D 89 03 A6 */	mtctr r12
/* 807C860C  4E 80 04 21 */	bctrl 
/* 807C8610  38 7D 12 54 */	addi r3, r29, 0x1254
/* 807C8614  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 807C8618  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 807C861C  38 A0 00 1E */	li r5, 0x1e
/* 807C8620  81 9D 12 54 */	lwz r12, 0x1254(r29)
/* 807C8624  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 807C8628  7D 89 03 A6 */	mtctr r12
/* 807C862C  4E 80 04 21 */	bctrl 
lbl_807C8630:
/* 807C8630  7F A3 EB 78 */	mr r3, r29
/* 807C8634  38 80 00 28 */	li r4, 0x28
/* 807C8638  4B FF B2 85 */	bl checkBck__8daE_VA_cFi
/* 807C863C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C8640  41 82 00 50 */	beq lbl_807C8690
/* 807C8644  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807C8648  38 80 00 01 */	li r4, 1
/* 807C864C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C8650  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C8654  40 82 00 18 */	bne lbl_807C866C
/* 807C8658  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C865C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C8660  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C8664  41 82 00 08 */	beq lbl_807C866C
/* 807C8668  38 80 00 00 */	li r4, 0
lbl_807C866C:
/* 807C866C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C8670  41 82 00 A0 */	beq lbl_807C8710
/* 807C8674  7F A3 EB 78 */	mr r3, r29
/* 807C8678  38 80 00 26 */	li r4, 0x26
/* 807C867C  38 A0 00 02 */	li r5, 2
/* 807C8680  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C8684  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C8688  4B FF B1 91 */	bl setBck__8daE_VA_cFiUcff
/* 807C868C  48 00 00 84 */	b lbl_807C8710
lbl_807C8690:
/* 807C8690  7F A3 EB 78 */	mr r3, r29
/* 807C8694  38 80 00 26 */	li r4, 0x26
/* 807C8698  4B FF B2 25 */	bl checkBck__8daE_VA_cFi
/* 807C869C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C86A0  41 82 00 70 */	beq lbl_807C8710
/* 807C86A4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807C86A8  38 63 00 0C */	addi r3, r3, 0xc
/* 807C86AC  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 807C86B0  4B B5 FD 7D */	bl checkPass__12J3DFrameCtrlFf
/* 807C86B4  2C 03 00 00 */	cmpwi r3, 0
/* 807C86B8  41 82 00 58 */	beq lbl_807C8710
/* 807C86BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007032C@ha */
/* 807C86C0  38 03 03 2C */	addi r0, r3, 0x032C /* 0x0007032C@l */
/* 807C86C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C86C8  38 7D 12 54 */	addi r3, r29, 0x1254
/* 807C86CC  38 81 00 0C */	addi r4, r1, 0xc
/* 807C86D0  38 A0 FF FF */	li r5, -1
/* 807C86D4  81 9D 12 54 */	lwz r12, 0x1254(r29)
/* 807C86D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C86DC  7D 89 03 A6 */	mtctr r12
/* 807C86E0  4E 80 04 21 */	bctrl 
/* 807C86E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033C@ha */
/* 807C86E8  38 03 03 3C */	addi r0, r3, 0x033C /* 0x0007033C@l */
/* 807C86EC  90 01 00 08 */	stw r0, 8(r1)
/* 807C86F0  38 7D 12 54 */	addi r3, r29, 0x1254
/* 807C86F4  38 81 00 08 */	addi r4, r1, 8
/* 807C86F8  38 A0 00 00 */	li r5, 0
/* 807C86FC  38 C0 FF FF */	li r6, -1
/* 807C8700  81 9D 12 54 */	lwz r12, 0x1254(r29)
/* 807C8704  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C8708  7D 89 03 A6 */	mtctr r12
/* 807C870C  4E 80 04 21 */	bctrl 
lbl_807C8710:
/* 807C8710  4B 99 6D 15 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 807C8714  2C 03 00 00 */	cmpwi r3, 0
/* 807C8718  40 82 00 48 */	bne lbl_807C8760
/* 807C871C  80 1D 13 58 */	lwz r0, 0x1358(r29)
/* 807C8720  2C 00 00 00 */	cmpwi r0, 0
/* 807C8724  40 82 00 3C */	bne lbl_807C8760
/* 807C8728  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 807C872C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 807C8730  90 1E 05 78 */	stw r0, 0x578(r30)
/* 807C8734  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807C8738  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807C873C  80 63 00 00 */	lwz r3, 0(r3)
/* 807C8740  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C8744  38 80 00 01 */	li r4, 1
/* 807C8748  4B AE 96 AD */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 807C874C  7F A3 EB 78 */	mr r3, r29
/* 807C8750  38 80 00 13 */	li r4, 0x13
/* 807C8754  38 A0 00 00 */	li r5, 0
/* 807C8758  4B FF B1 C1 */	bl setActionMode__8daE_VA_cFii
/* 807C875C  48 00 00 EC */	b lbl_807C8848
lbl_807C8760:
/* 807C8760  7F C3 F3 78 */	mr r3, r30
/* 807C8764  7F A4 EB 78 */	mr r4, r29
/* 807C8768  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 807C876C  81 8C 01 E0 */	lwz r12, 0x1e0(r12)
/* 807C8770  7D 89 03 A6 */	mtctr r12
/* 807C8774  4E 80 04 21 */	bctrl 
/* 807C8778  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C877C  40 82 00 74 */	bne lbl_807C87F0
/* 807C8780  7F A3 EB 78 */	mr r3, r29
/* 807C8784  38 80 00 29 */	li r4, 0x29
/* 807C8788  38 A0 00 00 */	li r5, 0
/* 807C878C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C8790  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C8794  4B FF B0 85 */	bl setBck__8daE_VA_cFiUcff
/* 807C8798  38 00 00 03 */	li r0, 3
/* 807C879C  90 1D 13 20 */	stw r0, 0x1320(r29)
/* 807C87A0  38 00 00 00 */	li r0, 0
/* 807C87A4  98 1D 13 7F */	stb r0, 0x137f(r29)
/* 807C87A8  48 00 00 48 */	b lbl_807C87F0
lbl_807C87AC:
/* 807C87AC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807C87B0  38 80 00 01 */	li r4, 1
/* 807C87B4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C87B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C87BC  40 82 00 18 */	bne lbl_807C87D4
/* 807C87C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C87C4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C87C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C87CC  41 82 00 08 */	beq lbl_807C87D4
/* 807C87D0  38 80 00 00 */	li r4, 0
lbl_807C87D4:
/* 807C87D4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C87D8  41 82 00 18 */	beq lbl_807C87F0
/* 807C87DC  7F A3 EB 78 */	mr r3, r29
/* 807C87E0  38 80 00 07 */	li r4, 7
/* 807C87E4  38 A0 00 00 */	li r5, 0
/* 807C87E8  4B FF B1 31 */	bl setActionMode__8daE_VA_cFii
/* 807C87EC  48 00 00 5C */	b lbl_807C8848
lbl_807C87F0:
/* 807C87F0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807C87F4  D0 1D 05 68 */	stfs f0, 0x568(r29)
/* 807C87F8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807C87FC  D0 1D 05 6C */	stfs f0, 0x56c(r29)
/* 807C8800  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807C8804  D0 1D 05 70 */	stfs f0, 0x570(r29)
/* 807C8808  4B 99 6C 1D */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 807C880C  2C 03 00 00 */	cmpwi r3, 0
/* 807C8810  40 82 00 38 */	bne lbl_807C8848
/* 807C8814  80 1D 13 58 */	lwz r0, 0x1358(r29)
/* 807C8818  2C 00 00 00 */	cmpwi r0, 0
/* 807C881C  40 82 00 2C */	bne lbl_807C8848
/* 807C8820  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807C8824  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807C8828  80 63 00 00 */	lwz r3, 0(r3)
/* 807C882C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C8830  38 80 00 01 */	li r4, 1
/* 807C8834  4B AE 95 C1 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 807C8838  7F A3 EB 78 */	mr r3, r29
/* 807C883C  38 80 00 13 */	li r4, 0x13
/* 807C8840  38 A0 00 00 */	li r5, 0
/* 807C8844  4B FF B0 D5 */	bl setActionMode__8daE_VA_cFii
lbl_807C8848:
/* 807C8848  39 61 00 40 */	addi r11, r1, 0x40
/* 807C884C  4B B9 99 DD */	bl _restgpr_29
/* 807C8850  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807C8854  7C 08 03 A6 */	mtlr r0
/* 807C8858  38 21 00 40 */	addi r1, r1, 0x40
/* 807C885C  4E 80 00 20 */	blr 
