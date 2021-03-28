lbl_80C1DDC8:
/* 80C1DDC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1DDCC  7C 08 02 A6 */	mflr r0
/* 80C1DDD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1DDD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1DDD8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1DDDC  7C 7E 1B 78 */	mr r30, r3
/* 80C1DDE0  3C 60 80 C2 */	lis r3, lit_3644@ha
/* 80C1DDE4  3B E3 EE 78 */	addi r31, r3, lit_3644@l
/* 80C1DDE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1DDEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1DDF0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C1DDF4  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C1DDF8  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80C1DDFC  4B 72 8A EC */	b PSMTXTrans
/* 80C1DE00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1DE04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1DE08  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C1DE0C  4B 3E E6 28 */	b mDoMtx_YrotM__FPA4_fs
/* 80C1DE10  C0 3E 05 AC */	lfs f1, 0x5ac(r30)
/* 80C1DE14  C0 5E 05 B0 */	lfs f2, 0x5b0(r30)
/* 80C1DE18  C0 7E 05 B4 */	lfs f3, 0x5b4(r30)
/* 80C1DE1C  4B 3E EF 80 */	b transM__14mDoMtx_stack_cFfff
/* 80C1DE20  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C1DE24  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80C1DE28  FC 60 08 90 */	fmr f3, f1
/* 80C1DE2C  4B 3E EF 70 */	b transM__14mDoMtx_stack_cFfff
/* 80C1DE30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1DE34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1DE38  A8 9E 05 B8 */	lha r4, 0x5b8(r30)
/* 80C1DE3C  A8 BE 05 BA */	lha r5, 0x5ba(r30)
/* 80C1DE40  A8 DE 05 BC */	lha r6, 0x5bc(r30)
/* 80C1DE44  4B 3E E4 5C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C1DE48  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C1DE4C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80C1DE50  FC 60 08 90 */	fmr f3, f1
/* 80C1DE54  4B 3E EF 48 */	b transM__14mDoMtx_stack_cFfff
/* 80C1DE58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1DE5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1DE60  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C1DE64  38 84 00 24 */	addi r4, r4, 0x24
/* 80C1DE68  4B 72 86 48 */	b PSMTXCopy
/* 80C1DE6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1DE70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1DE74  38 9E 05 6C */	addi r4, r30, 0x56c
/* 80C1DE78  4B 72 86 38 */	b PSMTXCopy
/* 80C1DE7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1DE80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1DE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1DE88  7C 08 03 A6 */	mtlr r0
/* 80C1DE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1DE90  4E 80 00 20 */	blr 
