lbl_80BC89B0:
/* 80BC89B0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80BC89B4  7C 08 02 A6 */	mflr r0
/* 80BC89B8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BC89BC  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80BC89C0  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80BC89C4  7C 7F 1B 78 */	mr r31, r3
/* 80BC89C8  3C 60 80 BD */	lis r3, lit_3731@ha /* 0x80BC8CDC@ha */
/* 80BC89CC  3B C3 8C DC */	addi r30, r3, lit_3731@l /* 0x80BC8CDC@l */
/* 80BC89D0  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80BC89D4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80BC89D8  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80BC89DC  4B 6A 7D 65 */	bl cLib_chaseF__FPfff
/* 80BC89E0  88 1F 06 08 */	lbz r0, 0x608(r31)
/* 80BC89E4  1C 00 FF FF */	mulli r0, r0, -1
/* 80BC89E8  98 1F 06 08 */	stb r0, 0x608(r31)
/* 80BC89EC  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80BC89F0  88 1F 06 08 */	lbz r0, 0x608(r31)
/* 80BC89F4  7C 00 07 74 */	extsb r0, r0
/* 80BC89F8  C8 5E 00 48 */	lfd f2, 0x48(r30)
/* 80BC89FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BC8A00  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BC8A04  3C 00 43 30 */	lis r0, 0x4330
/* 80BC8A08  90 01 00 60 */	stw r0, 0x60(r1)
/* 80BC8A0C  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80BC8A10  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BC8A14  EC 41 00 32 */	fmuls f2, f1, f0
/* 80BC8A18  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 80BC8A1C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BC8A20  FC 00 00 1E */	fctiwz f0, f0
/* 80BC8A24  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80BC8A28  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80BC8A2C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80BC8A30  4B 69 EF 5D */	bl cM_rndFX__Ff
/* 80BC8A34  FC 00 08 1E */	fctiwz f0, f1
/* 80BC8A38  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80BC8A3C  80 61 00 74 */	lwz r3, 0x74(r1)
/* 80BC8A40  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80BC8A44  7C 00 1A 14 */	add r0, r0, r3
/* 80BC8A48  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80BC8A4C  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 80BC8A50  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BC8A54  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 80BC8A58  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BC8A5C  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80BC8A60  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BC8A64  38 61 00 50 */	addi r3, r1, 0x50
/* 80BC8A68  4B 44 42 FD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BC8A6C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BC8A70  4B 44 44 D5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BC8A74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC8A78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC8A7C  3C 80 80 BD */	lis r4, TOP_POS_Y_OFFSET@ha /* 0x80BC8DE0@ha */
/* 80BC8A80  38 84 8D E0 */	addi r4, r4, TOP_POS_Y_OFFSET@l /* 0x80BC8DE0@l */
/* 80BC8A84  38 A1 00 44 */	addi r5, r1, 0x44
/* 80BC8A88  4B 77 E2 E5 */	bl PSMTXMultVec
/* 80BC8A8C  38 61 00 20 */	addi r3, r1, 0x20
/* 80BC8A90  38 81 00 50 */	addi r4, r1, 0x50
/* 80BC8A94  3C A0 80 BD */	lis r5, TOP_POS_Y_OFFSET@ha /* 0x80BC8DE0@ha */
/* 80BC8A98  38 A5 8D E0 */	addi r5, r5, TOP_POS_Y_OFFSET@l /* 0x80BC8DE0@l */
/* 80BC8A9C  4B 69 E0 49 */	bl __pl__4cXyzCFRC3Vec
/* 80BC8AA0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BC8AA4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BC8AA8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BC8AAC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BC8AB0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BC8AB4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BC8AB8  38 61 00 14 */	addi r3, r1, 0x14
/* 80BC8ABC  38 81 00 38 */	addi r4, r1, 0x38
/* 80BC8AC0  38 A1 00 44 */	addi r5, r1, 0x44
/* 80BC8AC4  4B 69 E0 71 */	bl __mi__4cXyzCFRC3Vec
/* 80BC8AC8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BC8ACC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BC8AD0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BC8AD4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BC8AD8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BC8ADC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BC8AE0  38 61 00 08 */	addi r3, r1, 8
/* 80BC8AE4  38 81 00 50 */	addi r4, r1, 0x50
/* 80BC8AE8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80BC8AEC  4B 69 DF F9 */	bl __pl__4cXyzCFRC3Vec
/* 80BC8AF0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BC8AF4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80BC8AF8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BC8AFC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80BC8B00  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BC8B04  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80BC8B08  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80BC8B0C  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80BC8B10  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BC8B14  7C 08 03 A6 */	mtlr r0
/* 80BC8B18  38 21 00 80 */	addi r1, r1, 0x80
/* 80BC8B1C  4E 80 00 20 */	blr 
