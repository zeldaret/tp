lbl_80016AB0:
/* 80016AB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80016AB4  7C 08 02 A6 */	mflr r0
/* 80016AB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80016ABC  39 61 00 20 */	addi r11, r1, 0x20
/* 80016AC0  48 34 B7 15 */	bl _savegpr_27
/* 80016AC4  7C 7B 1B 78 */	mr r27, r3
/* 80016AC8  7C 9C 23 78 */	mr r28, r4
/* 80016ACC  7C BD 2B 78 */	mr r29, r5
/* 80016AD0  7C DE 33 78 */	mr r30, r6
/* 80016AD4  3B E0 00 00 */	li r31, 0
/* 80016AD8  80 03 1F C8 */	lwz r0, 0x1fc8(r3)
/* 80016ADC  2C 00 00 00 */	cmpwi r0, 0
/* 80016AE0  40 82 00 0C */	bne lbl_80016AEC
/* 80016AE4  38 60 00 00 */	li r3, 0
/* 80016AE8  48 00 00 58 */	b lbl_80016B40
lbl_80016AEC:
/* 80016AEC  38 7B 1F CC */	addi r3, r27, 0x1fcc
/* 80016AF0  48 32 87 65 */	bl OSTryLockMutex
/* 80016AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80016AF8  41 82 00 44 */	beq lbl_80016B3C
/* 80016AFC  80 1B 1F C4 */	lwz r0, 0x1fc4(r27)
/* 80016B00  2C 00 00 03 */	cmpwi r0, 3
/* 80016B04  40 82 00 24 */	bne lbl_80016B28
/* 80016B08  7F 83 E3 78 */	mr r3, r28
/* 80016B0C  7C 9B F2 14 */	add r4, r27, r30
/* 80016B10  7F A5 EB 78 */	mr r5, r29
/* 80016B14  4B FE CA 2D */	bl memcpy
/* 80016B18  38 00 00 01 */	li r0, 1
/* 80016B1C  90 1B 1F C4 */	stw r0, 0x1fc4(r27)
/* 80016B20  3B E0 00 01 */	li r31, 1
/* 80016B24  48 00 00 10 */	b lbl_80016B34
lbl_80016B28:
/* 80016B28  38 00 00 02 */	li r0, 2
/* 80016B2C  90 1B 1F C4 */	stw r0, 0x1fc4(r27)
/* 80016B30  3B E0 00 02 */	li r31, 2
lbl_80016B34:
/* 80016B34  38 7B 1F CC */	addi r3, r27, 0x1fcc
/* 80016B38  48 32 85 E5 */	bl OSUnlockMutex
lbl_80016B3C:
/* 80016B3C  7F E3 FB 78 */	mr r3, r31
lbl_80016B40:
/* 80016B40  39 61 00 20 */	addi r11, r1, 0x20
/* 80016B44  48 34 B6 DD */	bl _restgpr_27
/* 80016B48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80016B4C  7C 08 03 A6 */	mtlr r0
/* 80016B50  38 21 00 20 */	addi r1, r1, 0x20
/* 80016B54  4E 80 00 20 */	blr 
