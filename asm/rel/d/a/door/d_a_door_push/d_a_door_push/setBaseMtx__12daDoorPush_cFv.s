lbl_80677F38:
/* 80677F38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80677F3C  7C 08 02 A6 */	mflr r0
/* 80677F40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80677F44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80677F48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80677F4C  7C 7F 1B 78 */	mr r31, r3
/* 80677F50  3C 60 80 68 */	lis r3, lit_3688@ha /* 0x80678ECC@ha */
/* 80677F54  3B C3 8E CC */	addi r30, r3, lit_3688@l /* 0x80678ECC@l */
/* 80677F58  38 7F 06 14 */	addi r3, r31, 0x614
/* 80677F5C  4B 99 4E 09 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80677F60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80677F64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80677F68  A8 9F 06 30 */	lha r4, 0x630(r31)
/* 80677F6C  4B 99 44 C9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80677F70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80677F74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80677F78  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80677F7C  38 84 00 24 */	addi r4, r4, 0x24
/* 80677F80  4B CC E5 31 */	bl PSMTXCopy
/* 80677F84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80677F88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80677F8C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80677F90  4B CC E5 21 */	bl PSMTXCopy
/* 80677F94  38 7F 06 20 */	addi r3, r31, 0x620
/* 80677F98  4B 99 4D CD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80677F9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80677FA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80677FA4  A8 9F 06 32 */	lha r4, 0x632(r31)
/* 80677FA8  4B 99 44 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 80677FAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80677FB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80677FB4  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80677FB8  38 84 00 24 */	addi r4, r4, 0x24
/* 80677FBC  4B CC E4 F5 */	bl PSMTXCopy
/* 80677FC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80677FC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80677FC8  38 9F 05 B4 */	addi r4, r31, 0x5b4
/* 80677FCC  4B CC E4 E5 */	bl PSMTXCopy
/* 80677FD0  88 1F 06 39 */	lbz r0, 0x639(r31)
/* 80677FD4  28 00 00 02 */	cmplwi r0, 2
/* 80677FD8  41 82 00 70 */	beq lbl_80678048
/* 80677FDC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80677FE0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80677FE4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80677FE8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80677FEC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80677FF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80677FF4  28 00 00 01 */	cmplwi r0, 1
/* 80677FF8  40 82 00 0C */	bne lbl_80678004
/* 80677FFC  FC 00 00 50 */	fneg f0, f0
/* 80678000  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80678004:
/* 80678004  88 1F 06 39 */	lbz r0, 0x639(r31)
/* 80678008  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8067800C  38 63 06 14 */	addi r3, r3, 0x614
/* 80678010  7C 7F 1A 14 */	add r3, r31, r3
/* 80678014  4B 99 4D 51 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80678018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8067801C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80678020  88 1F 06 39 */	lbz r0, 0x639(r31)
/* 80678024  54 00 08 3C */	slwi r0, r0, 1
/* 80678028  7C 9F 02 14 */	add r4, r31, r0
/* 8067802C  A8 84 06 30 */	lha r4, 0x630(r4)
/* 80678030  4B 99 44 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 80678034  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80678038  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8067803C  38 81 00 08 */	addi r4, r1, 8
/* 80678040  38 BF 06 54 */	addi r5, r31, 0x654
/* 80678044  4B CC ED 29 */	bl PSMTXMultVec
lbl_80678048:
/* 80678048  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8067804C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80678050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80678054  7C 08 03 A6 */	mtlr r0
/* 80678058  38 21 00 20 */	addi r1, r1, 0x20
/* 8067805C  4E 80 00 20 */	blr 
