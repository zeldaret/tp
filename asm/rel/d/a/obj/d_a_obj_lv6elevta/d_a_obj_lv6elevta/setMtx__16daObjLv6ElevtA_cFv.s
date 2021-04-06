lbl_80C82DC8:
/* 80C82DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82DCC  7C 08 02 A6 */	mflr r0
/* 80C82DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82DD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C82DD8  7C 7F 1B 78 */	mr r31, r3
/* 80C82DDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C82DE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C82DE4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C82DE8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C82DEC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C82DF0  4B 6C 3A F9 */	bl PSMTXTrans
/* 80C82DF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C82DF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C82DFC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C82E00  4B 38 96 35 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C82E04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C82E08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C82E0C  38 9F 05 E8 */	addi r4, r31, 0x5e8
/* 80C82E10  4B 6C 36 A1 */	bl PSMTXCopy
/* 80C82E14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C82E18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C82E1C  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 80C82E20  4B 6C 36 91 */	bl PSMTXCopy
/* 80C82E24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C82E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82E2C  7C 08 03 A6 */	mtlr r0
/* 80C82E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82E34  4E 80 00 20 */	blr 
