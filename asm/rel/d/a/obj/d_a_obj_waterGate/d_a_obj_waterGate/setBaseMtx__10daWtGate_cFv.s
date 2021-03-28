lbl_80D2BC0C:
/* 80D2BC0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2BC10  7C 08 02 A6 */	mflr r0
/* 80D2BC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2BC18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2BC1C  7C 7F 1B 78 */	mr r31, r3
/* 80D2BC20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D2BC24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D2BC28  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D2BC2C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D2BC30  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D2BC34  4B 61 AC B4 */	b PSMTXTrans
/* 80D2BC38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D2BC3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D2BC40  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D2BC44  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D2BC48  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D2BC4C  4B 2E 06 54 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D2BC50  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D2BC54  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D2BC58  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D2BC5C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D2BC60  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D2BC64  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D2BC68  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D2BC6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D2BC70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D2BC74  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D2BC78  38 84 00 24 */	addi r4, r4, 0x24
/* 80D2BC7C  4B 61 A8 34 */	b PSMTXCopy
/* 80D2BC80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2BC84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2BC88  7C 08 03 A6 */	mtlr r0
/* 80D2BC8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2BC90  4E 80 00 20 */	blr 
