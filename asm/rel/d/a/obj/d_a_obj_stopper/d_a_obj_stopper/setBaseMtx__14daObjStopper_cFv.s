lbl_80CED024:
/* 80CED024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CED028  7C 08 02 A6 */	mflr r0
/* 80CED02C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CED030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CED034  7C 7F 1B 78 */	mr r31, r3
/* 80CED038  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CED03C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CED040  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CED044  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CED048  C0 1F 09 50 */	lfs f0, 0x950(r31)
/* 80CED04C  EC 42 00 2A */	fadds f2, f2, f0
/* 80CED050  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CED054  4B 65 98 95 */	bl PSMTXTrans
/* 80CED058  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CED05C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CED060  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CED064  4B 31 F3 D1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CED068  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CED06C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CED070  A8 9F 09 F0 */	lha r4, 0x9f0(r31)
/* 80CED074  A8 BF 09 F2 */	lha r5, 0x9f2(r31)
/* 80CED078  A8 DF 09 F4 */	lha r6, 0x9f4(r31)
/* 80CED07C  4B 31 F2 25 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80CED080  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CED084  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CED088  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CED08C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CED090  4B 65 94 21 */	bl PSMTXCopy
/* 80CED094  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CED098  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CED09C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CED0A0  4B 65 94 11 */	bl PSMTXCopy
/* 80CED0A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CED0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CED0AC  7C 08 03 A6 */	mtlr r0
/* 80CED0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CED0B4  4E 80 00 20 */	blr 
