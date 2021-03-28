lbl_8059D120:
/* 8059D120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D124  7C 08 02 A6 */	mflr r0
/* 8059D128  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D12C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059D130  7C 7F 1B 78 */	mr r31, r3
/* 8059D134  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8059D138  4B A6 FC 2C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8059D13C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059D140  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059D144  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8059D148  4B A6 F2 EC */	b mDoMtx_YrotM__FPA4_fs
/* 8059D14C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059D150  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059D154  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 8059D158  38 84 00 24 */	addi r4, r4, 0x24
/* 8059D15C  4B DA 93 54 */	b PSMTXCopy
/* 8059D160  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059D164  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059D168  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 8059D16C  38 84 00 24 */	addi r4, r4, 0x24
/* 8059D170  4B DA 93 40 */	b PSMTXCopy
/* 8059D174  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059D178  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059D17C  38 9F 05 74 */	addi r4, r31, 0x574
/* 8059D180  4B DA 93 30 */	b PSMTXCopy
/* 8059D184  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059D188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D18C  7C 08 03 A6 */	mtlr r0
/* 8059D190  38 21 00 10 */	addi r1, r1, 0x10
/* 8059D194  4E 80 00 20 */	blr 
