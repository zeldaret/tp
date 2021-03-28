lbl_80BA865C:
/* 80BA865C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA8660  7C 08 02 A6 */	mflr r0
/* 80BA8664  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA8668  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA866C  7C 7F 1B 78 */	mr r31, r3
/* 80BA8670  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BA8674  4B 46 46 F0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BA8678  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BA867C  4B 46 48 C8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BA8680  3C 60 80 BB */	lis r3, l_HIO@ha
/* 80BA8684  38 63 90 0C */	addi r3, r3, l_HIO@l
/* 80BA8688  88 1F 05 78 */	lbz r0, 0x578(r31)
/* 80BA868C  54 00 10 3A */	slwi r0, r0, 2
/* 80BA8690  7C 63 02 14 */	add r3, r3, r0
/* 80BA8694  C0 23 00 08 */	lfs f1, 8(r3)
/* 80BA8698  FC 40 08 90 */	fmr f2, f1
/* 80BA869C  FC 60 08 90 */	fmr f3, f1
/* 80BA86A0  4B 46 47 98 */	b scaleM__14mDoMtx_stack_cFfff
/* 80BA86A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA86A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA86AC  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BA86B0  38 84 00 24 */	addi r4, r4, 0x24
/* 80BA86B4  4B 79 DD FC */	b PSMTXCopy
/* 80BA86B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA86BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA86C0  7C 08 03 A6 */	mtlr r0
/* 80BA86C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA86C8  4E 80 00 20 */	blr 
