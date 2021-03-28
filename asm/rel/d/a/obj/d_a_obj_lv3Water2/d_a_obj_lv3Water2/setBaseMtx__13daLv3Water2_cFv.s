lbl_80C5A478:
/* 80C5A478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5A47C  7C 08 02 A6 */	mflr r0
/* 80C5A480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5A484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5A488  7C 7F 1B 78 */	mr r31, r3
/* 80C5A48C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5A490  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5A494  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C5A498  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C5A49C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C5A4A0  4B 6E C4 48 */	b PSMTXTrans
/* 80C5A4A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5A4A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5A4AC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C5A4B0  4B 3B 1F 84 */	b mDoMtx_YrotM__FPA4_fs
/* 80C5A4B4  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80C5A4B8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C5A4BC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C5A4C0  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C5A4C4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C5A4C8  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C5A4CC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C5A4D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5A4D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5A4D8  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80C5A4DC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C5A4E0  4B 6E BF D0 */	b PSMTXCopy
/* 80C5A4E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5A4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5A4EC  7C 08 03 A6 */	mtlr r0
/* 80C5A4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5A4F4  4E 80 00 20 */	blr 
