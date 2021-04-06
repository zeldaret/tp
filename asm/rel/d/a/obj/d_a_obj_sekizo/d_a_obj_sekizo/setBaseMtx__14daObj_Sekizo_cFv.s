lbl_80CCDFE0:
/* 80CCDFE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCDFE4  7C 08 02 A6 */	mflr r0
/* 80CCDFE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCDFEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCDFF0  7C 7F 1B 78 */	mr r31, r3
/* 80CCDFF4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CCDFF8  4B 33 ED 6D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CCDFFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCE000  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCE004  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CCE008  4B 33 E4 2D */	bl mDoMtx_YrotM__FPA4_fs
/* 80CCE00C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCE010  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCE014  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80CCE018  38 84 00 24 */	addi r4, r4, 0x24
/* 80CCE01C  4B 67 84 95 */	bl PSMTXCopy
/* 80CCE020  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCE024  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCE028  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CCE02C  4B 67 84 85 */	bl PSMTXCopy
/* 80CCE030  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCE034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCE038  7C 08 03 A6 */	mtlr r0
/* 80CCE03C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCE040  4E 80 00 20 */	blr 
