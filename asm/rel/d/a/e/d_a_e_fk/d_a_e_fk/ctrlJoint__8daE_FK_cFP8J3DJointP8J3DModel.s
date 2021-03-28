lbl_806B98C4:
/* 806B98C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B98C8  7C 08 02 A6 */	mflr r0
/* 806B98CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B98D0  39 61 00 30 */	addi r11, r1, 0x30
/* 806B98D4  4B CA 89 04 */	b _savegpr_28
/* 806B98D8  7C 7D 1B 78 */	mr r29, r3
/* 806B98DC  7C BE 2B 78 */	mr r30, r5
/* 806B98E0  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 806B98E4  80 65 00 84 */	lwz r3, 0x84(r5)
/* 806B98E8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806B98EC  1F FC 00 30 */	mulli r31, r28, 0x30
/* 806B98F0  7C 60 FA 14 */	add r3, r0, r31
/* 806B98F4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B98F8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B98FC  4B C8 CB B4 */	b PSMTXCopy
/* 806B9900  2C 1C 00 02 */	cmpwi r28, 2
/* 806B9904  41 82 00 34 */	beq lbl_806B9938
/* 806B9908  40 80 00 10 */	bge lbl_806B9918
/* 806B990C  2C 1C 00 01 */	cmpwi r28, 1
/* 806B9910  40 80 00 14 */	bge lbl_806B9924
/* 806B9914  48 00 00 80 */	b lbl_806B9994
lbl_806B9918:
/* 806B9918  2C 1C 00 0C */	cmpwi r28, 0xc
/* 806B991C  41 82 00 68 */	beq lbl_806B9984
/* 806B9920  48 00 00 74 */	b lbl_806B9994
lbl_806B9924:
/* 806B9924  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B9928  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B992C  A8 9D 05 D4 */	lha r4, 0x5d4(r29)
/* 806B9930  4B 95 2B 04 */	b mDoMtx_YrotM__FPA4_fs
/* 806B9934  48 00 00 60 */	b lbl_806B9994
lbl_806B9938:
/* 806B9938  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B993C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B9940  3C 80 80 6C */	lis r4, lit_4008@ha
/* 806B9944  C0 44 B7 94 */	lfs f2, lit_4008@l(r4)
/* 806B9948  A8 1D 05 D4 */	lha r0, 0x5d4(r29)
/* 806B994C  3C 80 80 6C */	lis r4, lit_4010@ha
/* 806B9950  C8 24 B7 98 */	lfd f1, lit_4010@l(r4)
/* 806B9954  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806B9958  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B995C  3C 00 43 30 */	lis r0, 0x4330
/* 806B9960  90 01 00 08 */	stw r0, 8(r1)
/* 806B9964  C8 01 00 08 */	lfd f0, 8(r1)
/* 806B9968  EC 00 08 28 */	fsubs f0, f0, f1
/* 806B996C  EC 02 00 32 */	fmuls f0, f2, f0
/* 806B9970  FC 00 00 1E */	fctiwz f0, f0
/* 806B9974  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806B9978  80 81 00 14 */	lwz r4, 0x14(r1)
/* 806B997C  4B 95 2A B8 */	b mDoMtx_YrotM__FPA4_fs
/* 806B9980  48 00 00 14 */	b lbl_806B9994
lbl_806B9984:
/* 806B9984  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B9988  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B998C  A8 9D 05 D8 */	lha r4, 0x5d8(r29)
/* 806B9990  4B 95 2A 0C */	b mDoMtx_XrotM__FPA4_fs
lbl_806B9994:
/* 806B9994  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B9998  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B999C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 806B99A0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806B99A4  7C 80 FA 14 */	add r4, r0, r31
/* 806B99A8  4B C8 CB 08 */	b PSMTXCopy
/* 806B99AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B99B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B99B4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 806B99B8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 806B99BC  4B C8 CA F4 */	b PSMTXCopy
/* 806B99C0  38 60 00 01 */	li r3, 1
/* 806B99C4  39 61 00 30 */	addi r11, r1, 0x30
/* 806B99C8  4B CA 88 5C */	b _restgpr_28
/* 806B99CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B99D0  7C 08 03 A6 */	mtlr r0
/* 806B99D4  38 21 00 30 */	addi r1, r1, 0x30
/* 806B99D8  4E 80 00 20 */	blr 
