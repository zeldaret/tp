lbl_80677E08:
/* 80677E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80677E0C  7C 08 02 A6 */	mflr r0
/* 80677E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80677E14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80677E18  93 C1 00 08 */	stw r30, 8(r1)
/* 80677E1C  7C 7E 1B 78 */	mr r30, r3
/* 80677E20  3C 60 80 68 */	lis r3, lit_3688@ha /* 0x80678ECC@ha */
/* 80677E24  3B E3 8E CC */	addi r31, r3, lit_3688@l /* 0x80678ECC@l */
/* 80677E28  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80677E2C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80677E30  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80677E34  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80677E38  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80677E3C  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80677E40  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80677E44  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80677E48  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80677E4C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80677E50  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80677E54  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80677E58  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80677E5C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80677E60  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80677E64  D0 1E 06 14 */	stfs f0, 0x614(r30)
/* 80677E68  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80677E6C  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 80677E70  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 80677E74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80677E78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80677E7C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80677E80  4B 99 45 5D */	bl mDoMtx_YrotS__FPA4_fs
/* 80677E84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80677E88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80677E8C  38 9E 06 14 */	addi r4, r30, 0x614
/* 80677E90  7C 85 23 78 */	mr r5, r4
/* 80677E94  4B CC EE D9 */	bl PSMTXMultVec
/* 80677E98  38 7E 06 14 */	addi r3, r30, 0x614
/* 80677E9C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80677EA0  7C 65 1B 78 */	mr r5, r3
/* 80677EA4  4B CC F1 ED */	bl PSVECAdd
/* 80677EA8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80677EAC  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 80677EB0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80677EB4  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 80677EB8  D0 1E 06 28 */	stfs f0, 0x628(r30)
/* 80677EBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80677EC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80677EC4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80677EC8  4B 99 45 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 80677ECC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80677ED0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80677ED4  38 9E 06 20 */	addi r4, r30, 0x620
/* 80677ED8  7C 85 23 78 */	mr r5, r4
/* 80677EDC  4B CC EE 91 */	bl PSMTXMultVec
/* 80677EE0  38 7E 06 20 */	addi r3, r30, 0x620
/* 80677EE4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80677EE8  7C 65 1B 78 */	mr r5, r3
/* 80677EEC  4B CC F1 A5 */	bl PSVECAdd
/* 80677EF0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80677EF4  4B 99 4E 71 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80677EF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80677EFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80677F00  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80677F04  4B 99 45 31 */	bl mDoMtx_YrotM__FPA4_fs
/* 80677F08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80677F0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80677F10  38 9E 05 E4 */	addi r4, r30, 0x5e4
/* 80677F14  4B CC E5 9D */	bl PSMTXCopy
/* 80677F18  7F C3 F3 78 */	mr r3, r30
/* 80677F1C  48 00 00 1D */	bl setBaseMtx__12daDoorPush_cFv
/* 80677F20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80677F24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80677F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80677F2C  7C 08 03 A6 */	mtlr r0
/* 80677F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80677F34  4E 80 00 20 */	blr 
