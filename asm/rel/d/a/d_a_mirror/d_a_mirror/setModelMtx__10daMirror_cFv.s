lbl_80871F78:
/* 80871F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80871F7C  7C 08 02 A6 */	mflr r0
/* 80871F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80871F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80871F88  7C 7F 1B 78 */	mr r31, r3
/* 80871F8C  80 63 06 F8 */	lwz r3, 0x6f8(r3)
/* 80871F90  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80871F94  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80871F98  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80871F9C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80871FA0  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80871FA4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80871FA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80871FAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80871FB0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80871FB4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80871FB8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80871FBC  4B AD 49 2C */	b PSMTXTrans
/* 80871FC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80871FC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80871FC8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80871FCC  4B 79 A4 68 */	b mDoMtx_YrotM__FPA4_fs
/* 80871FD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80871FD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80871FD8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80871FDC  4B 79 A3 C0 */	b mDoMtx_XrotM__FPA4_fs
/* 80871FE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80871FE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80871FE8  38 80 20 00 */	li r4, 0x2000
/* 80871FEC  4B 79 A4 E0 */	b mDoMtx_ZrotM__FPA4_fs
/* 80871FF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80871FF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80871FF8  80 9F 06 F8 */	lwz r4, 0x6f8(r31)
/* 80871FFC  38 84 00 24 */	addi r4, r4, 0x24
/* 80872000  4B AD 44 B0 */	b PSMTXCopy
/* 80872004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80872008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8087200C  7C 08 03 A6 */	mtlr r0
/* 80872010  38 21 00 10 */	addi r1, r1, 0x10
/* 80872014  4E 80 00 20 */	blr 
