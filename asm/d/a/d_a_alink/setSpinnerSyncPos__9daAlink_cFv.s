lbl_8010DBC8:
/* 8010DBC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010DBCC  7C 08 02 A6 */	mflr r0
/* 8010DBD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010DBD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010DBD8  93 C1 00 08 */	stw r30, 8(r1)
/* 8010DBDC  7C 7E 1B 78 */	mr r30, r3
/* 8010DBE0  83 E3 28 18 */	lwz r31, 0x2818(r3)
/* 8010DBE4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8010DBE8  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8010DBEC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8010DBF0  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8010DBF4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8010DBF8  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8010DBFC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8010DC00  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8010DC04  4B EF F3 09 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 8010DC08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8010DC0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8010DC10  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8010DC14  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8010DC18  7C 04 00 50 */	subf r0, r4, r0
/* 8010DC1C  7C 04 07 34 */	extsh r4, r0
/* 8010DC20  4B EF E8 15 */	bl mDoMtx_YrotM__FPA4_fs
/* 8010DC24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8010DC28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8010DC2C  38 9E 04 E4 */	addi r4, r30, 0x4e4
/* 8010DC30  4B EF EF D1 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 8010DC34  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8010DC38  D0 1E 37 A4 */	stfs f0, 0x37a4(r30)
/* 8010DC3C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8010DC40  D0 1E 37 A8 */	stfs f0, 0x37a8(r30)
/* 8010DC44  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8010DC48  D0 1E 37 AC */	stfs f0, 0x37ac(r30)
/* 8010DC4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010DC50  83 C1 00 08 */	lwz r30, 8(r1)
/* 8010DC54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010DC58  7C 08 03 A6 */	mtlr r0
/* 8010DC5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8010DC60  4E 80 00 20 */	blr 
