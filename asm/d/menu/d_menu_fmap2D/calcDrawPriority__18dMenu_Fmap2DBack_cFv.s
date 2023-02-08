lbl_801D5AC4:
/* 801D5AC4  88 C3 12 27 */	lbz r6, 0x1227(r3)
/* 801D5AC8  38 E0 00 06 */	li r7, 6
/* 801D5ACC  39 00 00 07 */	li r8, 7
/* 801D5AD0  38 00 00 08 */	li r0, 8
/* 801D5AD4  7C 09 03 A6 */	mtctr r0
lbl_801D5AD8:
/* 801D5AD8  38 A8 12 30 */	addi r5, r8, 0x1230
/* 801D5ADC  7C 83 28 AE */	lbzx r4, r3, r5
/* 801D5AE0  28 04 00 FF */	cmplwi r4, 0xff
/* 801D5AE4  41 82 00 24 */	beq lbl_801D5B08
/* 801D5AE8  88 03 12 27 */	lbz r0, 0x1227(r3)
/* 801D5AEC  7C 04 00 40 */	cmplw r4, r0
/* 801D5AF0  40 82 00 10 */	bne lbl_801D5B00
/* 801D5AF4  7C 83 42 14 */	add r4, r3, r8
/* 801D5AF8  98 C4 12 30 */	stb r6, 0x1230(r4)
/* 801D5AFC  48 00 00 14 */	b lbl_801D5B10
lbl_801D5B00:
/* 801D5B00  7C C3 29 AE */	stbx r6, r3, r5
/* 801D5B04  7C 86 23 78 */	mr r6, r4
lbl_801D5B08:
/* 801D5B08  39 08 FF FF */	addi r8, r8, -1
/* 801D5B0C  42 00 FF CC */	bdnz lbl_801D5AD8
lbl_801D5B10:
/* 801D5B10  88 03 12 27 */	lbz r0, 0x1227(r3)
/* 801D5B14  28 00 00 06 */	cmplwi r0, 6
/* 801D5B18  41 82 00 44 */	beq lbl_801D5B5C
/* 801D5B1C  38 A0 00 07 */	li r5, 7
/* 801D5B20  38 00 00 08 */	li r0, 8
/* 801D5B24  7C 09 03 A6 */	mtctr r0
lbl_801D5B28:
/* 801D5B28  38 85 12 30 */	addi r4, r5, 0x1230
/* 801D5B2C  7C 03 20 AE */	lbzx r0, r3, r4
/* 801D5B30  28 00 00 FF */	cmplwi r0, 0xff
/* 801D5B34  41 82 00 20 */	beq lbl_801D5B54
/* 801D5B38  28 00 00 06 */	cmplwi r0, 6
/* 801D5B3C  40 82 00 10 */	bne lbl_801D5B4C
/* 801D5B40  7C 83 2A 14 */	add r4, r3, r5
/* 801D5B44  98 E4 12 30 */	stb r7, 0x1230(r4)
/* 801D5B48  48 00 00 14 */	b lbl_801D5B5C
lbl_801D5B4C:
/* 801D5B4C  7C E3 21 AE */	stbx r7, r3, r4
/* 801D5B50  7C 07 03 78 */	mr r7, r0
lbl_801D5B54:
/* 801D5B54  38 A5 FF FF */	addi r5, r5, -1
/* 801D5B58  42 00 FF D0 */	bdnz lbl_801D5B28
lbl_801D5B5C:
/* 801D5B5C  88 03 12 30 */	lbz r0, 0x1230(r3)
/* 801D5B60  28 00 00 07 */	cmplwi r0, 7
/* 801D5B64  4D 82 00 20 */	beqlr 
/* 801D5B68  7C 05 03 78 */	mr r5, r0
/* 801D5B6C  38 00 00 07 */	li r0, 7
/* 801D5B70  98 03 12 30 */	stb r0, 0x1230(r3)
/* 801D5B74  38 C0 00 01 */	li r6, 1
/* 801D5B78  38 00 00 07 */	li r0, 7
/* 801D5B7C  7C 09 03 A6 */	mtctr r0
lbl_801D5B80:
/* 801D5B80  38 86 12 30 */	addi r4, r6, 0x1230
/* 801D5B84  7C 03 20 AE */	lbzx r0, r3, r4
/* 801D5B88  28 00 00 FF */	cmplwi r0, 0xff
/* 801D5B8C  41 82 00 20 */	beq lbl_801D5BAC
/* 801D5B90  28 00 00 07 */	cmplwi r0, 7
/* 801D5B94  40 82 00 10 */	bne lbl_801D5BA4
/* 801D5B98  7C 63 32 14 */	add r3, r3, r6
/* 801D5B9C  98 A3 12 30 */	stb r5, 0x1230(r3)
/* 801D5BA0  4E 80 00 20 */	blr 
lbl_801D5BA4:
/* 801D5BA4  7C A3 21 AE */	stbx r5, r3, r4
/* 801D5BA8  7C 05 03 78 */	mr r5, r0
lbl_801D5BAC:
/* 801D5BAC  38 C6 00 01 */	addi r6, r6, 1
/* 801D5BB0  42 00 FF D0 */	bdnz lbl_801D5B80
/* 801D5BB4  4E 80 00 20 */	blr 
