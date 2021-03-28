lbl_80CB8F04:
/* 80CB8F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8F08  7C 08 02 A6 */	mflr r0
/* 80CB8F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8F10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB8F14  7C 7F 1B 78 */	mr r31, r3
/* 80CB8F18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB8F1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB8F20  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CB8F24  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CB8F28  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CB8F2C  4B 68 D9 BC */	b PSMTXTrans
/* 80CB8F30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB8F34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB8F38  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CB8F3C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CB8F40  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CB8F44  4B 35 33 5C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80CB8F48  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CB8F4C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CB8F50  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CB8F54  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CB8F58  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CB8F5C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CB8F60  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CB8F64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB8F68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB8F6C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CB8F70  38 84 00 24 */	addi r4, r4, 0x24
/* 80CB8F74  4B 68 D5 3C */	b PSMTXCopy
/* 80CB8F78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB8F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8F80  7C 08 03 A6 */	mtlr r0
/* 80CB8F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8F88  4E 80 00 20 */	blr 
