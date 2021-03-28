lbl_8073BD78:
/* 8073BD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073BD7C  7C 08 02 A6 */	mflr r0
/* 8073BD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073BD84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073BD88  7C 7F 1B 78 */	mr r31, r3
/* 8073BD8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8073BD90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8073BD94  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8073BD98  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8073BD9C  3C 80 80 74 */	lis r4, lit_3934@ha
/* 8073BDA0  C0 04 CE DC */	lfs f0, lit_3934@l(r4)
/* 8073BDA4  EC 42 00 28 */	fsubs f2, f2, f0
/* 8073BDA8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8073BDAC  4B C0 AB 3C */	b PSMTXTrans
/* 8073BDB0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8073BDB4  4B 8D 11 90 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8073BDB8  C0 3F 06 80 */	lfs f1, 0x680(r31)
/* 8073BDBC  FC 40 08 90 */	fmr f2, f1
/* 8073BDC0  FC 60 08 90 */	fmr f3, f1
/* 8073BDC4  4B 8D 10 74 */	b scaleM__14mDoMtx_stack_cFfff
/* 8073BDC8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8073BDCC  80 83 00 04 */	lwz r4, 4(r3)
/* 8073BDD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8073BDD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8073BDD8  38 84 00 24 */	addi r4, r4, 0x24
/* 8073BDDC  4B C0 A6 D4 */	b PSMTXCopy
/* 8073BDE0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8073BDE4  4B 8D 54 08 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 8073BDE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8073BDEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8073BDF0  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8073BDF4  38 84 00 24 */	addi r4, r4, 0x24
/* 8073BDF8  4B C0 A6 B8 */	b PSMTXCopy
/* 8073BDFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073BE00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073BE04  7C 08 03 A6 */	mtlr r0
/* 8073BE08  38 21 00 10 */	addi r1, r1, 0x10
/* 8073BE0C  4E 80 00 20 */	blr 
