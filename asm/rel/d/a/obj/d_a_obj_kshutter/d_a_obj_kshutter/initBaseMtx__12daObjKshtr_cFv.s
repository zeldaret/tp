lbl_80C47AB8:
/* 80C47AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C47ABC  7C 08 02 A6 */	mflr r0
/* 80C47AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C47AC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C47AC8  7C 7F 1B 78 */	mr r31, r3
/* 80C47ACC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C47AD0  4B 3C 52 94 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C47AD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C47AD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C47ADC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C47AE0  4B 3C 49 54 */	b mDoMtx_YrotM__FPA4_fs
/* 80C47AE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C47AE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C47AEC  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 80C47AF0  4B 6F E9 C0 */	b PSMTXCopy
/* 80C47AF4  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80C47AF8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C47AFC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C47B00  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C47B04  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C47B08  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C47B0C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C47B10  7F E3 FB 78 */	mr r3, r31
/* 80C47B14  48 00 00 19 */	bl setBaseMtx__12daObjKshtr_cFv
/* 80C47B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C47B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C47B20  7C 08 03 A6 */	mtlr r0
/* 80C47B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C47B28  4E 80 00 20 */	blr 
