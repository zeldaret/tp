lbl_80D3D5C8:
/* 80D3D5C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3D5CC  7C 08 02 A6 */	mflr r0
/* 80D3D5D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3D5D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D3D5D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D3D5DC  7C 7F 1B 78 */	mr r31, r3
/* 80D3D5E0  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80D3D5E4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D3D5E8  7C 03 00 50 */	subf r0, r3, r0
/* 80D3D5EC  7C 04 07 34 */	extsh r4, r0
/* 80D3D5F0  A8 1F 0A 04 */	lha r0, 0xa04(r31)
/* 80D3D5F4  3C 60 80 D4 */	lis r3, lit_4334@ha /* 0x80D3DD4C@ha */
/* 80D3D5F8  C8 23 DD 4C */	lfd f1, lit_4334@l(r3)  /* 0x80D3DD4C@l */
/* 80D3D5FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D3D600  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D3D604  3C 00 43 30 */	lis r0, 0x4330
/* 80D3D608  90 01 00 08 */	stw r0, 8(r1)
/* 80D3D60C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D3D610  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D3D614  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D3D618  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D3D61C  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 80D3D620  7C 63 02 14 */	add r3, r3, r0
/* 80D3D624  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D3D628  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D3D62C  FC 00 00 1E */	fctiwz f0, f0
/* 80D3D630  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D3D634  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 80D3D638  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3D63C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3D640  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D3D644  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D3D648  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D3D64C  4B 60 92 9D */	bl PSMTXTrans
/* 80D3D650  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D3D654  4B 2C F8 F1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D3D658  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3D65C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3D660  7F C4 F3 78 */	mr r4, r30
/* 80D3D664  4B 2C ED D1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D3D668  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80D3D66C  4B 2C F8 05 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80D3D670  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3D674  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3D678  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 80D3D67C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D3D680  4B 60 8E 31 */	bl PSMTXCopy
/* 80D3D684  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D3D688  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D3D68C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3D690  7C 08 03 A6 */	mtlr r0
/* 80D3D694  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3D698  4E 80 00 20 */	blr 
