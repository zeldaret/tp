lbl_80CD8C80:
/* 80CD8C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD8C84  7C 08 02 A6 */	mflr r0
/* 80CD8C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD8C8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD8C90  7C 7F 1B 78 */	mr r31, r3
/* 80CD8C94  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CD8C98  4B 33 40 CC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CD8C9C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80CD8CA0  4B 33 42 A4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CD8CA4  88 1F 05 A0 */	lbz r0, 0x5a0(r31)
/* 80CD8CA8  28 00 00 00 */	cmplwi r0, 0
/* 80CD8CAC  40 82 00 1C */	bne lbl_80CD8CC8
/* 80CD8CB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CD8CB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CD8CB8  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80CD8CBC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CD8CC0  4B 66 D7 F0 */	b PSMTXCopy
/* 80CD8CC4  48 00 00 18 */	b lbl_80CD8CDC
lbl_80CD8CC8:
/* 80CD8CC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CD8CCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CD8CD0  80 9F 05 D0 */	lwz r4, 0x5d0(r31)
/* 80CD8CD4  38 84 00 24 */	addi r4, r4, 0x24
/* 80CD8CD8  4B 66 D7 D8 */	b PSMTXCopy
lbl_80CD8CDC:
/* 80CD8CDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CD8CE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CD8CE4  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CD8CE8  4B 66 D7 C8 */	b PSMTXCopy
/* 80CD8CEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD8CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD8CF4  7C 08 03 A6 */	mtlr r0
/* 80CD8CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD8CFC  4E 80 00 20 */	blr 
