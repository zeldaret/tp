lbl_805D91A4:
/* 805D91A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805D91A8  7C 08 02 A6 */	mflr r0
/* 805D91AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D91B0  39 61 00 30 */	addi r11, r1, 0x30
/* 805D91B4  4B D8 90 25 */	bl _savegpr_28
/* 805D91B8  7C 7F 1B 78 */	mr r31, r3
/* 805D91BC  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805D91C0  3B C3 CA 54 */	addi r30, r3, lit_3932@l /* 0x805DCA54@l */
/* 805D91C4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805D91C8  4B A3 3B 9D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805D91CC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805D91D0  4B A3 3D 75 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805D91D4  3C 60 80 5E */	lis r3, l_HIO@ha /* 0x805DDABC@ha */
/* 805D91D8  38 63 DA BC */	addi r3, r3, l_HIO@l /* 0x805DDABC@l */
/* 805D91DC  C0 23 00 08 */	lfs f1, 8(r3)
/* 805D91E0  FC 40 08 90 */	fmr f2, f1
/* 805D91E4  FC 60 08 90 */	fmr f3, f1
/* 805D91E8  4B A3 3C 51 */	bl scaleM__14mDoMtx_stack_cFfff
/* 805D91EC  88 1F 08 5F */	lbz r0, 0x85f(r31)
/* 805D91F0  28 00 00 00 */	cmplwi r0, 0
/* 805D91F4  41 82 00 18 */	beq lbl_805D920C
/* 805D91F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D91FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D9200  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 805D9204  38 84 00 24 */	addi r4, r4, 0x24
/* 805D9208  4B D6 D2 A9 */	bl PSMTXCopy
lbl_805D920C:
/* 805D920C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D9210  83 83 00 04 */	lwz r28, 4(r3)
/* 805D9214  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D9218  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D921C  38 9C 00 24 */	addi r4, r28, 0x24
/* 805D9220  4B D6 D2 91 */	bl PSMTXCopy
/* 805D9224  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D9228  4B A3 7F C5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 805D922C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805D9230  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D9234  38 63 01 20 */	addi r3, r3, 0x120
/* 805D9238  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D923C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D9240  4B D6 D2 71 */	bl PSMTXCopy
/* 805D9244  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D9248  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D924C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 805D9250  D0 1F 07 54 */	stfs f0, 0x754(r31)
/* 805D9254  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805D9258  D0 1F 07 58 */	stfs f0, 0x758(r31)
/* 805D925C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805D9260  D0 1F 07 5C */	stfs f0, 0x75c(r31)
/* 805D9264  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805D9268  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D926C  38 63 01 50 */	addi r3, r3, 0x150
/* 805D9270  7F A4 EB 78 */	mr r4, r29
/* 805D9274  4B D6 D2 3D */	bl PSMTXCopy
/* 805D9278  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D927C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805D9280  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805D9284  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805D9288  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805D928C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D9290  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D9294  38 81 00 08 */	addi r4, r1, 8
/* 805D9298  38 BF 07 00 */	addi r5, r31, 0x700
/* 805D929C  4B D6 DA D1 */	bl PSMTXMultVec
/* 805D92A0  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805D92A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D92A8  38 63 01 50 */	addi r3, r3, 0x150
/* 805D92AC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D92B0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D92B4  4B D6 D1 FD */	bl PSMTXCopy
/* 805D92B8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805D92BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 805D92C0  C0 1E 02 B4 */	lfs f0, 0x2b4(r30)
/* 805D92C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805D92C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D92CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805D92D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D92D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D92D8  38 81 00 08 */	addi r4, r1, 8
/* 805D92DC  38 BF 07 0C */	addi r5, r31, 0x70c
/* 805D92E0  4B D6 DA 8D */	bl PSMTXMultVec
/* 805D92E4  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805D92E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D92EC  38 63 01 20 */	addi r3, r3, 0x120
/* 805D92F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D92F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D92F8  4B D6 D1 B9 */	bl PSMTXCopy
/* 805D92FC  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805D9300  2C 00 00 01 */	cmpwi r0, 1
/* 805D9304  41 82 00 14 */	beq lbl_805D9318
/* 805D9308  38 7F 06 9C */	addi r3, r31, 0x69c
/* 805D930C  48 00 35 D9 */	bl func_805DC8E4
/* 805D9310  2C 03 00 00 */	cmpwi r3, 0
/* 805D9314  41 82 00 20 */	beq lbl_805D9334
lbl_805D9318:
/* 805D9318  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 805D931C  D0 01 00 08 */	stfs f0, 8(r1)
/* 805D9320  C0 1E 05 F8 */	lfs f0, 0x5f8(r30)
/* 805D9324  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805D9328  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D932C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805D9330  48 00 00 1C */	b lbl_805D934C
lbl_805D9334:
/* 805D9334  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 805D9338  D0 01 00 08 */	stfs f0, 8(r1)
/* 805D933C  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 805D9340  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805D9344  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D9348  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_805D934C:
/* 805D934C  C0 21 00 08 */	lfs f1, 8(r1)
/* 805D9350  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 805D9354  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 805D9358  4B A3 3A 45 */	bl transM__14mDoMtx_stack_cFfff
/* 805D935C  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805D9360  2C 00 00 01 */	cmpwi r0, 1
/* 805D9364  41 82 00 10 */	beq lbl_805D9374
/* 805D9368  80 1F 06 9C */	lwz r0, 0x69c(r31)
/* 805D936C  2C 00 00 00 */	cmpwi r0, 0
/* 805D9370  41 82 00 28 */	beq lbl_805D9398
lbl_805D9374:
/* 805D9374  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D9378  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D937C  38 80 C0 00 */	li r4, -16384
/* 805D9380  4B A3 30 B5 */	bl mDoMtx_YrotM__FPA4_fs
/* 805D9384  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D9388  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D938C  38 80 88 90 */	li r4, -30576
/* 805D9390  4B A3 30 0D */	bl mDoMtx_XrotM__FPA4_fs
/* 805D9394  48 00 00 24 */	b lbl_805D93B8
lbl_805D9398:
/* 805D9398  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D939C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D93A0  38 80 C2 BC */	li r4, -15684
/* 805D93A4  4B A3 30 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 805D93A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D93AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D93B0  38 80 83 B4 */	li r4, -31820
/* 805D93B4  4B A3 2F E9 */	bl mDoMtx_XrotM__FPA4_fs
lbl_805D93B8:
/* 805D93B8  C0 3F 06 B8 */	lfs f1, 0x6b8(r31)
/* 805D93BC  C0 5F 06 BC */	lfs f2, 0x6bc(r31)
/* 805D93C0  C0 7F 06 C0 */	lfs f3, 0x6c0(r31)
/* 805D93C4  4B A3 3A 75 */	bl scaleM__14mDoMtx_stack_cFfff
/* 805D93C8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 805D93CC  D0 1F 06 E8 */	stfs f0, 0x6e8(r31)
/* 805D93D0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805D93D4  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 805D93D8  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805D93DC  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 805D93E0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805D93E4  80 83 00 04 */	lwz r4, 4(r3)
/* 805D93E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D93EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D93F0  38 84 00 24 */	addi r4, r4, 0x24
/* 805D93F4  4B D6 D0 BD */	bl PSMTXCopy
/* 805D93F8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805D93FC  4B A3 7D F1 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 805D9400  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D9404  D0 01 00 08 */	stfs f0, 8(r1)
/* 805D9408  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 805D940C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805D9410  C0 1E 02 28 */	lfs f0, 0x228(r30)
/* 805D9414  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805D9418  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D941C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D9420  38 81 00 08 */	addi r4, r1, 8
/* 805D9424  38 BF 05 38 */	addi r5, r31, 0x538
/* 805D9428  4B D6 D9 45 */	bl PSMTXMultVec
/* 805D942C  88 1F 08 5C */	lbz r0, 0x85c(r31)
/* 805D9430  28 00 00 01 */	cmplwi r0, 1
/* 805D9434  40 82 00 1C */	bne lbl_805D9450
/* 805D9438  C0 1F 06 DC */	lfs f0, 0x6dc(r31)
/* 805D943C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805D9440  C0 1F 06 E0 */	lfs f0, 0x6e0(r31)
/* 805D9444  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805D9448  C0 1F 06 E4 */	lfs f0, 0x6e4(r31)
/* 805D944C  D0 1F 05 40 */	stfs f0, 0x540(r31)
lbl_805D9450:
/* 805D9450  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805D9454  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805D9458  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805D945C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805D9460  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 805D9464  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805D9468  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 805D946C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805D9470  EC 01 00 2A */	fadds f0, f1, f0
/* 805D9474  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805D9478  38 7F 06 E8 */	addi r3, r31, 0x6e8
/* 805D947C  4B A3 38 E9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805D9480  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805D9484  4B A3 3A C1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805D9488  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 805D948C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805D9490  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805D9494  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 805D9498  C0 7E 01 90 */	lfs f3, 0x190(r30)
/* 805D949C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 805D94A0  4B A3 38 FD */	bl transM__14mDoMtx_stack_cFfff
/* 805D94A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D94A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D94AC  A8 9F 07 CA */	lha r4, 0x7ca(r31)
/* 805D94B0  38 04 13 88 */	addi r0, r4, 0x1388
/* 805D94B4  7C 04 07 34 */	extsh r4, r0
/* 805D94B8  4B A3 2F 7D */	bl mDoMtx_YrotM__FPA4_fs
/* 805D94BC  C0 3F 06 AC */	lfs f1, 0x6ac(r31)
/* 805D94C0  C0 5F 06 B0 */	lfs f2, 0x6b0(r31)
/* 805D94C4  C0 7F 06 B4 */	lfs f3, 0x6b4(r31)
/* 805D94C8  4B A3 39 71 */	bl scaleM__14mDoMtx_stack_cFfff
/* 805D94CC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 805D94D0  D0 1F 07 48 */	stfs f0, 0x748(r31)
/* 805D94D4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805D94D8  D0 1F 07 4C */	stfs f0, 0x74c(r31)
/* 805D94DC  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805D94E0  D0 1F 07 50 */	stfs f0, 0x750(r31)
/* 805D94E4  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 805D94E8  80 83 00 04 */	lwz r4, 4(r3)
/* 805D94EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805D94F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805D94F4  38 84 00 24 */	addi r4, r4, 0x24
/* 805D94F8  4B D6 CF B9 */	bl PSMTXCopy
/* 805D94FC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 805D9500  4B A3 7C ED */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 805D9504  39 61 00 30 */	addi r11, r1, 0x30
/* 805D9508  4B D8 8D 1D */	bl _restgpr_28
/* 805D950C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D9510  7C 08 03 A6 */	mtlr r0
/* 805D9514  38 21 00 30 */	addi r1, r1, 0x30
/* 805D9518  4E 80 00 20 */	blr 
