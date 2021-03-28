lbl_80C287B4:
/* 80C287B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C287B8  7C 08 02 A6 */	mflr r0
/* 80C287BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C287C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C287C4  7C 7F 1B 78 */	mr r31, r3
/* 80C287C8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C287CC  4B 3E 45 98 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C287D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C287D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C287D8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C287DC  4B 3E 3C 58 */	b mDoMtx_YrotM__FPA4_fs
/* 80C287E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C287E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C287E8  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80C287EC  4B 3E 3B B0 */	b mDoMtx_XrotM__FPA4_fs
/* 80C287F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C287F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C287F8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C287FC  4B 3E 3C D0 */	b mDoMtx_ZrotM__FPA4_fs
/* 80C28800  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C28804  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C28808  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80C2880C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C28810  4B 71 DC A0 */	b PSMTXCopy
/* 80C28814  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C28818  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C2881C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C28820  4B 71 DC 90 */	b PSMTXCopy
/* 80C28824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C28828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2882C  7C 08 03 A6 */	mtlr r0
/* 80C28830  38 21 00 10 */	addi r1, r1, 0x10
/* 80C28834  4E 80 00 20 */	blr 
