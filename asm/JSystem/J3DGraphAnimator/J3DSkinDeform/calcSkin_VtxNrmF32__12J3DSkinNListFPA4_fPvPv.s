lbl_8032C8E4:
/* 8032C8E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032C8E8  7C 08 02 A6 */	mflr r0
/* 8032C8EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032C8F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8032C8F4  48 03 58 D5 */	bl _savegpr_24
/* 8032C8F8  7C 78 1B 78 */	mr r24, r3
/* 8032C8FC  7C 99 23 78 */	mr r25, r4
/* 8032C900  7C BA 2B 78 */	mr r26, r5
/* 8032C904  7C DB 33 78 */	mr r27, r6
/* 8032C908  A3 A3 00 12 */	lhz r29, 0x12(r3)
/* 8032C90C  3B 80 00 00 */	li r28, 0
/* 8032C910  3B E0 00 00 */	li r31, 0
/* 8032C914  3B C0 00 00 */	li r30, 0
/* 8032C918  48 00 00 34 */	b lbl_8032C94C
lbl_8032C91C:
/* 8032C91C  80 78 00 04 */	lwz r3, 4(r24)
/* 8032C920  7C 03 F2 2E */	lhzx r0, r3, r30
/* 8032C924  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8032C928  7F 23 CB 78 */	mr r3, r25
/* 8032C92C  80 98 00 0C */	lwz r4, 0xc(r24)
/* 8032C930  7C 24 FC 2E */	lfsx f1, r4, r31
/* 8032C934  7C 9A 02 14 */	add r4, r26, r0
/* 8032C938  7C BB 02 14 */	add r5, r27, r0
/* 8032C93C  4B FF FE 81 */	bl J3DPSWeightMTXMultVecSR__FPA4_ffP3VecP3Vec
/* 8032C940  3B 9C 00 01 */	addi r28, r28, 1
/* 8032C944  3B FF 00 04 */	addi r31, r31, 4
/* 8032C948  3B DE 00 02 */	addi r30, r30, 2
lbl_8032C94C:
/* 8032C94C  7C 1C E8 00 */	cmpw r28, r29
/* 8032C950  41 80 FF CC */	blt lbl_8032C91C
/* 8032C954  39 61 00 30 */	addi r11, r1, 0x30
/* 8032C958  48 03 58 BD */	bl _restgpr_24
/* 8032C95C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032C960  7C 08 03 A6 */	mtlr r0
/* 8032C964  38 21 00 30 */	addi r1, r1, 0x30
/* 8032C968  4E 80 00 20 */	blr 
