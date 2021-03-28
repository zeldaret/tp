lbl_80275A94:
/* 80275A94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80275A98  7C 08 02 A6 */	mflr r0
/* 80275A9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80275AA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80275AA4  48 0E C7 35 */	bl _savegpr_28
/* 80275AA8  7C 7C 1B 78 */	mr r28, r3
/* 80275AAC  7C 9D 23 78 */	mr r29, r4
/* 80275AB0  7C BE 2B 78 */	mr r30, r5
/* 80275AB4  93 C4 00 00 */	stw r30, 0(r4)
/* 80275AB8  93 84 00 04 */	stw r28, 4(r4)
/* 80275ABC  38 00 00 00 */	li r0, 0
/* 80275AC0  98 04 02 16 */	stb r0, 0x216(r4)
/* 80275AC4  48 00 0F 49 */	bl calcWorkData_d__11JPAResourceFP18JPAEmitterWorkData
/* 80275AC8  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 80275ACC  7F A4 EB 78 */	mr r4, r29
/* 80275AD0  48 00 4D 19 */	bl setGX__12JPABaseShapeCFP18JPAEmitterWorkData
/* 80275AD4  3B E0 00 01 */	li r31, 1
/* 80275AD8  48 00 00 78 */	b lbl_80275B50
lbl_80275ADC:
/* 80275ADC  88 7D 02 16 */	lbz r3, 0x216(r29)
/* 80275AE0  38 03 00 01 */	addi r0, r3, 1
/* 80275AE4  98 1D 02 16 */	stb r0, 0x216(r29)
/* 80275AE8  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 80275AEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80275AF0  80 03 00 08 */	lwz r0, 8(r3)
/* 80275AF4  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80275AF8  41 82 00 1C */	beq lbl_80275B14
/* 80275AFC  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 80275B00  28 00 00 00 */	cmplwi r0, 0
/* 80275B04  41 82 00 10 */	beq lbl_80275B14
/* 80275B08  7F 83 E3 78 */	mr r3, r28
/* 80275B0C  7F A4 EB 78 */	mr r4, r29
/* 80275B10  48 00 03 A1 */	bl drawC__11JPAResourceFP18JPAEmitterWorkData
lbl_80275B14:
/* 80275B14  7F 83 E3 78 */	mr r3, r28
/* 80275B18  7F A4 EB 78 */	mr r4, r29
/* 80275B1C  48 00 00 59 */	bl drawP__11JPAResourceFP18JPAEmitterWorkData
/* 80275B20  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 80275B24  80 63 00 00 */	lwz r3, 0(r3)
/* 80275B28  80 03 00 08 */	lwz r0, 8(r3)
/* 80275B2C  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80275B30  40 82 00 1C */	bne lbl_80275B4C
/* 80275B34  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 80275B38  28 00 00 00 */	cmplwi r0, 0
/* 80275B3C  41 82 00 10 */	beq lbl_80275B4C
/* 80275B40  7F 83 E3 78 */	mr r3, r28
/* 80275B44  7F A4 EB 78 */	mr r4, r29
/* 80275B48  48 00 03 69 */	bl drawC__11JPAResourceFP18JPAEmitterWorkData
lbl_80275B4C:
/* 80275B4C  3B FF 00 01 */	addi r31, r31, 1
lbl_80275B50:
/* 80275B50  88 1E 01 10 */	lbz r0, 0x110(r30)
/* 80275B54  7C 1F 00 00 */	cmpw r31, r0
/* 80275B58  40 81 FF 84 */	ble lbl_80275ADC
/* 80275B5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80275B60  48 0E C6 C5 */	bl _restgpr_28
/* 80275B64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80275B68  7C 08 03 A6 */	mtlr r0
/* 80275B6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80275B70  4E 80 00 20 */	blr 
