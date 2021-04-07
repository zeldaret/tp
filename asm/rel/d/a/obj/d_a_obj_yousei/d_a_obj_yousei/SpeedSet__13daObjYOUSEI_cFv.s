lbl_804CE920:
/* 804CE920  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CE924  7C 08 02 A6 */	mflr r0
/* 804CE928  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CE92C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804CE930  7C 7F 1B 78 */	mr r31, r3
/* 804CE934  C0 23 04 FC */	lfs f1, 0x4fc(r3)
/* 804CE938  C0 03 05 30 */	lfs f0, 0x530(r3)
/* 804CE93C  EC 01 00 2A */	fadds f0, f1, f0
/* 804CE940  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 804CE944  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 804CE948  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 804CE94C  EC 01 00 2A */	fadds f0, f1, f0
/* 804CE950  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 804CE954  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 804CE958  3C 60 80 4D */	lis r3, lit_3708@ha /* 0x804D1638@ha */
/* 804CE95C  C0 03 16 38 */	lfs f0, lit_3708@l(r3)  /* 0x804D1638@l */
/* 804CE960  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804CE964  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804CE968  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804CE96C  D0 01 00 08 */	stfs f0, 8(r1)
/* 804CE970  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804CE974  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804CE978  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804CE97C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804CE980  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 804CE984  4B B3 DA 59 */	bl mDoMtx_YrotS__FPA4_fs
/* 804CE988  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804CE98C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804CE990  38 81 00 14 */	addi r4, r1, 0x14
/* 804CE994  38 A1 00 08 */	addi r5, r1, 8
/* 804CE998  4B E7 83 D5 */	bl PSMTXMultVec
/* 804CE99C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804CE9A0  C0 01 00 08 */	lfs f0, 8(r1)
/* 804CE9A4  EC 01 00 2A */	fadds f0, f1, f0
/* 804CE9A8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804CE9AC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 804CE9B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804CE9B4  EC 01 00 2A */	fadds f0, f1, f0
/* 804CE9B8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804CE9BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804CE9C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CE9C4  7C 08 03 A6 */	mtlr r0
/* 804CE9C8  38 21 00 30 */	addi r1, r1, 0x30
/* 804CE9CC  4E 80 00 20 */	blr 
