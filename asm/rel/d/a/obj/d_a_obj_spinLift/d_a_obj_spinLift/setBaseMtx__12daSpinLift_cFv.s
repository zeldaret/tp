lbl_80CE3E2C:
/* 80CE3E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE3E30  7C 08 02 A6 */	mflr r0
/* 80CE3E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE3E38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE3E3C  7C 7F 1B 78 */	mr r31, r3
/* 80CE3E40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE3E44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE3E48  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CE3E4C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CE3E50  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CE3E54  4B 66 2A 95 */	bl PSMTXTrans
/* 80CE3E58  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CE3E5C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CE3E60  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CE3E64  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CE3E68  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CE3E6C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CE3E70  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CE3E74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE3E78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE3E7C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CE3E80  38 84 00 24 */	addi r4, r4, 0x24
/* 80CE3E84  4B 66 26 2D */	bl PSMTXCopy
/* 80CE3E88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE3E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE3E90  7C 08 03 A6 */	mtlr r0
/* 80CE3E94  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE3E98  4E 80 00 20 */	blr 
