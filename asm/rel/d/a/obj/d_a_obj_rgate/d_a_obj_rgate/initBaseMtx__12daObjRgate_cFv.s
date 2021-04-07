lbl_80CB9DF8:
/* 80CB9DF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CB9DFC  7C 08 02 A6 */	mflr r0
/* 80CB9E00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CB9E04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CB9E08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CB9E0C  7C 7F 1B 78 */	mr r31, r3
/* 80CB9E10  3C 60 80 CC */	lis r3, l_cull_box@ha /* 0x80CBC368@ha */
/* 80CB9E14  3B C3 C3 68 */	addi r30, r3, l_cull_box@l /* 0x80CBC368@l */
/* 80CB9E18  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CB9E1C  4B 35 2F 49 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CB9E20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9E24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9E28  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CB9E2C  4B 35 26 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CB9E30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9E34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9E38  38 9F 0B 14 */	addi r4, r31, 0xb14
/* 80CB9E3C  4B 68 C6 75 */	bl PSMTXCopy
/* 80CB9E40  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CB9E44  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CB9E48  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CB9E4C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CB9E50  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CB9E54  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CB9E58  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CB9E5C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CB9E60  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CB9E64  28 00 00 FF */	cmplwi r0, 0xff
/* 80CB9E68  41 82 00 4C */	beq lbl_80CB9EB4
/* 80CB9E6C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CB9E70  28 03 00 00 */	cmplwi r3, 0
/* 80CB9E74  41 82 00 1C */	beq lbl_80CB9E90
/* 80CB9E78  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CB9E7C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CB9E80  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CB9E84  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CB9E88  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CB9E8C  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_80CB9E90:
/* 80CB9E90  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80CB9E94  28 03 00 00 */	cmplwi r3, 0
/* 80CB9E98  41 82 00 1C */	beq lbl_80CB9EB4
/* 80CB9E9C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CB9EA0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CB9EA4  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CB9EA8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CB9EAC  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CB9EB0  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_80CB9EB4:
/* 80CB9EB4  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80CB9EB8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CB9EBC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80CB9EC0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CB9EC4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80CB9EC8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CB9ECC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9ED0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9ED4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CB9ED8  4B 35 25 05 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CB9EDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9EE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9EE4  38 81 00 08 */	addi r4, r1, 8
/* 80CB9EE8  7C 85 23 78 */	mr r5, r4
/* 80CB9EEC  4B 68 CE 81 */	bl PSMTXMultVec
/* 80CB9EF0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CB9EF4  D0 1F 0B D0 */	stfs f0, 0xbd0(r31)
/* 80CB9EF8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CB9EFC  D0 1F 0B D4 */	stfs f0, 0xbd4(r31)
/* 80CB9F00  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CB9F04  D0 1F 0B D8 */	stfs f0, 0xbd8(r31)
/* 80CB9F08  38 7F 0B D0 */	addi r3, r31, 0xbd0
/* 80CB9F0C  38 81 00 08 */	addi r4, r1, 8
/* 80CB9F10  7C 65 1B 78 */	mr r5, r3
/* 80CB9F14  4B 68 D1 7D */	bl PSVECAdd
/* 80CB9F18  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80CB9F1C  38 00 00 00 */	li r0, 0
/* 80CB9F20  B0 1F 0B DC */	sth r0, 0xbdc(r31)
/* 80CB9F24  B0 7F 0B DE */	sth r3, 0xbde(r31)
/* 80CB9F28  B0 1F 0B E0 */	sth r0, 0xbe0(r31)
/* 80CB9F2C  7F E3 FB 78 */	mr r3, r31
/* 80CB9F30  48 00 00 1D */	bl setBaseMtx__12daObjRgate_cFv
/* 80CB9F34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CB9F38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CB9F3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CB9F40  7C 08 03 A6 */	mtlr r0
/* 80CB9F44  38 21 00 20 */	addi r1, r1, 0x20
/* 80CB9F48  4E 80 00 20 */	blr 
