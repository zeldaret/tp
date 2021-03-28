lbl_8059A624:
/* 8059A624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A628  7C 08 02 A6 */	mflr r0
/* 8059A62C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A630  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059A634  7C 7F 1B 78 */	mr r31, r3
/* 8059A638  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8059A63C  4B A7 27 28 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8059A640  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8059A644  4B A7 29 00 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8059A648  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059A64C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059A650  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 8059A654  38 84 00 24 */	addi r4, r4, 0x24
/* 8059A658  4B DA BE 58 */	b PSMTXCopy
/* 8059A65C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059A660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A664  7C 08 03 A6 */	mtlr r0
/* 8059A668  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A66C  4E 80 00 20 */	blr 
