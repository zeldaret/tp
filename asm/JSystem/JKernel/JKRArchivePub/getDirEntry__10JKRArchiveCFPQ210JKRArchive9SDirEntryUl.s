lbl_802D5AC0:
/* 802D5AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5AC4  7C 08 02 A6 */	mflr r0
/* 802D5AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5AD0  93 C1 00 08 */	stw r30, 8(r1)
/* 802D5AD4  7C 7E 1B 78 */	mr r30, r3
/* 802D5AD8  7C 9F 23 78 */	mr r31, r4
/* 802D5ADC  7C A4 2B 78 */	mr r4, r5
/* 802D5AE0  48 00 0B A5 */	bl findIdxResource__10JKRArchiveCFUl
/* 802D5AE4  28 03 00 00 */	cmplwi r3, 0
/* 802D5AE8  40 82 00 0C */	bne lbl_802D5AF4
/* 802D5AEC  38 60 00 00 */	li r3, 0
/* 802D5AF0  48 00 00 30 */	b lbl_802D5B20
lbl_802D5AF4:
/* 802D5AF4  80 03 00 04 */	lwz r0, 4(r3)
/* 802D5AF8  54 00 46 3E */	srwi r0, r0, 0x18
/* 802D5AFC  98 1F 00 00 */	stb r0, 0(r31)
/* 802D5B00  A0 03 00 00 */	lhz r0, 0(r3)
/* 802D5B04  B0 1F 00 02 */	sth r0, 2(r31)
/* 802D5B08  80 9E 00 54 */	lwz r4, 0x54(r30)
/* 802D5B0C  80 03 00 04 */	lwz r0, 4(r3)
/* 802D5B10  54 00 02 3E */	clrlwi r0, r0, 8
/* 802D5B14  7C 04 02 14 */	add r0, r4, r0
/* 802D5B18  90 1F 00 04 */	stw r0, 4(r31)
/* 802D5B1C  38 60 00 01 */	li r3, 1
lbl_802D5B20:
/* 802D5B20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5B24  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D5B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5B2C  7C 08 03 A6 */	mtlr r0
/* 802D5B30  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5B34  4E 80 00 20 */	blr 
