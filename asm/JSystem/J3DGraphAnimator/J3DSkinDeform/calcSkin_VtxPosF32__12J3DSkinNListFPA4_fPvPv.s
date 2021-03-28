lbl_8032C85C:
/* 8032C85C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032C860  7C 08 02 A6 */	mflr r0
/* 8032C864  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032C868  39 61 00 30 */	addi r11, r1, 0x30
/* 8032C86C  48 03 59 5D */	bl _savegpr_24
/* 8032C870  7C 78 1B 78 */	mr r24, r3
/* 8032C874  7C 99 23 78 */	mr r25, r4
/* 8032C878  7C BA 2B 78 */	mr r26, r5
/* 8032C87C  7C DB 33 78 */	mr r27, r6
/* 8032C880  A3 A3 00 10 */	lhz r29, 0x10(r3)
/* 8032C884  3B 80 00 00 */	li r28, 0
/* 8032C888  3B E0 00 00 */	li r31, 0
/* 8032C88C  3B C0 00 00 */	li r30, 0
/* 8032C890  48 00 00 34 */	b lbl_8032C8C4
lbl_8032C894:
/* 8032C894  80 78 00 00 */	lwz r3, 0(r24)
/* 8032C898  7C 03 F2 2E */	lhzx r0, r3, r30
/* 8032C89C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8032C8A0  7F 23 CB 78 */	mr r3, r25
/* 8032C8A4  80 98 00 08 */	lwz r4, 8(r24)
/* 8032C8A8  7C 24 FC 2E */	lfsx f1, r4, r31
/* 8032C8AC  7C 9A 02 14 */	add r4, r26, r0
/* 8032C8B0  7C BB 02 14 */	add r5, r27, r0
/* 8032C8B4  4B FF FE 51 */	bl J3DPSWeightMTXMultVec__FPA4_ffP3VecP3Vec
/* 8032C8B8  3B 9C 00 01 */	addi r28, r28, 1
/* 8032C8BC  3B FF 00 04 */	addi r31, r31, 4
/* 8032C8C0  3B DE 00 02 */	addi r30, r30, 2
lbl_8032C8C4:
/* 8032C8C4  7C 1C E8 00 */	cmpw r28, r29
/* 8032C8C8  41 80 FF CC */	blt lbl_8032C894
/* 8032C8CC  39 61 00 30 */	addi r11, r1, 0x30
/* 8032C8D0  48 03 59 45 */	bl _restgpr_24
/* 8032C8D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032C8D8  7C 08 03 A6 */	mtlr r0
/* 8032C8DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8032C8E0  4E 80 00 20 */	blr 
