lbl_80D43968:
/* 80D43968  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4396C  7C 08 02 A6 */	mflr r0
/* 80D43970  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D43974  39 61 00 30 */	addi r11, r1, 0x30
/* 80D43978  4B 61 E8 55 */	bl _savegpr_25
/* 80D4397C  7C 79 1B 78 */	mr r25, r3
/* 80D43980  7C 9A 23 78 */	mr r26, r4
/* 80D43984  7C BB 2B 78 */	mr r27, r5
/* 80D43988  7C DC 33 78 */	mr r28, r6
/* 80D4398C  7C FD 3B 78 */	mr r29, r7
/* 80D43990  3B F9 00 04 */	addi r31, r25, 4
/* 80D43994  3B C0 00 00 */	li r30, 0
lbl_80D43998:
/* 80D43998  7F E3 FB 78 */	mr r3, r31
/* 80D4399C  7F 44 D3 78 */	mr r4, r26
/* 80D439A0  7F 65 DB 78 */	mr r5, r27
/* 80D439A4  7F 86 E3 78 */	mr r6, r28
/* 80D439A8  7F A7 EB 78 */	mr r7, r29
/* 80D439AC  7F C8 07 74 */	extsb r8, r30
/* 80D439B0  4B FF FA CD */	bl create__16_ZraMark_Hahen_cFRC4cXyzScScScSc
/* 80D439B4  2C 03 00 00 */	cmpwi r3, 0
/* 80D439B8  40 82 00 0C */	bne lbl_80D439C4
/* 80D439BC  38 60 00 00 */	li r3, 0
/* 80D439C0  48 00 00 20 */	b lbl_80D439E0
lbl_80D439C4:
/* 80D439C4  3B DE 00 01 */	addi r30, r30, 1
/* 80D439C8  2C 1E 00 0E */	cmpwi r30, 0xe
/* 80D439CC  3B FF 03 EC */	addi r31, r31, 0x3ec
/* 80D439D0  41 80 FF C8 */	blt lbl_80D43998
/* 80D439D4  38 00 00 C8 */	li r0, 0xc8
/* 80D439D8  B0 19 00 00 */	sth r0, 0(r25)
/* 80D439DC  38 60 00 01 */	li r3, 1
lbl_80D439E0:
/* 80D439E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D439E4  4B 61 E8 35 */	bl _restgpr_25
/* 80D439E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D439EC  7C 08 03 A6 */	mtlr r0
/* 80D439F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80D439F4  4E 80 00 20 */	blr 
