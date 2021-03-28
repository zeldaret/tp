lbl_80075AD8:
/* 80075AD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80075ADC  7C 08 02 A6 */	mflr r0
/* 80075AE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80075AE4  39 61 00 30 */	addi r11, r1, 0x30
/* 80075AE8  48 2E C6 E5 */	bl _savegpr_25
/* 80075AEC  7C 79 1B 78 */	mr r25, r3
/* 80075AF0  7C 9A 23 78 */	mr r26, r4
/* 80075AF4  7C BB 2B 78 */	mr r27, r5
/* 80075AF8  7C DC 33 78 */	mr r28, r6
/* 80075AFC  7C FD 3B 78 */	mr r29, r7
/* 80075B00  7D 1E 43 78 */	mr r30, r8
/* 80075B04  7D 3F 4B 78 */	mr r31, r9
/* 80075B08  4B FF FF 1D */	bl dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
/* 80075B0C  7F 23 CB 78 */	mr r3, r25
/* 80075B10  7F 44 D3 78 */	mr r4, r26
/* 80075B14  7F 65 DB 78 */	mr r5, r27
/* 80075B18  7F 86 E3 78 */	mr r6, r28
/* 80075B1C  7F A7 EB 78 */	mr r7, r29
/* 80075B20  7F C8 F3 78 */	mr r8, r30
/* 80075B24  7F E9 FB 78 */	mr r9, r31
/* 80075B28  4B FF FF 7D */	bl dBgS_MoveBGProc_RotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
/* 80075B2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80075B30  48 2E C6 E9 */	bl _restgpr_25
/* 80075B34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80075B38  7C 08 03 A6 */	mtlr r0
/* 80075B3C  38 21 00 30 */	addi r1, r1, 0x30
/* 80075B40  4E 80 00 20 */	blr 
