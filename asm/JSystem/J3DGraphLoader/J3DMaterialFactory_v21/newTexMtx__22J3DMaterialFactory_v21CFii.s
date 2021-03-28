lbl_80333AA8:
/* 80333AA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80333AAC  7C 08 02 A6 */	mflr r0
/* 80333AB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80333AB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80333AB8  48 02 E7 25 */	bl _savegpr_29
/* 80333ABC  7C 7D 1B 78 */	mr r29, r3
/* 80333AC0  38 60 00 00 */	li r3, 0
/* 80333AC4  80 FD 00 04 */	lwz r7, 4(r29)
/* 80333AC8  80 DD 00 08 */	lwz r6, 8(r29)
/* 80333ACC  54 80 08 3C */	slwi r0, r4, 1
/* 80333AD0  7C 06 02 2E */	lhzx r0, r6, r0
/* 80333AD4  1C 00 01 38 */	mulli r0, r0, 0x138
/* 80333AD8  7C 87 02 14 */	add r4, r7, r0
/* 80333ADC  54 A0 08 3C */	slwi r0, r5, 1
/* 80333AE0  7F C4 02 14 */	add r30, r4, r0
/* 80333AE4  A0 1E 00 34 */	lhz r0, 0x34(r30)
/* 80333AE8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80333AEC  41 82 00 2C */	beq lbl_80333B18
/* 80333AF0  38 60 00 94 */	li r3, 0x94
/* 80333AF4  4B F9 B1 59 */	bl __nw__FUl
/* 80333AF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80333AFC  41 82 00 18 */	beq lbl_80333B14
/* 80333B00  80 9D 00 24 */	lwz r4, 0x24(r29)
/* 80333B04  A0 1E 00 34 */	lhz r0, 0x34(r30)
/* 80333B08  1C 00 00 64 */	mulli r0, r0, 0x64
/* 80333B0C  7C 84 02 14 */	add r4, r4, r0
/* 80333B10  4B FF 1C 09 */	bl __as__13J3DTexMtxInfoFRC13J3DTexMtxInfo
lbl_80333B14:
/* 80333B14  7F E3 FB 78 */	mr r3, r31
lbl_80333B18:
/* 80333B18  39 61 00 20 */	addi r11, r1, 0x20
/* 80333B1C  48 02 E7 0D */	bl _restgpr_29
/* 80333B20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80333B24  7C 08 03 A6 */	mtlr r0
/* 80333B28  38 21 00 20 */	addi r1, r1, 0x20
/* 80333B2C  4E 80 00 20 */	blr 
