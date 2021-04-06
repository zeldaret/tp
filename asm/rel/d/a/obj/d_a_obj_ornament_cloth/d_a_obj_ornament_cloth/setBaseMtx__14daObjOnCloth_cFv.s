lbl_80595178:
/* 80595178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059517C  7C 08 02 A6 */	mflr r0
/* 80595180  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80595188  7C 7F 1B 78 */	mr r31, r3
/* 8059518C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80595190  4B A7 7B D5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80595194  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80595198  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059519C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805951A0  4B A7 72 95 */	bl mDoMtx_YrotM__FPA4_fs
/* 805951A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805951A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805951AC  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 805951B0  38 84 00 24 */	addi r4, r4, 0x24
/* 805951B4  4B DB 12 FD */	bl PSMTXCopy
/* 805951B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805951BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805951C0  38 9F 05 78 */	addi r4, r31, 0x578
/* 805951C4  4B DB 12 ED */	bl PSMTXCopy
/* 805951C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805951CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805951D0  7C 08 03 A6 */	mtlr r0
/* 805951D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805951D8  4E 80 00 20 */	blr 
