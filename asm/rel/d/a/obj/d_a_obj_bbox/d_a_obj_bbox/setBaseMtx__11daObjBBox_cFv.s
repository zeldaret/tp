lbl_80BACD74:
/* 80BACD74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BACD78  7C 08 02 A6 */	mflr r0
/* 80BACD7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BACD80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BACD84  7C 7F 1B 78 */	mr r31, r3
/* 80BACD88  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BACD8C  4B 45 FF D9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BACD90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BACD94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BACD98  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BACD9C  4B 45 F6 99 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BACDA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BACDA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BACDA8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BACDAC  38 84 00 24 */	addi r4, r4, 0x24
/* 80BACDB0  4B 79 97 01 */	bl PSMTXCopy
/* 80BACDB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BACDB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BACDBC  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BACDC0  4B 79 96 F1 */	bl PSMTXCopy
/* 80BACDC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BACDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BACDCC  7C 08 03 A6 */	mtlr r0
/* 80BACDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BACDD4  4E 80 00 20 */	blr 
