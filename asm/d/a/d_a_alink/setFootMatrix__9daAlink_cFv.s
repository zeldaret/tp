lbl_800A29DC:
/* 800A29DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800A29E0  7C 08 02 A6 */	mflr r0
/* 800A29E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 800A29E8  39 61 00 40 */	addi r11, r1, 0x40
/* 800A29EC  48 2B F7 DD */	bl _savegpr_24
/* 800A29F0  7C 79 1B 78 */	mr r25, r3
/* 800A29F4  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 800A29F8  3B A3 D6 58 */	addi r29, r3, lit_3757@l /* 0x8038D658@l */
/* 800A29FC  3B 99 29 04 */	addi r28, r25, 0x2904
/* 800A2A00  3B C0 00 00 */	li r30, 0
/* 800A2A04  3B 00 00 00 */	li r24, 0
/* 800A2A08  3B 62 98 2C */	la r27, footJointTable(r2) /* 8045322C-_SDA2_BASE_ */
lbl_800A2A0C:
/* 800A2A0C  3B E0 00 00 */	li r31, 0
/* 800A2A10  3B 40 00 00 */	li r26, 0
lbl_800A2A14:
/* 800A2A14  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A2A18  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A2A1C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A2A20  7C 1B C2 2E */	lhzx r0, r27, r24
/* 800A2A24  7C 1F 02 14 */	add r0, r31, r0
/* 800A2A28  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A2A2C  7C 63 02 14 */	add r3, r3, r0
/* 800A2A30  38 9A 00 14 */	addi r4, r26, 0x14
/* 800A2A34  7C 9C 22 14 */	add r4, r28, r4
/* 800A2A38  48 2A 3A 79 */	bl PSMTXCopy
/* 800A2A3C  3B FF 00 01 */	addi r31, r31, 1
/* 800A2A40  2C 1F 00 03 */	cmpwi r31, 3
/* 800A2A44  3B 5A 00 30 */	addi r26, r26, 0x30
/* 800A2A48  41 80 FF CC */	blt lbl_800A2A14
/* 800A2A4C  3B DE 00 01 */	addi r30, r30, 1
/* 800A2A50  2C 1E 00 02 */	cmpwi r30, 2
/* 800A2A54  3B 18 00 02 */	addi r24, r24, 2
/* 800A2A58  3B 9C 00 A4 */	addi r28, r28, 0xa4
/* 800A2A5C  41 80 FF B0 */	blt lbl_800A2A0C
/* 800A2A60  80 79 20 60 */	lwz r3, 0x2060(r25)
/* 800A2A64  88 03 00 00 */	lbz r0, 0(r3)
/* 800A2A68  28 00 00 00 */	cmplwi r0, 0
/* 800A2A6C  40 82 00 0C */	bne lbl_800A2A78
/* 800A2A70  38 60 00 00 */	li r3, 0
/* 800A2A74  48 00 01 98 */	b lbl_800A2C0C
lbl_800A2A78:
/* 800A2A78  3B 79 29 04 */	addi r27, r25, 0x2904
/* 800A2A7C  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800A2A80  28 00 00 3B */	cmplwi r0, 0x3b
/* 800A2A84  40 82 00 34 */	bne lbl_800A2AB8
/* 800A2A88  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 800A2A8C  B0 19 04 DE */	sth r0, 0x4de(r25)
/* 800A2A90  88 19 2F C0 */	lbz r0, 0x2fc0(r25)
/* 800A2A94  28 00 00 00 */	cmplwi r0, 0
/* 800A2A98  40 82 00 14 */	bne lbl_800A2AAC
/* 800A2A9C  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 800A2AA0  38 03 C0 00 */	addi r0, r3, -16384
/* 800A2AA4  B0 19 04 E6 */	sth r0, 0x4e6(r25)
/* 800A2AA8  48 00 00 10 */	b lbl_800A2AB8
lbl_800A2AAC:
/* 800A2AAC  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 800A2AB0  38 03 40 00 */	addi r0, r3, 0x4000
/* 800A2AB4  B0 19 04 E6 */	sth r0, 0x4e6(r25)
lbl_800A2AB8:
/* 800A2AB8  3B 40 00 00 */	li r26, 0
/* 800A2ABC  3B 00 00 00 */	li r24, 0
/* 800A2AC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A2AC4  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A2AC8  7F DF F3 78 */	mr r31, r30
lbl_800A2ACC:
/* 800A2ACC  38 62 98 2C */	la r3, footJointTable(r2) /* 8045322C-_SDA2_BASE_ */
/* 800A2AD0  7F 83 C2 2E */	lhzx r28, r3, r24
/* 800A2AD4  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A2AD8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A2ADC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A2AE0  1C 1C 00 30 */	mulli r0, r28, 0x30
/* 800A2AE4  7C 83 02 14 */	add r4, r3, r0
/* 800A2AE8  7F 23 CB 78 */	mr r3, r25
/* 800A2AEC  A8 BB 00 06 */	lha r5, 6(r27)
/* 800A2AF0  38 C0 00 00 */	li r6, 0
/* 800A2AF4  38 E0 00 00 */	li r7, 0
/* 800A2AF8  39 00 00 00 */	li r8, 0
/* 800A2AFC  39 20 00 00 */	li r9, 0
/* 800A2B00  4B FF B1 6D */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 800A2B04  7F C3 F3 78 */	mr r3, r30
/* 800A2B08  38 9D 48 80 */	addi r4, r29, 0x4880
/* 800A2B0C  38 A1 00 08 */	addi r5, r1, 8
/* 800A2B10  48 2A 42 5D */	bl PSMTXMultVec
/* 800A2B14  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A2B18  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A2B1C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A2B20  57 9C 04 3E */	clrlwi r28, r28, 0x10
/* 800A2B24  38 1C 00 01 */	addi r0, r28, 1
/* 800A2B28  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800A2B2C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A2B30  7C 83 02 14 */	add r4, r3, r0
/* 800A2B34  7F 23 CB 78 */	mr r3, r25
/* 800A2B38  A8 BB 00 04 */	lha r5, 4(r27)
/* 800A2B3C  38 C0 00 00 */	li r6, 0
/* 800A2B40  38 E0 00 00 */	li r7, 0
/* 800A2B44  39 00 00 00 */	li r8, 0
/* 800A2B48  39 21 00 08 */	addi r9, r1, 8
/* 800A2B4C  4B FF B1 21 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 800A2B50  7F C3 F3 78 */	mr r3, r30
/* 800A2B54  38 9D 48 8C */	addi r4, r29, 0x488c
/* 800A2B58  38 A1 00 08 */	addi r5, r1, 8
/* 800A2B5C  48 2A 42 11 */	bl PSMTXMultVec
/* 800A2B60  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A2B64  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A2B68  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A2B6C  38 1C 00 02 */	addi r0, r28, 2
/* 800A2B70  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800A2B74  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A2B78  7C 83 02 14 */	add r4, r3, r0
/* 800A2B7C  7F 23 CB 78 */	mr r3, r25
/* 800A2B80  A8 BB 00 02 */	lha r5, 2(r27)
/* 800A2B84  38 C0 00 00 */	li r6, 0
/* 800A2B88  38 E0 00 00 */	li r7, 0
/* 800A2B8C  39 00 00 00 */	li r8, 0
/* 800A2B90  39 21 00 08 */	addi r9, r1, 8
/* 800A2B94  4B FF B0 D9 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 800A2B98  7F E3 FB 78 */	mr r3, r31
/* 800A2B9C  38 9D 48 98 */	addi r4, r29, 0x4898
/* 800A2BA0  38 A1 00 08 */	addi r5, r1, 8
/* 800A2BA4  48 2A 41 C9 */	bl PSMTXMultVec
/* 800A2BA8  80 79 06 50 */	lwz r3, 0x650(r25)
/* 800A2BAC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A2BB0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A2BB4  38 1C 00 03 */	addi r0, r28, 3
/* 800A2BB8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800A2BBC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A2BC0  7C 83 02 14 */	add r4, r3, r0
/* 800A2BC4  7F 23 CB 78 */	mr r3, r25
/* 800A2BC8  A8 BB 00 02 */	lha r5, 2(r27)
/* 800A2BCC  38 C0 00 00 */	li r6, 0
/* 800A2BD0  38 E0 00 00 */	li r7, 0
/* 800A2BD4  39 00 00 00 */	li r8, 0
/* 800A2BD8  39 21 00 08 */	addi r9, r1, 8
/* 800A2BDC  4B FF B0 91 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 800A2BE0  3B 5A 00 01 */	addi r26, r26, 1
/* 800A2BE4  2C 1A 00 02 */	cmpwi r26, 2
/* 800A2BE8  3B 18 00 02 */	addi r24, r24, 2
/* 800A2BEC  3B 7B 00 A4 */	addi r27, r27, 0xa4
/* 800A2BF0  41 80 FE DC */	blt lbl_800A2ACC
/* 800A2BF4  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800A2BF8  28 00 00 3B */	cmplwi r0, 0x3b
/* 800A2BFC  40 82 00 0C */	bne lbl_800A2C08
/* 800A2C00  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 800A2C04  B0 19 04 E6 */	sth r0, 0x4e6(r25)
lbl_800A2C08:
/* 800A2C08  38 60 00 01 */	li r3, 1
lbl_800A2C0C:
/* 800A2C0C  39 61 00 40 */	addi r11, r1, 0x40
/* 800A2C10  48 2B F6 05 */	bl _restgpr_24
/* 800A2C14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800A2C18  7C 08 03 A6 */	mtlr r0
/* 800A2C1C  38 21 00 40 */	addi r1, r1, 0x40
/* 800A2C20  4E 80 00 20 */	blr 
