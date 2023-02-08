lbl_808490B8:
/* 808490B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808490BC  7C 08 02 A6 */	mflr r0
/* 808490C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808490C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808490C8  7C 7F 1B 78 */	mr r31, r3
/* 808490CC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 808490D0  4B 7C 3C 95 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 808490D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808490D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808490DC  38 9F 05 6C */	addi r4, r31, 0x56c
/* 808490E0  4B AF D3 D1 */	bl PSMTXCopy
/* 808490E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808490E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808490EC  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 808490F0  38 84 00 24 */	addi r4, r4, 0x24
/* 808490F4  4B AF D3 BD */	bl PSMTXCopy
/* 808490F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808490FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80849100  7C 08 03 A6 */	mtlr r0
/* 80849104  38 21 00 10 */	addi r1, r1, 0x10
/* 80849108  4E 80 00 20 */	blr 
