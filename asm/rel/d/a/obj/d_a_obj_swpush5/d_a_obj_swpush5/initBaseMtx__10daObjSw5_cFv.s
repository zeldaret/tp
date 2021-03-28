lbl_8059B804:
/* 8059B804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B808  7C 08 02 A6 */	mflr r0
/* 8059B80C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059B814  7C 7F 1B 78 */	mr r31, r3
/* 8059B818  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8059B81C  4B A7 15 48 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8059B820  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059B824  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059B828  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8059B82C  4B A7 0C 08 */	b mDoMtx_YrotM__FPA4_fs
/* 8059B830  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059B834  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059B838  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 8059B83C  38 84 00 24 */	addi r4, r4, 0x24
/* 8059B840  4B DA AC 70 */	b PSMTXCopy
/* 8059B844  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059B848  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059B84C  38 9F 05 BC */	addi r4, r31, 0x5bc
/* 8059B850  4B DA AC 60 */	b PSMTXCopy
/* 8059B854  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8059B858  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8059B85C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8059B860  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8059B864  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8059B868  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8059B86C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8059B870  7F E3 FB 78 */	mr r3, r31
/* 8059B874  48 00 00 19 */	bl setBaseMtx__10daObjSw5_cFv
/* 8059B878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059B87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B880  7C 08 03 A6 */	mtlr r0
/* 8059B884  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B888  4E 80 00 20 */	blr 
