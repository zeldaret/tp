lbl_8019095C:
/* 8019095C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80190960  7C 08 02 A6 */	mflr r0
/* 80190964  90 01 00 24 */	stw r0, 0x24(r1)
/* 80190968  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8019096C  7C 7F 1B 78 */	mr r31, r3
/* 80190970  80 63 03 A0 */	lwz r3, 0x3a0(r3)
/* 80190974  C0 23 00 CC */	lfs f1, 0xcc(r3)
/* 80190978  C0 02 9F B8 */	lfs f0, lit_8608(r2)
/* 8019097C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80190980  4C 40 13 82 */	cror 2, 0, 2
/* 80190984  40 82 00 08 */	bne lbl_8019098C
/* 80190988  C0 22 9F 48 */	lfs f1, lit_4778(r2)
lbl_8019098C:
/* 8019098C  C0 1F 03 C0 */	lfs f0, 0x3c0(r31)
/* 80190990  EC 01 00 32 */	fmuls f0, f1, f0
/* 80190994  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80190998  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8019099C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801909A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801909A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801909A8  C0 3F 03 A4 */	lfs f1, 0x3a4(r31)
/* 801909AC  C0 5F 03 A8 */	lfs f2, 0x3a8(r31)
/* 801909B0  C0 7F 03 AC */	lfs f3, 0x3ac(r31)
/* 801909B4  48 1B 5F 35 */	bl PSMTXTrans
/* 801909B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801909BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801909C0  A8 9F 03 B0 */	lha r4, 0x3b0(r31)
/* 801909C4  A8 BF 03 B2 */	lha r5, 0x3b2(r31)
/* 801909C8  A8 DF 03 B4 */	lha r6, 0x3b4(r31)
/* 801909CC  4B E7 B7 99 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 801909D0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801909D4  C0 01 00 08 */	lfs f0, 8(r1)
/* 801909D8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 801909DC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801909E0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801909E4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801909E8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801909EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801909F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801909F4  80 9F 00 08 */	lwz r4, 8(r31)
/* 801909F8  38 84 00 24 */	addi r4, r4, 0x24
/* 801909FC  48 1B 5A B5 */	bl PSMTXCopy
/* 80190A00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80190A04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80190A08  7C 08 03 A6 */	mtlr r0
/* 80190A0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80190A10  4E 80 00 20 */	blr 
