lbl_80151A54:
/* 80151A54  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80151A58  7C 08 02 A6 */	mflr r0
/* 80151A5C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80151A60  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80151A64  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80151A68  39 61 00 80 */	addi r11, r1, 0x80
/* 80151A6C  48 21 07 4D */	bl _savegpr_20
/* 80151A70  7C 79 1B 78 */	mr r25, r3
/* 80151A74  7C 9A 23 78 */	mr r26, r4
/* 80151A78  7C BB 2B 78 */	mr r27, r5
/* 80151A7C  7C DC 33 78 */	mr r28, r6
/* 80151A80  80 0D 8B E0 */	lwz r0, Zero__5csXyz(r13)
/* 80151A84  90 01 00 08 */	stw r0, 8(r1)
/* 80151A88  A0 0D 8B E4 */	lhz r0, data_80451164(r13)
/* 80151A8C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80151A90  3B A0 00 00 */	li r29, 0
/* 80151A94  3B 00 00 00 */	li r24, 0
/* 80151A98  3A E0 00 00 */	li r23, 0
/* 80151A9C  3A C0 00 00 */	li r22, 0
/* 80151AA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80151AA4  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80151AA8  7F F4 FB 78 */	mr r20, r31
/* 80151AAC  C3 E2 99 D8 */	lfs f31, lit_4116(r2)
/* 80151AB0  7F F5 FB 78 */	mr r21, r31
lbl_80151AB4:
/* 80151AB4  7C 7B B2 14 */	add r3, r27, r22
/* 80151AB8  4B EB B3 E5 */	bl XYZrotS__14mDoMtx_stack_cFRC5csXyz
/* 80151ABC  7F E3 FB 78 */	mr r3, r31
/* 80151AC0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80151AC4  48 1F 49 ED */	bl PSMTXCopy
/* 80151AC8  7F DA BA 14 */	add r30, r26, r23
/* 80151ACC  7F C3 F3 78 */	mr r3, r30
/* 80151AD0  4B EB B2 95 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80151AD4  A8 61 00 08 */	lha r3, 8(r1)
/* 80151AD8  7C 99 B2 14 */	add r4, r25, r22
/* 80151ADC  A8 04 00 34 */	lha r0, 0x34(r4)
/* 80151AE0  7C 03 02 14 */	add r0, r3, r0
/* 80151AE4  B0 01 00 08 */	sth r0, 8(r1)
/* 80151AE8  A8 61 00 0A */	lha r3, 0xa(r1)
/* 80151AEC  A8 04 00 36 */	lha r0, 0x36(r4)
/* 80151AF0  7C 03 02 14 */	add r0, r3, r0
/* 80151AF4  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80151AF8  38 61 00 08 */	addi r3, r1, 8
/* 80151AFC  4B EB B4 49 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80151B00  7F E3 FB 78 */	mr r3, r31
/* 80151B04  38 81 00 1C */	addi r4, r1, 0x1c
/* 80151B08  7E 85 A3 78 */	mr r5, r20
/* 80151B0C  48 1F 49 D9 */	bl PSMTXConcat
/* 80151B10  7C 1C C4 2E */	lfsx f0, r28, r24
/* 80151B14  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80151B18  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 80151B1C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80151B20  7E A3 AB 78 */	mr r3, r21
/* 80151B24  38 81 00 10 */	addi r4, r1, 0x10
/* 80151B28  38 BE 00 0C */	addi r5, r30, 0xc
/* 80151B2C  48 1F 52 41 */	bl PSMTXMultVec
/* 80151B30  3B BD 00 01 */	addi r29, r29, 1
/* 80151B34  2C 1D 00 03 */	cmpwi r29, 3
/* 80151B38  3B 18 00 04 */	addi r24, r24, 4
/* 80151B3C  3A F7 00 0C */	addi r23, r23, 0xc
/* 80151B40  3A D6 00 06 */	addi r22, r22, 6
/* 80151B44  41 80 FF 70 */	blt lbl_80151AB4
/* 80151B48  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80151B4C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80151B50  39 61 00 80 */	addi r11, r1, 0x80
/* 80151B54  48 21 06 B1 */	bl _restgpr_20
/* 80151B58  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80151B5C  7C 08 03 A6 */	mtlr r0
/* 80151B60  38 21 00 90 */	addi r1, r1, 0x90
/* 80151B64  4E 80 00 20 */	blr 
