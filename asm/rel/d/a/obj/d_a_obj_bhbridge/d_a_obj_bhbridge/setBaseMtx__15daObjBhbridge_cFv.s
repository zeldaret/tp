lbl_80BB55B8:
/* 80BB55B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB55BC  7C 08 02 A6 */	mflr r0
/* 80BB55C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB55C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB55C8  7C 7F 1B 78 */	mr r31, r3
/* 80BB55CC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BB55D0  4B 45 77 95 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BB55D4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BB55D8  4B 45 79 6D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BB55DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB55E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB55E4  80 9F 05 EC */	lwz r4, 0x5ec(r31)
/* 80BB55E8  38 84 00 24 */	addi r4, r4, 0x24
/* 80BB55EC  4B 79 0E C5 */	bl PSMTXCopy
/* 80BB55F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB55F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB55F8  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BB55FC  4B 79 0E B5 */	bl PSMTXCopy
/* 80BB5600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB5604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB5608  7C 08 03 A6 */	mtlr r0
/* 80BB560C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB5610  4E 80 00 20 */	blr 
