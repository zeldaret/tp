lbl_80325A9C:
/* 80325A9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80325AA0  7C 08 02 A6 */	mflr r0
/* 80325AA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80325AA8  39 61 00 30 */	addi r11, r1, 0x30
/* 80325AAC  48 03 C7 19 */	bl _savegpr_23
/* 80325AB0  7C 77 1B 78 */	mr r23, r3
/* 80325AB4  7C 98 23 78 */	mr r24, r4
/* 80325AB8  7C B9 2B 78 */	mr r25, r5
/* 80325ABC  7C DA 33 78 */	mr r26, r6
/* 80325AC0  7C FB 3B 78 */	mr r27, r7
/* 80325AC4  7F 1F C3 78 */	mr r31, r24
lbl_80325AC8:
/* 80325AC8  3B C0 00 00 */	li r30, 0
/* 80325ACC  3B A0 00 00 */	li r29, 0
/* 80325AD0  3B 80 00 00 */	li r28, 0
/* 80325AD4  80 99 00 00 */	lwz r4, 0(r25)
/* 80325AD8  A0 04 00 00 */	lhz r0, 0(r4)
/* 80325ADC  28 00 00 12 */	cmplwi r0, 0x12
/* 80325AE0  41 81 00 A0 */	bgt lbl_80325B80
/* 80325AE4  3C 60 80 3D */	lis r3, lit_871@ha /* 0x803CECA8@ha */
/* 80325AE8  38 63 EC A8 */	addi r3, r3, lit_871@l /* 0x803CECA8@l */
/* 80325AEC  54 00 10 3A */	slwi r0, r0, 2
/* 80325AF0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80325AF4  7C 09 03 A6 */	mtctr r0
/* 80325AF8  4E 80 04 20 */	bctr 
/* 80325AFC  38 04 00 04 */	addi r0, r4, 4
/* 80325B00  90 19 00 00 */	stw r0, 0(r25)
/* 80325B04  7E E3 BB 78 */	mr r3, r23
/* 80325B08  7F E4 FB 78 */	mr r4, r31
/* 80325B0C  7F 25 CB 78 */	mr r5, r25
/* 80325B10  7F 46 D3 78 */	mr r6, r26
/* 80325B14  7F 67 DB 78 */	mr r7, r27
/* 80325B18  4B FF FF 85 */	bl makeHierarchy__12J3DJointTreeFP8J3DJointPPC17J3DModelHierarchyP16J3DMaterialTableP13J3DShapeTable
/* 80325B1C  48 00 00 64 */	b lbl_80325B80
/* 80325B20  38 04 00 04 */	addi r0, r4, 4
/* 80325B24  90 19 00 00 */	stw r0, 0(r25)
/* 80325B28  48 00 00 C0 */	b lbl_80325BE8
/* 80325B2C  48 00 00 BC */	b lbl_80325BE8
/* 80325B30  80 77 00 18 */	lwz r3, 0x18(r23)
/* 80325B34  38 04 00 04 */	addi r0, r4, 4
/* 80325B38  90 19 00 00 */	stw r0, 0(r25)
/* 80325B3C  A0 04 00 02 */	lhz r0, 2(r4)
/* 80325B40  54 00 10 3A */	slwi r0, r0, 2
/* 80325B44  7F C3 00 2E */	lwzx r30, r3, r0
/* 80325B48  48 00 00 38 */	b lbl_80325B80
/* 80325B4C  38 04 00 04 */	addi r0, r4, 4
/* 80325B50  90 19 00 00 */	stw r0, 0(r25)
/* 80325B54  A0 04 00 02 */	lhz r0, 2(r4)
/* 80325B58  80 7A 00 08 */	lwz r3, 8(r26)
/* 80325B5C  54 00 10 3A */	slwi r0, r0, 2
/* 80325B60  7F A3 00 2E */	lwzx r29, r3, r0
/* 80325B64  48 00 00 1C */	b lbl_80325B80
/* 80325B68  38 04 00 04 */	addi r0, r4, 4
/* 80325B6C  90 19 00 00 */	stw r0, 0(r25)
/* 80325B70  A0 04 00 02 */	lhz r0, 2(r4)
/* 80325B74  80 7B 00 08 */	lwz r3, 8(r27)
/* 80325B78  54 00 10 3A */	slwi r0, r0, 2
/* 80325B7C  7F 83 00 2E */	lwzx r28, r3, r0
lbl_80325B80:
/* 80325B80  28 1E 00 00 */	cmplwi r30, 0
/* 80325B84  41 82 00 28 */	beq lbl_80325BAC
/* 80325B88  7F DF F3 78 */	mr r31, r30
/* 80325B8C  28 18 00 00 */	cmplwi r24, 0
/* 80325B90  40 82 00 0C */	bne lbl_80325B9C
/* 80325B94  93 D7 00 10 */	stw r30, 0x10(r23)
/* 80325B98  4B FF FF 30 */	b lbl_80325AC8
lbl_80325B9C:
/* 80325B9C  7F 03 C3 78 */	mr r3, r24
/* 80325BA0  7F C4 F3 78 */	mr r4, r30
/* 80325BA4  48 00 95 99 */	bl appendChild__8J3DJointFP8J3DJoint
/* 80325BA8  4B FF FF 20 */	b lbl_80325AC8
lbl_80325BAC:
/* 80325BAC  28 1D 00 00 */	cmplwi r29, 0
/* 80325BB0  41 82 00 20 */	beq lbl_80325BD0
/* 80325BB4  80 18 00 58 */	lwz r0, 0x58(r24)
/* 80325BB8  28 00 00 00 */	cmplwi r0, 0
/* 80325BBC  41 82 00 08 */	beq lbl_80325BC4
/* 80325BC0  90 1D 00 04 */	stw r0, 4(r29)
lbl_80325BC4:
/* 80325BC4  93 B8 00 58 */	stw r29, 0x58(r24)
/* 80325BC8  93 1D 00 0C */	stw r24, 0xc(r29)
/* 80325BCC  4B FF FE FC */	b lbl_80325AC8
lbl_80325BD0:
/* 80325BD0  28 1C 00 00 */	cmplwi r28, 0
/* 80325BD4  41 82 FE F4 */	beq lbl_80325AC8
/* 80325BD8  80 78 00 58 */	lwz r3, 0x58(r24)
/* 80325BDC  93 83 00 08 */	stw r28, 8(r3)
/* 80325BE0  90 7C 00 04 */	stw r3, 4(r28)
/* 80325BE4  4B FF FE E4 */	b lbl_80325AC8
lbl_80325BE8:
/* 80325BE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80325BEC  48 03 C6 25 */	bl _restgpr_23
/* 80325BF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80325BF4  7C 08 03 A6 */	mtlr r0
/* 80325BF8  38 21 00 30 */	addi r1, r1, 0x30
/* 80325BFC  4E 80 00 20 */	blr 
