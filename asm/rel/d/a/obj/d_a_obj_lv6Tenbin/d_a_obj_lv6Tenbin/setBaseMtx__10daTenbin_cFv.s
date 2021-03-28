lbl_80C769D0:
/* 80C769D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C769D4  7C 08 02 A6 */	mflr r0
/* 80C769D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C769DC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C769E0  4B 6E B7 FC */	b _savegpr_29
/* 80C769E4  7C 7D 1B 78 */	mr r29, r3
/* 80C769E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C769EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C769F0  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80C769F4  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80C769F8  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80C769FC  4B 6C FE EC */	b PSMTXTrans
/* 80C76A00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C76A04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C76A08  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 80C76A0C  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80C76A10  A8 DD 04 E8 */	lha r6, 0x4e8(r29)
/* 80C76A14  4B 39 58 8C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C76A18  3C 60 80 C7 */	lis r3, l_HIO@ha
/* 80C76A1C  3B C3 7A DC */	addi r30, r3, l_HIO@l
/* 80C76A20  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C76A24  C0 5D 05 BC */	lfs f2, 0x5bc(r29)
/* 80C76A28  3C 60 80 C7 */	lis r3, lit_3670@ha
/* 80C76A2C  C0 63 79 B8 */	lfs f3, lit_3670@l(r3)
/* 80C76A30  4B 39 63 6C */	b transM__14mDoMtx_stack_cFfff
/* 80C76A34  3C 60 80 C7 */	lis r3, lit_3735@ha
/* 80C76A38  C0 23 79 E4 */	lfs f1, lit_3735@l(r3)
/* 80C76A3C  3C 60 80 C7 */	lis r3, l_HIO@ha
/* 80C76A40  3B E3 7A DC */	addi r31, r3, l_HIO@l
/* 80C76A44  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C76A48  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C76A4C  FC 00 00 1E */	fctiwz f0, f0
/* 80C76A50  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C76A54  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80C76A58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C76A5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C76A60  38 80 00 00 */	li r4, 0
/* 80C76A64  38 C0 00 00 */	li r6, 0
/* 80C76A68  4B 39 58 38 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C76A6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C76A70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C76A74  A8 9D 05 D4 */	lha r4, 0x5d4(r29)
/* 80C76A78  A8 BD 05 D6 */	lha r5, 0x5d6(r29)
/* 80C76A7C  A8 DD 05 D8 */	lha r6, 0x5d8(r29)
/* 80C76A80  4B 39 58 20 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C76A84  C0 3D 05 F4 */	lfs f1, 0x5f4(r29)
/* 80C76A88  C0 5D 05 F8 */	lfs f2, 0x5f8(r29)
/* 80C76A8C  C0 7D 05 FC */	lfs f3, 0x5fc(r29)
/* 80C76A90  4B 39 63 0C */	b transM__14mDoMtx_stack_cFfff
/* 80C76A94  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80C76A98  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80C76A9C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C76AA0  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 80C76AA4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C76AA8  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 80C76AAC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C76AB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C76AB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C76AB8  80 9D 05 A8 */	lwz r4, 0x5a8(r29)
/* 80C76ABC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C76AC0  4B 6C F9 F0 */	b PSMTXCopy
/* 80C76AC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C76AC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C76ACC  38 9D 06 20 */	addi r4, r29, 0x620
/* 80C76AD0  4B 6C F9 E0 */	b PSMTXCopy
/* 80C76AD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C76AD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C76ADC  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80C76AE0  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80C76AE4  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80C76AE8  4B 6C FE 00 */	b PSMTXTrans
/* 80C76AEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C76AF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C76AF4  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 80C76AF8  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80C76AFC  A8 DD 04 E8 */	lha r6, 0x4e8(r29)
/* 80C76B00  4B 39 57 A0 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C76B04  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80C76B08  FC 20 00 50 */	fneg f1, f0
/* 80C76B0C  C0 5D 05 C0 */	lfs f2, 0x5c0(r29)
/* 80C76B10  3C 60 80 C7 */	lis r3, lit_3670@ha
/* 80C76B14  C0 63 79 B8 */	lfs f3, lit_3670@l(r3)
/* 80C76B18  4B 39 62 84 */	b transM__14mDoMtx_stack_cFfff
/* 80C76B1C  3C 60 80 C7 */	lis r3, lit_3735@ha
/* 80C76B20  C0 23 79 E4 */	lfs f1, lit_3735@l(r3)
/* 80C76B24  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C76B28  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C76B2C  FC 00 00 1E */	fctiwz f0, f0
/* 80C76B30  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C76B34  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80C76B38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C76B3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C76B40  38 80 00 00 */	li r4, 0
/* 80C76B44  38 C0 00 00 */	li r6, 0
/* 80C76B48  4B 39 57 58 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C76B4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C76B50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C76B54  A8 9D 05 D4 */	lha r4, 0x5d4(r29)
/* 80C76B58  A8 BD 05 D6 */	lha r5, 0x5d6(r29)
/* 80C76B5C  A8 DD 05 D8 */	lha r6, 0x5d8(r29)
/* 80C76B60  4B 39 57 40 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C76B64  C0 3D 05 F4 */	lfs f1, 0x5f4(r29)
/* 80C76B68  C0 5D 05 F8 */	lfs f2, 0x5f8(r29)
/* 80C76B6C  C0 7D 05 FC */	lfs f3, 0x5fc(r29)
/* 80C76B70  4B 39 62 2C */	b transM__14mDoMtx_stack_cFfff
/* 80C76B74  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80C76B78  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80C76B7C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C76B80  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 80C76B84  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C76B88  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 80C76B8C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C76B90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C76B94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C76B98  80 9D 05 AC */	lwz r4, 0x5ac(r29)
/* 80C76B9C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C76BA0  4B 6C F9 10 */	b PSMTXCopy
/* 80C76BA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C76BA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C76BAC  38 9D 05 6C */	addi r4, r29, 0x56c
/* 80C76BB0  4B 6C F9 00 */	b PSMTXCopy
/* 80C76BB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C76BB8  4B 6E B6 70 */	b _restgpr_29
/* 80C76BBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C76BC0  7C 08 03 A6 */	mtlr r0
/* 80C76BC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C76BC8  4E 80 00 20 */	blr 
