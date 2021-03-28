lbl_80C8BDC8:
/* 80C8BDC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8BDCC  7C 08 02 A6 */	mflr r0
/* 80C8BDD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8BDD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8BDD8  7C 7F 1B 78 */	mr r31, r3
/* 80C8BDDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8BDE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8BDE4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C8BDE8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C8BDEC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C8BDF0  4B 6B AA F8 */	b PSMTXTrans
/* 80C8BDF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8BDF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8BDFC  38 80 00 00 */	li r4, 0
/* 80C8BE00  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80C8BE04  38 C0 00 00 */	li r6, 0
/* 80C8BE08  4B 38 04 98 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C8BE0C  3C 60 80 C9 */	lis r3, lit_3628@ha
/* 80C8BE10  C0 23 CB F0 */	lfs f1, lit_3628@l(r3)
/* 80C8BE14  C0 5F 05 C0 */	lfs f2, 0x5c0(r31)
/* 80C8BE18  FC 60 08 90 */	fmr f3, f1
/* 80C8BE1C  4B 38 0F 80 */	b transM__14mDoMtx_stack_cFfff
/* 80C8BE20  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C8BE24  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C8BE28  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C8BE2C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C8BE30  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C8BE34  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C8BE38  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C8BE3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8BE40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8BE44  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C8BE48  38 84 00 24 */	addi r4, r4, 0x24
/* 80C8BE4C  4B 6B A6 64 */	b PSMTXCopy
/* 80C8BE50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8BE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8BE58  7C 08 03 A6 */	mtlr r0
/* 80C8BE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8BE60  4E 80 00 20 */	blr 
