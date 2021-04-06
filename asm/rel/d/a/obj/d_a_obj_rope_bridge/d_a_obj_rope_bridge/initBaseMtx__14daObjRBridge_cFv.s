lbl_80595E38:
/* 80595E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595E3C  7C 08 02 A6 */	mflr r0
/* 80595E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80595E48  7C 7F 1B 78 */	mr r31, r3
/* 80595E4C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80595E50  4B A7 6F 15 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80595E54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80595E58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80595E5C  38 80 00 00 */	li r4, 0
/* 80595E60  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80595E64  38 C0 00 00 */	li r6, 0
/* 80595E68  4B A7 64 39 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80595E6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80595E70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80595E74  38 9F 0B 1C */	addi r4, r31, 0xb1c
/* 80595E78  4B DB 06 39 */	bl PSMTXCopy
/* 80595E7C  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80595E80  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80595E84  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80595E88  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80595E8C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80595E90  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80595E94  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80595E98  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80595E9C  28 03 00 00 */	cmplwi r3, 0
/* 80595EA0  41 82 00 1C */	beq lbl_80595EBC
/* 80595EA4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80595EA8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80595EAC  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80595EB0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80595EB4  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80595EB8  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_80595EBC:
/* 80595EBC  7F E3 FB 78 */	mr r3, r31
/* 80595EC0  48 00 00 19 */	bl setBaseMtx__14daObjRBridge_cFv
/* 80595EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80595EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595ECC  7C 08 03 A6 */	mtlr r0
/* 80595ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80595ED4  4E 80 00 20 */	blr 
