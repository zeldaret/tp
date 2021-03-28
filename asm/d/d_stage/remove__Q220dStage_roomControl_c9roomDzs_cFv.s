lbl_80024ABC:
/* 80024ABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024AC0  7C 08 02 A6 */	mflr r0
/* 80024AC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80024AC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80024ACC  48 33 D7 0D */	bl _savegpr_28
/* 80024AD0  7C 7C 1B 78 */	mr r28, r3
/* 80024AD4  88 03 00 00 */	lbz r0, 0(r3)
/* 80024AD8  28 00 00 00 */	cmplwi r0, 0
/* 80024ADC  41 82 00 50 */	beq lbl_80024B2C
/* 80024AE0  83 DC 00 04 */	lwz r30, 4(r28)
/* 80024AE4  3B A0 00 00 */	li r29, 0
/* 80024AE8  48 00 00 24 */	b lbl_80024B0C
lbl_80024AEC:
/* 80024AEC  83 FE 00 00 */	lwz r31, 0(r30)
/* 80024AF0  28 1F 00 00 */	cmplwi r31, 0
/* 80024AF4  41 82 00 10 */	beq lbl_80024B04
/* 80024AF8  4B FE A2 F5 */	bl mDoExt_getArchiveHeap__Fv
/* 80024AFC  7F E4 FB 78 */	mr r4, r31
/* 80024B00  48 2A 9A 49 */	bl free__7JKRHeapFPv
lbl_80024B04:
/* 80024B04  3B DE 00 04 */	addi r30, r30, 4
/* 80024B08  3B BD 00 01 */	addi r29, r29, 1
lbl_80024B0C:
/* 80024B0C  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 80024B10  88 1C 00 00 */	lbz r0, 0(r28)
/* 80024B14  7C 03 00 40 */	cmplw r3, r0
/* 80024B18  41 80 FF D4 */	blt lbl_80024AEC
/* 80024B1C  80 7C 00 04 */	lwz r3, 4(r28)
/* 80024B20  48 2A A2 41 */	bl __dla__FPv
/* 80024B24  38 00 00 00 */	li r0, 0
/* 80024B28  98 1C 00 00 */	stb r0, 0(r28)
lbl_80024B2C:
/* 80024B2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80024B30  48 33 D6 F5 */	bl _restgpr_28
/* 80024B34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80024B38  7C 08 03 A6 */	mtlr r0
/* 80024B3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80024B40  4E 80 00 20 */	blr 
