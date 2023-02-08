lbl_80CA9FD8:
/* 80CA9FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA9FDC  7C 08 02 A6 */	mflr r0
/* 80CA9FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA9FE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA9FE8  7C 7F 1B 78 */	mr r31, r3
/* 80CA9FEC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CA9FF0  4B 36 2D 75 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CA9FF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA9FF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA9FFC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CAA000  4B 36 24 35 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CAA004  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAA008  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAA00C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CAA010  38 84 00 24 */	addi r4, r4, 0x24
/* 80CAA014  4B 69 C4 9D */	bl PSMTXCopy
/* 80CAA018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAA01C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAA020  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CAA024  4B 69 C4 8D */	bl PSMTXCopy
/* 80CAA028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAA02C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAA030  7C 08 03 A6 */	mtlr r0
/* 80CAA034  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAA038  4E 80 00 20 */	blr 
