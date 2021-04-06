lbl_80C16DEC:
/* 80C16DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C16DF0  7C 08 02 A6 */	mflr r0
/* 80C16DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16DFC  7C 7F 1B 78 */	mr r31, r3
/* 80C16E00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C16E04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C16E08  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C16E0C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C16E10  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C16E14  4B 72 FA D5 */	bl PSMTXTrans
/* 80C16E18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C16E1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C16E20  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C16E24  4B 3F 56 11 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C16E28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C16E2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C16E30  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C16E34  38 84 00 24 */	addi r4, r4, 0x24
/* 80C16E38  4B 72 F6 79 */	bl PSMTXCopy
/* 80C16E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C16E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16E44  7C 08 03 A6 */	mtlr r0
/* 80C16E48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16E4C  4E 80 00 20 */	blr 
