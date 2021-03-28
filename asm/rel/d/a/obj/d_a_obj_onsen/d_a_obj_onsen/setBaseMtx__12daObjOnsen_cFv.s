lbl_80CA7BB0:
/* 80CA7BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA7BB4  7C 08 02 A6 */	mflr r0
/* 80CA7BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7BBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA7BC0  7C 7F 1B 78 */	mr r31, r3
/* 80CA7BC4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CA7BC8  4B 36 51 9C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CA7BCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA7BD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA7BD4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CA7BD8  4B 36 48 5C */	b mDoMtx_YrotM__FPA4_fs
/* 80CA7BDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA7BE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA7BE4  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CA7BE8  38 84 00 24 */	addi r4, r4, 0x24
/* 80CA7BEC  4B 69 E8 C4 */	b PSMTXCopy
/* 80CA7BF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA7BF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA7BF8  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80CA7BFC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CA7C00  4B 69 E8 B0 */	b PSMTXCopy
/* 80CA7C04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA7C08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA7C0C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CA7C10  4B 69 E8 A0 */	b PSMTXCopy
/* 80CA7C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA7C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA7C1C  7C 08 03 A6 */	mtlr r0
/* 80CA7C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7C24  4E 80 00 20 */	blr 
