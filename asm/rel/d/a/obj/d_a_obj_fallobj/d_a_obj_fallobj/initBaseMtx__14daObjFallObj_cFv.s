lbl_80BE39B8:
/* 80BE39B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE39BC  7C 08 02 A6 */	mflr r0
/* 80BE39C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE39C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE39C8  7C 7F 1B 78 */	mr r31, r3
/* 80BE39CC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BE39D0  4B 42 93 95 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BE39D4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BE39D8  4B 42 95 6D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BE39DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE39E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE39E4  38 9F 05 A8 */	addi r4, r31, 0x5a8
/* 80BE39E8  4B 76 2A C9 */	bl PSMTXCopy
/* 80BE39EC  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BE39F0  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BE39F4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BE39F8  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80BE39FC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BE3A00  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80BE3A04  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BE3A08  7F E3 FB 78 */	mr r3, r31
/* 80BE3A0C  48 00 00 19 */	bl setBaseMtx__14daObjFallObj_cFv
/* 80BE3A10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE3A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE3A18  7C 08 03 A6 */	mtlr r0
/* 80BE3A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3A20  4E 80 00 20 */	blr 
