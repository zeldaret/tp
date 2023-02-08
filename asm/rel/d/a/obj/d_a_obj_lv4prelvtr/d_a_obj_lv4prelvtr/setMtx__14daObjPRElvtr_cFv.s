lbl_80C68688:
/* 80C68688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6868C  7C 08 02 A6 */	mflr r0
/* 80C68690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C68698  7C 7F 1B 78 */	mr r31, r3
/* 80C6869C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C686A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C686A4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C686A8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C686AC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C686B0  4B 6D E2 39 */	bl PSMTXTrans
/* 80C686B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C686B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C686BC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C686C0  4B 3A 3D 75 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C686C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C686C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C686CC  38 9F 05 D8 */	addi r4, r31, 0x5d8
/* 80C686D0  4B 6D DD E1 */	bl PSMTXCopy
/* 80C686D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C686D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C686DC  38 9F 05 A8 */	addi r4, r31, 0x5a8
/* 80C686E0  4B 6D DD D1 */	bl PSMTXCopy
/* 80C686E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C686E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C686EC  7C 08 03 A6 */	mtlr r0
/* 80C686F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C686F4  4E 80 00 20 */	blr 
