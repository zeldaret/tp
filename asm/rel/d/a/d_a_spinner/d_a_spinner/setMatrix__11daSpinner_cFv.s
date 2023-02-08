lbl_804D2278:
/* 804D2278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D227C  7C 08 02 A6 */	mflr r0
/* 804D2280  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D2284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D2288  7C 7F 1B 78 */	mr r31, r3
/* 804D228C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D2290  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D2294  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804D2298  3C 80 80 4D */	lis r4, lit_4429@ha /* 0x804D4DCC@ha */
/* 804D229C  C0 64 4D CC */	lfs f3, lit_4429@l(r4)  /* 0x804D4DCC@l */
/* 804D22A0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 804D22A4  C0 1F 0A 84 */	lfs f0, 0xa84(r31)
/* 804D22A8  EC 02 00 2A */	fadds f0, f2, f0
/* 804D22AC  EC 43 00 2A */	fadds f2, f3, f0
/* 804D22B0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 804D22B4  4B E7 46 35 */	bl PSMTXTrans
/* 804D22B8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 804D22BC  4B B3 AC 89 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804D22C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D22C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D22C8  A8 9F 0A 7E */	lha r4, 0xa7e(r31)
/* 804D22CC  4B B3 A1 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 804D22D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D22D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D22D8  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 804D22DC  38 84 00 24 */	addi r4, r4, 0x24
/* 804D22E0  4B E7 41 D1 */	bl PSMTXCopy
/* 804D22E4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 804D22E8  80 83 00 04 */	lwz r4, 4(r3)
/* 804D22EC  38 7F 05 6C */	addi r3, r31, 0x56c
/* 804D22F0  C0 3F 05 7C */	lfs f1, 0x57c(r31)
/* 804D22F4  4B B3 B6 D9 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 804D22F8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 804D22FC  81 83 00 00 */	lwz r12, 0(r3)
/* 804D2300  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804D2304  7D 89 03 A6 */	mtctr r12
/* 804D2308  4E 80 04 21 */	bctrl 
/* 804D230C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D2310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D2314  7C 08 03 A6 */	mtlr r0
/* 804D2318  38 21 00 10 */	addi r1, r1, 0x10
/* 804D231C  4E 80 00 20 */	blr 
