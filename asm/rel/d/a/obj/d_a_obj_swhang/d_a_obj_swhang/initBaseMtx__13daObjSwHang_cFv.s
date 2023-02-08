lbl_80CFB9D8:
/* 80CFB9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFB9DC  7C 08 02 A6 */	mflr r0
/* 80CFB9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFB9E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFB9E8  7C 7F 1B 78 */	mr r31, r3
/* 80CFB9EC  80 63 05 B8 */	lwz r3, 0x5b8(r3)
/* 80CFB9F0  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CFB9F4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CFB9F8  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CFB9FC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CFBA00  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CFBA04  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CFBA08  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CFBA0C  4B 31 13 59 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CFBA10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CFBA14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CFBA18  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CFBA1C  4B 31 0A 19 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CFBA20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CFBA24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CFBA28  38 9F 07 38 */	addi r4, r31, 0x738
/* 80CFBA2C  4B 64 AA 85 */	bl PSMTXCopy
/* 80CFBA30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CFBA34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CFBA38  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80CFBA3C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CFBA40  4B 64 AA 71 */	bl PSMTXCopy
/* 80CFBA44  7F E3 FB 78 */	mr r3, r31
/* 80CFBA48  48 00 00 19 */	bl setBaseMtx__13daObjSwHang_cFv
/* 80CFBA4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFBA50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFBA54  7C 08 03 A6 */	mtlr r0
/* 80CFBA58  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFBA5C  4E 80 00 20 */	blr 
