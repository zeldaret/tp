lbl_80D39454:
/* 80D39454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39458  7C 08 02 A6 */	mflr r0
/* 80D3945C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D39464  7C 7F 1B 78 */	mr r31, r3
/* 80D39468  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3946C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D39470  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D39474  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D39478  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D3947C  4B 60 D4 6D */	bl PSMTXTrans
/* 80D39480  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D39484  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D39488  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D3948C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D39490  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D39494  A8 1F 09 58 */	lha r0, 0x958(r31)
/* 80D39498  7C 06 02 14 */	add r0, r6, r0
/* 80D3949C  7C 06 07 34 */	extsh r6, r0
/* 80D394A0  4B 2D 2E 01 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D394A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D394A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D394AC  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D394B0  38 84 00 24 */	addi r4, r4, 0x24
/* 80D394B4  4B 60 CF FD */	bl PSMTXCopy
/* 80D394B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D394BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D394C0  7C 08 03 A6 */	mtlr r0
/* 80D394C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D394C8  4E 80 00 20 */	blr 
