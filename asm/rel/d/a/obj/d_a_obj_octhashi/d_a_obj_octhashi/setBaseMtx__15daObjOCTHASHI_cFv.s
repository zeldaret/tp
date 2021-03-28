lbl_80CA59BC:
/* 80CA59BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CA59C0  7C 08 02 A6 */	mflr r0
/* 80CA59C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CA59C8  39 61 00 30 */	addi r11, r1, 0x30
/* 80CA59CC  4B 6B C7 FC */	b _savegpr_24
/* 80CA59D0  7C 78 1B 78 */	mr r24, r3
/* 80CA59D4  3B 20 00 00 */	li r25, 0
/* 80CA59D8  3B E0 00 00 */	li r31, 0
/* 80CA59DC  3B C0 00 00 */	li r30, 0
/* 80CA59E0  3B A0 00 00 */	li r29, 0
/* 80CA59E4  3C 60 80 CA */	lis r3, lit_3683@ha
/* 80CA59E8  3B 43 64 C8 */	addi r26, r3, lit_3683@l
/* 80CA59EC  3C 60 80 CA */	lis r3, lit_4057@ha
/* 80CA59F0  3B 63 65 40 */	addi r27, r3, lit_4057@l
/* 80CA59F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA59F8  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80CA59FC  48 00 00 58 */	b lbl_80CA5A54
lbl_80CA5A00:
/* 80CA5A00  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80CA5A04  7C 78 1A 14 */	add r3, r24, r3
/* 80CA5A08  4B 36 73 5C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CA5A0C  38 78 04 E4 */	addi r3, r24, 0x4e4
/* 80CA5A10  4B 36 75 34 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CA5A14  38 7E 06 60 */	addi r3, r30, 0x660
/* 80CA5A18  7C 78 1A 14 */	add r3, r24, r3
/* 80CA5A1C  4B 36 75 28 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CA5A20  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80CA5A24  C0 5B 00 00 */	lfs f2, 0(r27)
/* 80CA5A28  FC 60 08 90 */	fmr f3, f1
/* 80CA5A2C  4B 36 73 70 */	b transM__14mDoMtx_stack_cFfff
/* 80CA5A30  7F 83 E3 78 */	mr r3, r28
/* 80CA5A34  38 1F 07 80 */	addi r0, r31, 0x780
/* 80CA5A38  7C 98 00 2E */	lwzx r4, r24, r0
/* 80CA5A3C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CA5A40  4B 6A 0A 70 */	b PSMTXCopy
/* 80CA5A44  3B 39 00 01 */	addi r25, r25, 1
/* 80CA5A48  3B FF 00 04 */	addi r31, r31, 4
/* 80CA5A4C  3B DE 00 06 */	addi r30, r30, 6
/* 80CA5A50  3B BD 00 0C */	addi r29, r29, 0xc
lbl_80CA5A54:
/* 80CA5A54  80 18 06 E0 */	lwz r0, 0x6e0(r24)
/* 80CA5A58  7C 19 00 00 */	cmpw r25, r0
/* 80CA5A5C  41 80 FF A4 */	blt lbl_80CA5A00
/* 80CA5A60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA5A64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA5A68  38 98 05 6C */	addi r4, r24, 0x56c
/* 80CA5A6C  4B 6A 0A 44 */	b PSMTXCopy
/* 80CA5A70  39 61 00 30 */	addi r11, r1, 0x30
/* 80CA5A74  4B 6B C7 A0 */	b _restgpr_24
/* 80CA5A78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CA5A7C  7C 08 03 A6 */	mtlr r0
/* 80CA5A80  38 21 00 30 */	addi r1, r1, 0x30
/* 80CA5A84  4E 80 00 20 */	blr 
