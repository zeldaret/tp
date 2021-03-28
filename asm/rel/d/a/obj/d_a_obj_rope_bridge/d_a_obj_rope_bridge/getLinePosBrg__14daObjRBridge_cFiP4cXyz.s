lbl_805967E4:
/* 805967E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805967E8  7C 08 02 A6 */	mflr r0
/* 805967EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805967F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805967F4  93 C1 00 08 */	stw r30, 8(r1)
/* 805967F8  7C 7E 1B 78 */	mr r30, r3
/* 805967FC  7C BF 2B 78 */	mr r31, r5
/* 80596800  88 03 0A F0 */	lbz r0, 0xaf0(r3)
/* 80596804  28 00 00 00 */	cmplwi r0, 0
/* 80596808  40 82 00 30 */	bne lbl_80596838
/* 8059680C  1C 04 00 0C */	mulli r0, r4, 0xc
/* 80596810  3C 60 80 59 */	lis r3, l_rope_offsetS@ha
/* 80596814  38 63 7E A8 */	addi r3, r3, l_rope_offsetS@l
/* 80596818  7C 03 04 2E */	lfsx f0, r3, r0
/* 8059681C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80596820  7C 63 02 14 */	add r3, r3, r0
/* 80596824  C0 03 00 04 */	lfs f0, 4(r3)
/* 80596828  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8059682C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80596830  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80596834  48 00 00 2C */	b lbl_80596860
lbl_80596838:
/* 80596838  1C 04 00 0C */	mulli r0, r4, 0xc
/* 8059683C  3C 60 80 59 */	lis r3, l_rope_offsetL@ha
/* 80596840  38 63 7E 90 */	addi r3, r3, l_rope_offsetL@l
/* 80596844  7C 03 04 2E */	lfsx f0, r3, r0
/* 80596848  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8059684C  7C 63 02 14 */	add r3, r3, r0
/* 80596850  C0 03 00 04 */	lfs f0, 4(r3)
/* 80596854  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80596858  C0 03 00 08 */	lfs f0, 8(r3)
/* 8059685C  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80596860:
/* 80596860  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80596864  4B A7 65 00 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80596868  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8059686C  4B A7 66 D8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80596870  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80596874  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80596878  7F E4 FB 78 */	mr r4, r31
/* 8059687C  7F E5 FB 78 */	mr r5, r31
/* 80596880  4B DB 04 EC */	b PSMTXMultVec
/* 80596884  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80596888  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059688C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80596890  7C 08 03 A6 */	mtlr r0
/* 80596894  38 21 00 10 */	addi r1, r1, 0x10
/* 80596898  4E 80 00 20 */	blr 
