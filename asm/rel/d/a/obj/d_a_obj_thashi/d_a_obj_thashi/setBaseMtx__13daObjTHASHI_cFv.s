lbl_80D0C354:
/* 80D0C354  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D0C358  7C 08 02 A6 */	mflr r0
/* 80D0C35C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0C360  39 61 00 20 */	addi r11, r1, 0x20
/* 80D0C364  4B 65 5E 6D */	bl _savegpr_26
/* 80D0C368  7C 7E 1B 78 */	mr r30, r3
/* 80D0C36C  3C 60 80 D1 */	lis r3, ccCylSrc_3671@ha /* 0x80D0D18C@ha */
/* 80D0C370  3B E3 D1 8C */	addi r31, r3, ccCylSrc_3671@l /* 0x80D0D18C@l */
/* 80D0C374  80 1E 05 A4 */	lwz r0, 0x5a4(r30)
/* 80D0C378  28 00 00 08 */	cmplwi r0, 8
/* 80D0C37C  41 81 02 74 */	bgt lbl_80D0C5F0
/* 80D0C380  3C 60 80 D1 */	lis r3, lit_4521@ha /* 0x80D0D338@ha */
/* 80D0C384  38 63 D3 38 */	addi r3, r3, lit_4521@l /* 0x80D0D338@l */
/* 80D0C388  54 00 10 3A */	slwi r0, r0, 2
/* 80D0C38C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D0C390  7C 09 03 A6 */	mtctr r0
/* 80D0C394  4E 80 04 20 */	bctr 
lbl_80D0C398:
/* 80D0C398  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D0C39C  4B 30 09 C9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D0C3A0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80D0C3A4  4B 30 0B A1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D0C3A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0C3AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0C3B0  80 9E 10 D4 */	lwz r4, 0x10d4(r30)
/* 80D0C3B4  38 84 00 24 */	addi r4, r4, 0x24
/* 80D0C3B8  4B 63 A0 F9 */	bl PSMTXCopy
/* 80D0C3BC  48 00 02 34 */	b lbl_80D0C5F0
lbl_80D0C3C0:
/* 80D0C3C0  3B 40 00 00 */	li r26, 0
/* 80D0C3C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0C3C8  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0C3CC  48 00 00 4C */	b lbl_80D0C418
lbl_80D0C3D0:
/* 80D0C3D0  7F 5C 07 34 */	extsh r28, r26
/* 80D0C3D4  1C 1C 00 0C */	mulli r0, r28, 0xc
/* 80D0C3D8  7F 7E 02 14 */	add r27, r30, r0
/* 80D0C3DC  38 7B 06 38 */	addi r3, r27, 0x638
/* 80D0C3E0  4B 30 09 85 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D0C3E4  1C 7C 00 06 */	mulli r3, r28, 6
/* 80D0C3E8  38 63 0D 48 */	addi r3, r3, 0xd48
/* 80D0C3EC  7C 7E 1A 14 */	add r3, r30, r3
/* 80D0C3F0  4B 30 0B 55 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D0C3F4  38 7B 0A E8 */	addi r3, r27, 0xae8
/* 80D0C3F8  4B 30 0A 79 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80D0C3FC  7F A3 EB 78 */	mr r3, r29
/* 80D0C400  57 84 10 3A */	slwi r4, r28, 2
/* 80D0C404  38 04 10 DC */	addi r0, r4, 0x10dc
/* 80D0C408  7C 9E 00 2E */	lwzx r4, r30, r0
/* 80D0C40C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D0C410  4B 63 A0 A1 */	bl PSMTXCopy
/* 80D0C414  3B 5A 00 01 */	addi r26, r26, 1
lbl_80D0C418:
/* 80D0C418  7F 40 07 34 */	extsh r0, r26
/* 80D0C41C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80D0C420  41 80 FF B0 */	blt lbl_80D0C3D0
/* 80D0C424  A8 1E 05 B8 */	lha r0, 0x5b8(r30)
/* 80D0C428  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D0C42C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D0C430  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D0C434  7C 23 04 2E */	lfsx f1, r3, r0
/* 80D0C438  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80D0C43C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D0C440  FC 00 02 10 */	fabs f0, f0
/* 80D0C444  FC 60 00 18 */	frsp f3, f0
/* 80D0C448  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0C44C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0C450  C0 3E 05 C0 */	lfs f1, 0x5c0(r30)
/* 80D0C454  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80D0C458  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 80D0C45C  EC 00 18 2A */	fadds f0, f0, f3
/* 80D0C460  EC 42 00 2A */	fadds f2, f2, f0
/* 80D0C464  C0 7E 05 C8 */	lfs f3, 0x5c8(r30)
/* 80D0C468  4B 63 A4 81 */	bl PSMTXTrans
/* 80D0C46C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0C470  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0C474  A8 9E 05 BA */	lha r4, 0x5ba(r30)
/* 80D0C478  4B 2F FF BD */	bl mDoMtx_YrotM__FPA4_fs
/* 80D0C47C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0C480  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0C484  A8 9E 05 BC */	lha r4, 0x5bc(r30)
/* 80D0C488  4B 30 00 45 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80D0C48C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0C490  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0C494  A8 9E 05 B8 */	lha r4, 0x5b8(r30)
/* 80D0C498  4B 2F FF 05 */	bl mDoMtx_XrotM__FPA4_fs
/* 80D0C49C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0C4A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0C4A4  A8 1E 05 BA */	lha r0, 0x5ba(r30)
/* 80D0C4A8  7C 00 00 D0 */	neg r0, r0
/* 80D0C4AC  7C 04 07 34 */	extsh r4, r0
/* 80D0C4B0  4B 2F FF 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D0C4B4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80D0C4B8  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 80D0C4BC  FC 60 08 90 */	fmr f3, f1
/* 80D0C4C0  4B 30 08 DD */	bl transM__14mDoMtx_stack_cFfff
/* 80D0C4C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0C4C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0C4CC  80 9E 11 A4 */	lwz r4, 0x11a4(r30)
/* 80D0C4D0  38 84 00 24 */	addi r4, r4, 0x24
/* 80D0C4D4  4B 63 9F DD */	bl PSMTXCopy
/* 80D0C4D8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D0C4DC  4B 30 08 89 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D0C4E0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80D0C4E4  4B 30 0A 61 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D0C4E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0C4EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0C4F0  80 9E 10 D8 */	lwz r4, 0x10d8(r30)
/* 80D0C4F4  38 84 00 24 */	addi r4, r4, 0x24
/* 80D0C4F8  4B 63 9F B9 */	bl PSMTXCopy
/* 80D0C4FC  48 00 00 F4 */	b lbl_80D0C5F0
lbl_80D0C500:
/* 80D0C500  3B 40 00 00 */	li r26, 0
/* 80D0C504  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0C508  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0C50C  48 00 00 4C */	b lbl_80D0C558
lbl_80D0C510:
/* 80D0C510  7F 5B 07 34 */	extsh r27, r26
/* 80D0C514  1C 1B 00 0C */	mulli r0, r27, 0xc
/* 80D0C518  7F 9E 02 14 */	add r28, r30, r0
/* 80D0C51C  38 7C 06 38 */	addi r3, r28, 0x638
/* 80D0C520  4B 30 08 45 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D0C524  1C 7B 00 06 */	mulli r3, r27, 6
/* 80D0C528  38 63 0D 48 */	addi r3, r3, 0xd48
/* 80D0C52C  7C 7E 1A 14 */	add r3, r30, r3
/* 80D0C530  4B 30 0A 15 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D0C534  38 7C 0A E8 */	addi r3, r28, 0xae8
/* 80D0C538  4B 30 09 39 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80D0C53C  7F E3 FB 78 */	mr r3, r31
/* 80D0C540  57 64 10 3A */	slwi r4, r27, 2
/* 80D0C544  38 04 10 DC */	addi r0, r4, 0x10dc
/* 80D0C548  7C 9E 00 2E */	lwzx r4, r30, r0
/* 80D0C54C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D0C550  4B 63 9F 61 */	bl PSMTXCopy
/* 80D0C554  3B 5A 00 01 */	addi r26, r26, 1
lbl_80D0C558:
/* 80D0C558  7F 40 07 34 */	extsh r0, r26
/* 80D0C55C  2C 00 00 32 */	cmpwi r0, 0x32
/* 80D0C560  41 80 FF B0 */	blt lbl_80D0C510
/* 80D0C564  48 00 00 8C */	b lbl_80D0C5F0
lbl_80D0C568:
/* 80D0C568  3B 40 00 00 */	li r26, 0
/* 80D0C56C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0C570  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0C574  48 00 00 4C */	b lbl_80D0C5C0
lbl_80D0C578:
/* 80D0C578  7F 5B 07 34 */	extsh r27, r26
/* 80D0C57C  1C 1B 00 0C */	mulli r0, r27, 0xc
/* 80D0C580  7F 9E 02 14 */	add r28, r30, r0
/* 80D0C584  38 7C 06 38 */	addi r3, r28, 0x638
/* 80D0C588  4B 30 07 DD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D0C58C  1C 7B 00 06 */	mulli r3, r27, 6
/* 80D0C590  38 63 0D 48 */	addi r3, r3, 0xd48
/* 80D0C594  7C 7E 1A 14 */	add r3, r30, r3
/* 80D0C598  4B 30 09 AD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D0C59C  38 7C 0A E8 */	addi r3, r28, 0xae8
/* 80D0C5A0  4B 30 08 D1 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80D0C5A4  7F E3 FB 78 */	mr r3, r31
/* 80D0C5A8  57 64 10 3A */	slwi r4, r27, 2
/* 80D0C5AC  38 04 10 DC */	addi r0, r4, 0x10dc
/* 80D0C5B0  7C 9E 00 2E */	lwzx r4, r30, r0
/* 80D0C5B4  38 84 00 24 */	addi r4, r4, 0x24
/* 80D0C5B8  4B 63 9E F9 */	bl PSMTXCopy
/* 80D0C5BC  3B 5A 00 01 */	addi r26, r26, 1
lbl_80D0C5C0:
/* 80D0C5C0  7F 40 07 34 */	extsh r0, r26
/* 80D0C5C4  2C 00 00 28 */	cmpwi r0, 0x28
/* 80D0C5C8  41 80 FF B0 */	blt lbl_80D0C578
/* 80D0C5CC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D0C5D0  4B 30 07 95 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D0C5D4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80D0C5D8  4B 30 09 6D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D0C5DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0C5E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0C5E4  80 9E 10 D8 */	lwz r4, 0x10d8(r30)
/* 80D0C5E8  38 84 00 24 */	addi r4, r4, 0x24
/* 80D0C5EC  4B 63 9E C5 */	bl PSMTXCopy
lbl_80D0C5F0:
/* 80D0C5F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D0C5F4  4B 65 5C 29 */	bl _restgpr_26
/* 80D0C5F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D0C5FC  7C 08 03 A6 */	mtlr r0
/* 80D0C600  38 21 00 20 */	addi r1, r1, 0x20
/* 80D0C604  4E 80 00 20 */	blr 
