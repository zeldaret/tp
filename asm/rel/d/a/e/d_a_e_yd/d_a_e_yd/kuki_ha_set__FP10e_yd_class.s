lbl_807F5A70:
/* 807F5A70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807F5A74  7C 08 02 A6 */	mflr r0
/* 807F5A78  90 01 00 34 */	stw r0, 0x34(r1)
/* 807F5A7C  39 61 00 30 */	addi r11, r1, 0x30
/* 807F5A80  4B B6 C7 4C */	b _savegpr_25
/* 807F5A84  7C 7C 1B 78 */	mr r28, r3
/* 807F5A88  3B FC 06 A4 */	addi r31, r28, 0x6a4
/* 807F5A8C  3B DC 07 34 */	addi r30, r28, 0x734
/* 807F5A90  3B A0 00 00 */	li r29, 0
/* 807F5A94  3B 60 00 00 */	li r27, 0
/* 807F5A98  3B 40 00 00 */	li r26, 0
lbl_807F5A9C:
/* 807F5A9C  2C 1D 00 00 */	cmpwi r29, 0
/* 807F5AA0  40 81 00 88 */	ble lbl_807F5B28
/* 807F5AA4  2C 1D 00 0B */	cmpwi r29, 0xb
/* 807F5AA8  40 80 00 80 */	bge lbl_807F5B28
/* 807F5AAC  7F 3C D2 14 */	add r25, r28, r26
/* 807F5AB0  80 19 07 7C */	lwz r0, 0x77c(r25)
/* 807F5AB4  28 00 00 00 */	cmplwi r0, 0
/* 807F5AB8  41 82 00 70 */	beq lbl_807F5B28
/* 807F5ABC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807F5AC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807F5AC4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F5AC8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807F5ACC  C0 7F 00 08 */	lfs f3, 8(r31)
/* 807F5AD0  4B B5 0E 18 */	b PSMTXTrans
/* 807F5AD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807F5AD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807F5ADC  A8 9E 00 02 */	lha r4, 2(r30)
/* 807F5AE0  4B 81 69 54 */	b mDoMtx_YrotM__FPA4_fs
/* 807F5AE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807F5AE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807F5AEC  A8 9E 00 00 */	lha r4, 0(r30)
/* 807F5AF0  4B 81 68 AC */	b mDoMtx_XrotM__FPA4_fs
/* 807F5AF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807F5AF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807F5AFC  7F 64 07 34 */	extsh r4, r27
/* 807F5B00  4B 81 69 CC */	b mDoMtx_ZrotM__FPA4_fs
/* 807F5B04  C0 39 07 DC */	lfs f1, 0x7dc(r25)
/* 807F5B08  FC 40 08 90 */	fmr f2, f1
/* 807F5B0C  FC 60 08 90 */	fmr f3, f1
/* 807F5B10  4B 81 73 28 */	b scaleM__14mDoMtx_stack_cFfff
/* 807F5B14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807F5B18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807F5B1C  80 99 07 7C */	lwz r4, 0x77c(r25)
/* 807F5B20  38 84 00 24 */	addi r4, r4, 0x24
/* 807F5B24  4B B5 09 8C */	b PSMTXCopy
lbl_807F5B28:
/* 807F5B28  3B BD 00 01 */	addi r29, r29, 1
/* 807F5B2C  2C 1D 00 0C */	cmpwi r29, 0xc
/* 807F5B30  3B 7B 20 00 */	addi r27, r27, 0x2000
/* 807F5B34  3B 5A 00 04 */	addi r26, r26, 4
/* 807F5B38  3B FF 00 0C */	addi r31, r31, 0xc
/* 807F5B3C  3B DE 00 06 */	addi r30, r30, 6
/* 807F5B40  41 80 FF 5C */	blt lbl_807F5A9C
/* 807F5B44  39 61 00 30 */	addi r11, r1, 0x30
/* 807F5B48  4B B6 C6 D0 */	b _restgpr_25
/* 807F5B4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807F5B50  7C 08 03 A6 */	mtlr r0
/* 807F5B54  38 21 00 30 */	addi r1, r1, 0x30
/* 807F5B58  4E 80 00 20 */	blr 
