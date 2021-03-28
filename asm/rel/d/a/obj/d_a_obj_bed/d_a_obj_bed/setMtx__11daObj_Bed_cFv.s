lbl_80BADFD0:
/* 80BADFD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADFD4  7C 08 02 A6 */	mflr r0
/* 80BADFD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADFDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BADFE0  7C 7F 1B 78 */	mr r31, r3
/* 80BADFE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BADFE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BADFEC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BADFF0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BADFF4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BADFF8  4B 79 88 F0 */	b PSMTXTrans
/* 80BADFFC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BAE000  4B 45 EF 44 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BAE004  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80BAE008  4B 45 EE 68 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80BAE00C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE010  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE014  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80BAE018  38 84 00 24 */	addi r4, r4, 0x24
/* 80BAE01C  4B 79 84 94 */	b PSMTXCopy
/* 80BAE020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAE024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAE028  7C 08 03 A6 */	mtlr r0
/* 80BAE02C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAE030  4E 80 00 20 */	blr 
