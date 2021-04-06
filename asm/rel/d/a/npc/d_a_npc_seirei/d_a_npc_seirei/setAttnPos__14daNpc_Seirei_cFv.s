lbl_80AD6330:
/* 80AD6330  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD6334  7C 08 02 A6 */	mflr r0
/* 80AD6338  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD633C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD6340  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AD6344  7C 7E 1B 78 */	mr r30, r3
/* 80AD6348  3C 80 80 AD */	lis r4, m__20daNpc_Seirei_Param_c@ha /* 0x80AD7CA8@ha */
/* 80AD634C  3B E4 7C A8 */	addi r31, r4, m__20daNpc_Seirei_Param_c@l /* 0x80AD7CA8@l */
/* 80AD6350  88 03 0E 45 */	lbz r0, 0xe45(r3)
/* 80AD6354  28 00 00 00 */	cmplwi r0, 0
/* 80AD6358  41 82 00 A4 */	beq lbl_80AD63FC
/* 80AD635C  4B 67 2E 35 */	bl setMtx__8daNpcT_cFv
/* 80AD6360  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80AD6364  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AD6368  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80AD636C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AD6370  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80AD6374  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AD6378  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AD637C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD6380  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AD6384  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AD6388  38 63 02 40 */	addi r3, r3, 0x240
/* 80AD638C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AD6390  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AD6394  4B 87 01 1D */	bl PSMTXCopy
/* 80AD6398  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AD639C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AD63A0  38 81 00 08 */	addi r4, r1, 8
/* 80AD63A4  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AD63A8  4B 87 09 C5 */	bl PSMTXMultVec
/* 80AD63AC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80AD63B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AD63B4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AD63B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AD63BC  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80AD63C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AD63C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AD63C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AD63CC  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80AD63D0  4B 53 60 0D */	bl mDoMtx_YrotS__FPA4_fs
/* 80AD63D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AD63D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AD63DC  38 81 00 08 */	addi r4, r1, 8
/* 80AD63E0  38 BE 05 50 */	addi r5, r30, 0x550
/* 80AD63E4  4B 87 09 89 */	bl PSMTXMultVec
/* 80AD63E8  38 7E 05 50 */	addi r3, r30, 0x550
/* 80AD63EC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AD63F0  7C 65 1B 78 */	mr r5, r3
/* 80AD63F4  4B 87 0C 9D */	bl PSVECAdd
/* 80AD63F8  48 00 00 4C */	b lbl_80AD6444
lbl_80AD63FC:
/* 80AD63FC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AD6400  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80AD6404  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AD6408  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AD640C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AD6410  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80AD6414  C0 5E 05 54 */	lfs f2, 0x554(r30)
/* 80AD6418  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80AD641C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80AD6420  EC 01 00 28 */	fsubs f0, f1, f0
/* 80AD6424  EC 02 00 2A */	fadds f0, f2, f0
/* 80AD6428  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AD642C  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80AD6430  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80AD6434  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80AD6438  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80AD643C  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80AD6440  D0 1E 05 40 */	stfs f0, 0x540(r30)
lbl_80AD6444:
/* 80AD6444  7F C3 F3 78 */	mr r3, r30
/* 80AD6448  48 00 03 C1 */	bl setPrtcls__14daNpc_Seirei_cFv
/* 80AD644C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD6450  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AD6454  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD6458  7C 08 03 A6 */	mtlr r0
/* 80AD645C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD6460  4E 80 00 20 */	blr 
