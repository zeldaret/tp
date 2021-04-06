lbl_80BED368:
/* 80BED368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BED36C  7C 08 02 A6 */	mflr r0
/* 80BED370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BED374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BED378  7C 7F 1B 78 */	mr r31, r3
/* 80BED37C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BED380  4B 41 F9 E5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BED384  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BED388  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BED38C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80BED390  38 84 00 24 */	addi r4, r4, 0x24
/* 80BED394  4B 75 91 1D */	bl PSMTXCopy
/* 80BED398  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BED39C  38 03 00 24 */	addi r0, r3, 0x24
/* 80BED3A0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BED3A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BED3A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BED3AC  7C 08 03 A6 */	mtlr r0
/* 80BED3B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BED3B4  4E 80 00 20 */	blr 
