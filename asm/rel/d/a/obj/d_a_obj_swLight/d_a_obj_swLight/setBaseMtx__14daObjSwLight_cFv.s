lbl_80CF6FD4:
/* 80CF6FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6FD8  7C 08 02 A6 */	mflr r0
/* 80CF6FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF6FE4  7C 7F 1B 78 */	mr r31, r3
/* 80CF6FE8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CF6FEC  4B 31 5D 78 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CF6FF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF6FF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF6FF8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CF6FFC  4B 31 54 38 */	b mDoMtx_YrotM__FPA4_fs
/* 80CF7000  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF7004  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF7008  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80CF700C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CF7010  4B 64 F4 A0 */	b PSMTXCopy
/* 80CF7014  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF7018  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF701C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CF7020  4B 64 F4 90 */	b PSMTXCopy
/* 80CF7024  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF7028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF702C  7C 08 03 A6 */	mtlr r0
/* 80CF7030  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF7034  4E 80 00 20 */	blr 
