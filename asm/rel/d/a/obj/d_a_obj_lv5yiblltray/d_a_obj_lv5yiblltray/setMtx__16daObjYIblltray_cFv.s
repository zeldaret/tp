lbl_80C6EC88:
/* 80C6EC88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6EC8C  7C 08 02 A6 */	mflr r0
/* 80C6EC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6EC94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6EC98  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6EC9C  7C 7F 1B 78 */	mr r31, r3
/* 80C6ECA0  3C 60 80 C7 */	lis r3, l_cull_box@ha
/* 80C6ECA4  3B C3 09 A0 */	addi r30, r3, l_cull_box@l
/* 80C6ECA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6ECAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6ECB0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C6ECB4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C6ECB8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C6ECBC  4B 6D 7C 2C */	b PSMTXTrans
/* 80C6ECC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6ECC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6ECC8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C6ECCC  4B 39 D7 68 */	b mDoMtx_YrotM__FPA4_fs
/* 80C6ECD0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C6ECD4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C6ECD8  40 82 00 18 */	bne lbl_80C6ECF0
/* 80C6ECDC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80C6ECE0  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80C6ECE4  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 80C6ECE8  4B 39 E0 B4 */	b transM__14mDoMtx_stack_cFfff
/* 80C6ECEC  48 00 00 14 */	b lbl_80C6ED00
lbl_80C6ECF0:
/* 80C6ECF0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80C6ECF4  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80C6ECF8  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 80C6ECFC  4B 39 E0 A0 */	b transM__14mDoMtx_stack_cFfff
lbl_80C6ED00:
/* 80C6ED00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6ED04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6ED08  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80C6ED0C  4B 39 D6 90 */	b mDoMtx_XrotM__FPA4_fs
/* 80C6ED10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6ED14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6ED18  38 9F 05 F0 */	addi r4, r31, 0x5f0
/* 80C6ED1C  4B 6D 77 94 */	b PSMTXCopy
/* 80C6ED20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6ED24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6ED28  38 9F 05 C0 */	addi r4, r31, 0x5c0
/* 80C6ED2C  4B 6D 77 84 */	b PSMTXCopy
/* 80C6ED30  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80C6ED34  3C 80 80 C7 */	lis r4, l_in_ball@ha
/* 80C6ED38  38 84 0A 3C */	addi r4, r4, l_in_ball@l
/* 80C6ED3C  38 BF 05 A8 */	addi r5, r31, 0x5a8
/* 80C6ED40  4B 6D 80 2C */	b PSMTXMultVec
/* 80C6ED44  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80C6ED48  3C 80 80 C7 */	lis r4, l_base@ha
/* 80C6ED4C  38 84 0A 48 */	addi r4, r4, l_base@l
/* 80C6ED50  38 BF 06 28 */	addi r5, r31, 0x628
/* 80C6ED54  4B 6D 80 18 */	b PSMTXMultVec
/* 80C6ED58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6ED5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6ED60  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C6ED64  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C6ED68  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C6ED6C  4B 6D 7B 7C */	b PSMTXTrans
/* 80C6ED70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6ED74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6ED78  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C6ED7C  4B 39 D6 B8 */	b mDoMtx_YrotM__FPA4_fs
/* 80C6ED80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6ED84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6ED88  38 9F 0A 54 */	addi r4, r31, 0xa54
/* 80C6ED8C  4B 6D 77 24 */	b PSMTXCopy
/* 80C6ED90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6ED94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6ED98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6ED9C  7C 08 03 A6 */	mtlr r0
/* 80C6EDA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6EDA4  4E 80 00 20 */	blr 
