lbl_806D578C:
/* 806D578C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D5790  7C 08 02 A6 */	mflr r0
/* 806D5794  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D5798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D579C  93 C1 00 08 */	stw r30, 8(r1)
/* 806D57A0  7C 7F 1B 78 */	mr r31, r3
/* 806D57A4  3C 60 80 6D */	lis r3, lit_3906@ha /* 0x806D79A0@ha */
/* 806D57A8  3B C3 79 A0 */	addi r30, r3, lit_3906@l /* 0x806D79A0@l */
/* 806D57AC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806D57B0  4B 93 75 B5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806D57B4  88 1F 0A 69 */	lbz r0, 0xa69(r31)
/* 806D57B8  28 00 00 01 */	cmplwi r0, 1
/* 806D57BC  40 82 00 8C */	bne lbl_806D5848
/* 806D57C0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806D57C4  C0 5F 0A 44 */	lfs f2, 0xa44(r31)
/* 806D57C8  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 806D57CC  EC 42 00 32 */	fmuls f2, f2, f0
/* 806D57D0  FC 60 08 90 */	fmr f3, f1
/* 806D57D4  4B 93 75 C9 */	bl transM__14mDoMtx_stack_cFfff
/* 806D57D8  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 806D57DC  4B 93 77 69 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806D57E0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806D57E4  C0 1F 0A 44 */	lfs f0, 0xa44(r31)
/* 806D57E8  FC 40 00 50 */	fneg f2, f0
/* 806D57EC  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 806D57F0  EC 42 00 32 */	fmuls f2, f2, f0
/* 806D57F4  FC 60 08 90 */	fmr f3, f1
/* 806D57F8  4B 93 75 A5 */	bl transM__14mDoMtx_stack_cFfff
/* 806D57FC  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D5800  80 83 00 04 */	lwz r4, 4(r3)
/* 806D5804  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 806D5808  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 806D580C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 806D5810  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 806D5814  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 806D5818  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 806D581C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806D5820  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806D5824  38 84 00 24 */	addi r4, r4, 0x24
/* 806D5828  4B C7 0C 89 */	bl PSMTXCopy
/* 806D582C  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D5830  4B 93 B9 BD */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806D5834  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D5838  80 63 00 04 */	lwz r3, 4(r3)
/* 806D583C  38 03 00 24 */	addi r0, r3, 0x24
/* 806D5840  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806D5844  48 00 01 74 */	b lbl_806D59B8
lbl_806D5848:
/* 806D5848  28 00 00 02 */	cmplwi r0, 2
/* 806D584C  40 82 00 8C */	bne lbl_806D58D8
/* 806D5850  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806D5854  C0 5F 0A 44 */	lfs f2, 0xa44(r31)
/* 806D5858  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 806D585C  EC 42 00 32 */	fmuls f2, f2, f0
/* 806D5860  FC 60 08 90 */	fmr f3, f1
/* 806D5864  4B 93 75 39 */	bl transM__14mDoMtx_stack_cFfff
/* 806D5868  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 806D586C  4B 93 76 D9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806D5870  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806D5874  C0 1F 0A 44 */	lfs f0, 0xa44(r31)
/* 806D5878  FC 40 00 50 */	fneg f2, f0
/* 806D587C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 806D5880  EC 42 00 32 */	fmuls f2, f2, f0
/* 806D5884  FC 60 08 90 */	fmr f3, f1
/* 806D5888  4B 93 75 15 */	bl transM__14mDoMtx_stack_cFfff
/* 806D588C  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D5890  80 83 00 04 */	lwz r4, 4(r3)
/* 806D5894  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 806D5898  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 806D589C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 806D58A0  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 806D58A4  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 806D58A8  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 806D58AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806D58B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806D58B4  38 84 00 24 */	addi r4, r4, 0x24
/* 806D58B8  4B C7 0B F9 */	bl PSMTXCopy
/* 806D58BC  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D58C0  4B 93 B9 2D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806D58C4  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D58C8  80 63 00 04 */	lwz r3, 4(r3)
/* 806D58CC  38 03 00 24 */	addi r0, r3, 0x24
/* 806D58D0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806D58D4  48 00 00 E4 */	b lbl_806D59B8
lbl_806D58D8:
/* 806D58D8  38 7F 0A 64 */	addi r3, r31, 0xa64
/* 806D58DC  A8 9F 0A 66 */	lha r4, 0xa66(r31)
/* 806D58E0  38 A0 00 80 */	li r5, 0x80
/* 806D58E4  4B B9 AD ED */	bl cLib_chaseS__FPsss
/* 806D58E8  38 7F 0A 50 */	addi r3, r31, 0xa50
/* 806D58EC  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806D58F0  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 806D58F4  4B B9 AE 4D */	bl cLib_chaseF__FPfff
/* 806D58F8  A8 7F 0A 62 */	lha r3, 0xa62(r31)
/* 806D58FC  A8 1F 0A 64 */	lha r0, 0xa64(r31)
/* 806D5900  7C 03 02 14 */	add r0, r3, r0
/* 806D5904  B0 1F 0A 62 */	sth r0, 0xa62(r31)
/* 806D5908  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806D590C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 806D5910  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 806D5914  C0 1F 0A 50 */	lfs f0, 0xa50(r31)
/* 806D5918  EC 02 00 2A */	fadds f0, f2, f0
/* 806D591C  EC 43 00 32 */	fmuls f2, f3, f0
/* 806D5920  FC 60 08 90 */	fmr f3, f1
/* 806D5924  4B 93 74 79 */	bl transM__14mDoMtx_stack_cFfff
/* 806D5928  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806D592C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806D5930  A8 9F 0A 62 */	lha r4, 0xa62(r31)
/* 806D5934  4B 93 6B 99 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806D5938  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806D593C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806D5940  A8 9F 0A 62 */	lha r4, 0xa62(r31)
/* 806D5944  4B 93 6A 59 */	bl mDoMtx_XrotM__FPA4_fs
/* 806D5948  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 806D594C  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 806D5950  C0 1F 0A 50 */	lfs f0, 0xa50(r31)
/* 806D5954  EC 42 00 2A */	fadds f2, f2, f0
/* 806D5958  C0 7F 04 F4 */	lfs f3, 0x4f4(r31)
/* 806D595C  4B 93 74 DD */	bl scaleM__14mDoMtx_stack_cFfff
/* 806D5960  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806D5964  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806D5968  A8 1F 0A 62 */	lha r0, 0xa62(r31)
/* 806D596C  7C 00 00 D0 */	neg r0, r0
/* 806D5970  7C 04 07 34 */	extsh r4, r0
/* 806D5974  4B 93 6A 29 */	bl mDoMtx_XrotM__FPA4_fs
/* 806D5978  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806D597C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806D5980  A8 1F 0A 62 */	lha r0, 0xa62(r31)
/* 806D5984  7C 00 00 D0 */	neg r0, r0
/* 806D5988  7C 04 07 34 */	extsh r4, r0
/* 806D598C  4B 93 6B 41 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806D5990  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 806D5994  4B 93 75 B1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806D5998  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806D599C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806D59A0  80 9F 09 68 */	lwz r4, 0x968(r31)
/* 806D59A4  38 84 00 24 */	addi r4, r4, 0x24
/* 806D59A8  4B C7 0B 09 */	bl PSMTXCopy
/* 806D59AC  80 7F 09 68 */	lwz r3, 0x968(r31)
/* 806D59B0  38 03 00 24 */	addi r0, r3, 0x24
/* 806D59B4  90 1F 05 04 */	stw r0, 0x504(r31)
lbl_806D59B8:
/* 806D59B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D59BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 806D59C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D59C4  7C 08 03 A6 */	mtlr r0
/* 806D59C8  38 21 00 10 */	addi r1, r1, 0x10
/* 806D59CC  4E 80 00 20 */	blr 
