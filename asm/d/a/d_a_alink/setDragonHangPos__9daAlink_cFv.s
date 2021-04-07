lbl_800FC5A4:
/* 800FC5A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FC5A8  7C 08 02 A6 */	mflr r0
/* 800FC5AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FC5B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FC5B4  7C 7F 1B 78 */	mr r31, r3
/* 800FC5B8  80 63 28 10 */	lwz r3, 0x2810(r3)
/* 800FC5BC  28 03 00 00 */	cmplwi r3, 0
/* 800FC5C0  40 82 00 0C */	bne lbl_800FC5CC
/* 800FC5C4  38 60 00 00 */	li r3, 0
/* 800FC5C8  48 00 00 D8 */	b lbl_800FC6A0
lbl_800FC5CC:
/* 800FC5CC  A8 03 00 08 */	lha r0, 8(r3)
/* 800FC5D0  2C 00 00 F7 */	cmpwi r0, 0xf7
/* 800FC5D4  40 82 00 28 */	bne lbl_800FC5FC
/* 800FC5D8  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 800FC5DC  80 63 00 04 */	lwz r3, 4(r3)
/* 800FC5E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800FC5E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800FC5E8  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 800FC5EC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800FC5F0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800FC5F4  48 24 9E BD */	bl PSMTXCopy
/* 800FC5F8  48 00 00 24 */	b lbl_800FC61C
lbl_800FC5FC:
/* 800FC5FC  80 63 06 EC */	lwz r3, 0x6ec(r3)
/* 800FC600  80 63 00 04 */	lwz r3, 4(r3)
/* 800FC604  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800FC608  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800FC60C  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 800FC610  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800FC614  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800FC618  48 24 9E 99 */	bl PSMTXCopy
lbl_800FC61C:
/* 800FC61C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800FC620  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800FC624  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800FC628  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800FC62C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800FC630  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800FC634  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800FC638  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800FC63C  38 9F 04 E4 */	addi r4, r31, 0x4e4
/* 800FC640  4B F1 05 C1 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 800FC644  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800FC648  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800FC64C  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 800FC650  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 800FC654  38 A1 00 08 */	addi r5, r1, 8
/* 800FC658  48 24 A7 F5 */	bl PSMTXMultVecSR
/* 800FC65C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 800FC660  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FC664  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FC668  40 80 00 34 */	bge lbl_800FC69C
/* 800FC66C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800FC670  3C 63 00 01 */	addis r3, r3, 1
/* 800FC674  38 03 80 00 */	addi r0, r3, -32768
/* 800FC678  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800FC67C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 800FC680  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 800FC684  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 800FC688  7C 04 00 50 */	subf r0, r4, r0
/* 800FC68C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 800FC690  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 800FC694  1C 00 FF FF */	mulli r0, r0, -1
/* 800FC698  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
lbl_800FC69C:
/* 800FC69C  38 60 00 01 */	li r3, 1
lbl_800FC6A0:
/* 800FC6A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FC6A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FC6A8  7C 08 03 A6 */	mtlr r0
/* 800FC6AC  38 21 00 20 */	addi r1, r1, 0x20
/* 800FC6B0  4E 80 00 20 */	blr 
