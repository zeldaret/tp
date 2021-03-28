lbl_8014C500:
/* 8014C500  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014C504  7C 08 02 A6 */	mflr r0
/* 8014C508  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014C50C  39 61 00 30 */	addi r11, r1, 0x30
/* 8014C510  48 21 5C BD */	bl _savegpr_25
/* 8014C514  7C 79 1B 78 */	mr r25, r3
/* 8014C518  7C BA 2B 78 */	mr r26, r5
/* 8014C51C  7C DB 33 78 */	mr r27, r6
/* 8014C520  3B C0 00 00 */	li r30, 0
/* 8014C524  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8014C528  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8014C52C  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 8014C530  4B ED 7E 55 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8014C534  7C 7F 1B 78 */	mr r31, r3
/* 8014C538  81 83 00 00 */	lwz r12, 0(r3)
/* 8014C53C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8014C540  7D 89 03 A6 */	mtctr r12
/* 8014C544  4E 80 04 21 */	bctrl 
/* 8014C548  83 A3 00 04 */	lwz r29, 4(r3)
/* 8014C54C  3B 80 00 00 */	li r28, 0
/* 8014C550  48 00 00 54 */	b lbl_8014C5A4
lbl_8014C554:
/* 8014C554  A8 1D 00 1C */	lha r0, 0x1c(r29)
/* 8014C558  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8014C55C  7C 19 00 00 */	cmpw r25, r0
/* 8014C560  40 82 00 3C */	bne lbl_8014C59C
/* 8014C564  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8014C568  D0 1A 00 00 */	stfs f0, 0(r26)
/* 8014C56C  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8014C570  D0 1A 00 04 */	stfs f0, 4(r26)
/* 8014C574  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8014C578  D0 1A 00 08 */	stfs f0, 8(r26)
/* 8014C57C  A8 1D 00 18 */	lha r0, 0x18(r29)
/* 8014C580  B0 1B 00 00 */	sth r0, 0(r27)
/* 8014C584  A8 1D 00 1A */	lha r0, 0x1a(r29)
/* 8014C588  B0 1B 00 02 */	sth r0, 2(r27)
/* 8014C58C  A8 1D 00 1C */	lha r0, 0x1c(r29)
/* 8014C590  B0 1B 00 04 */	sth r0, 4(r27)
/* 8014C594  3B C0 00 01 */	li r30, 1
/* 8014C598  48 00 00 2C */	b lbl_8014C5C4
lbl_8014C59C:
/* 8014C59C  3B BD 00 20 */	addi r29, r29, 0x20
/* 8014C5A0  3B 9C 00 01 */	addi r28, r28, 1
lbl_8014C5A4:
/* 8014C5A4  7F E3 FB 78 */	mr r3, r31
/* 8014C5A8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8014C5AC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8014C5B0  7D 89 03 A6 */	mtctr r12
/* 8014C5B4  4E 80 04 21 */	bctrl 
/* 8014C5B8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8014C5BC  7C 1C 00 00 */	cmpw r28, r0
/* 8014C5C0  41 80 FF 94 */	blt lbl_8014C554
lbl_8014C5C4:
/* 8014C5C4  7F C3 F3 78 */	mr r3, r30
/* 8014C5C8  39 61 00 30 */	addi r11, r1, 0x30
/* 8014C5CC  48 21 5C 4D */	bl _restgpr_25
/* 8014C5D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014C5D4  7C 08 03 A6 */	mtlr r0
/* 8014C5D8  38 21 00 30 */	addi r1, r1, 0x30
/* 8014C5DC  4E 80 00 20 */	blr 
