lbl_808748F4:
/* 808748F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 808748F8  7C 08 02 A6 */	mflr r0
/* 808748FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80874900  39 61 00 20 */	addi r11, r1, 0x20
/* 80874904  4B AE D8 D1 */	bl _savegpr_27
/* 80874908  3C 60 80 88 */	lis r3, lit_1109@ha /* 0x808795A0@ha */
/* 8087490C  3B E3 95 A0 */	addi r31, r3, lit_1109@l /* 0x808795A0@l */
/* 80874910  38 60 00 03 */	li r3, 3
/* 80874914  4B AC 6F D1 */	bl LCQueueWait
/* 80874918  3B 80 00 00 */	li r28, 0
/* 8087491C  3B DF 06 0C */	addi r30, r31, 0x60c
/* 80874920  3B BF 05 F4 */	addi r29, r31, 0x5f4
/* 80874924  48 00 01 80 */	b lbl_80874AA4
lbl_80874928:
/* 80874928  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 8087492C  48 00 04 61 */	bl __THPHuffDecodeDCTCompY
/* 80874930  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874934  80 9E 00 04 */	lwz r4, 4(r30)
/* 80874938  48 00 04 55 */	bl __THPHuffDecodeDCTCompY
/* 8087493C  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874940  80 9E 00 08 */	lwz r4, 8(r30)
/* 80874944  48 00 04 49 */	bl __THPHuffDecodeDCTCompY
/* 80874948  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 8087494C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80874950  48 00 04 3D */	bl __THPHuffDecodeDCTCompY
/* 80874954  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874958  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8087495C  48 00 0A B5 */	bl __THPHuffDecodeDCTCompU
/* 80874960  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874964  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80874968  48 00 0C 91 */	bl __THPHuffDecodeDCTCompV
/* 8087496C  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874970  80 1F 05 F4 */	lwz r0, 0x5f4(r31)
/* 80874974  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80874978  38 00 02 80 */	li r0, 0x280
/* 8087497C  90 1F 05 E0 */	stw r0, 0x5e0(r31)
/* 80874980  88 03 06 80 */	lbz r0, 0x680(r3)
/* 80874984  54 00 40 2E */	slwi r0, r0, 8
/* 80874988  7C 03 02 14 */	add r0, r3, r0
/* 8087498C  90 1F 05 E4 */	stw r0, 0x5e4(r31)
/* 80874990  57 7B 20 36 */	slwi r27, r27, 4
/* 80874994  80 7F 06 0C */	lwz r3, 0x60c(r31)
/* 80874998  7F 64 DB 78 */	mr r4, r27
/* 8087499C  4B FF FA C1 */	bl __THPInverseDCTNoYPos
/* 808749A0  80 7E 00 04 */	lwz r3, 4(r30)
/* 808749A4  38 9B 00 08 */	addi r4, r27, 8
/* 808749A8  4B FF FA B5 */	bl __THPInverseDCTNoYPos
/* 808749AC  80 7E 00 08 */	lwz r3, 8(r30)
/* 808749B0  7F 64 DB 78 */	mr r4, r27
/* 808749B4  4B FF F6 09 */	bl __THPInverseDCTY8
/* 808749B8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 808749BC  38 9B 00 08 */	addi r4, r27, 8
/* 808749C0  4B FF F5 FD */	bl __THPInverseDCTY8
/* 808749C4  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 808749C8  80 1D 00 04 */	lwz r0, 4(r29)
/* 808749CC  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 808749D0  38 00 01 40 */	li r0, 0x140
/* 808749D4  90 1F 05 E0 */	stw r0, 0x5e0(r31)
/* 808749D8  88 03 06 86 */	lbz r0, 0x686(r3)
/* 808749DC  54 00 40 2E */	slwi r0, r0, 8
/* 808749E0  7C 03 02 14 */	add r0, r3, r0
/* 808749E4  90 1F 05 E4 */	stw r0, 0x5e4(r31)
/* 808749E8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 808749EC  57 7B F8 7E */	srwi r27, r27, 1
/* 808749F0  7F 64 DB 78 */	mr r4, r27
/* 808749F4  4B FF FA 69 */	bl __THPInverseDCTNoYPos
/* 808749F8  80 1D 00 08 */	lwz r0, 8(r29)
/* 808749FC  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80874A00  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874A04  88 03 06 8C */	lbz r0, 0x68c(r3)
/* 80874A08  54 00 40 2E */	slwi r0, r0, 8
/* 80874A0C  7C 03 02 14 */	add r0, r3, r0
/* 80874A10  90 1F 05 E4 */	stw r0, 0x5e4(r31)
/* 80874A14  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80874A18  7F 64 DB 78 */	mr r4, r27
/* 80874A1C  4B FF FA 41 */	bl __THPInverseDCTNoYPos
/* 80874A20  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80874A24  88 04 06 A9 */	lbz r0, 0x6a9(r4)
/* 80874A28  28 00 00 00 */	cmplwi r0, 0
/* 80874A2C  41 82 00 74 */	beq lbl_80874AA0
/* 80874A30  A0 64 06 AC */	lhz r3, 0x6ac(r4)
/* 80874A34  38 03 FF FF */	addi r0, r3, -1
/* 80874A38  B0 04 06 AC */	sth r0, 0x6ac(r4)
/* 80874A3C  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874A40  A0 03 06 AC */	lhz r0, 0x6ac(r3)
/* 80874A44  28 00 00 00 */	cmplwi r0, 0
/* 80874A48  40 82 00 58 */	bne lbl_80874AA0
/* 80874A4C  A0 03 06 AA */	lhz r0, 0x6aa(r3)
/* 80874A50  B0 03 06 AC */	sth r0, 0x6ac(r3)
/* 80874A54  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80874A58  80 64 06 A4 */	lwz r3, 0x6a4(r4)
/* 80874A5C  38 03 00 06 */	addi r0, r3, 6
/* 80874A60  54 03 00 38 */	rlwinm r3, r0, 0, 0, 0x1c
/* 80874A64  38 03 00 01 */	addi r0, r3, 1
/* 80874A68  90 04 06 A4 */	stw r0, 0x6a4(r4)
/* 80874A6C  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874A70  80 03 06 A4 */	lwz r0, 0x6a4(r3)
/* 80874A74  28 00 00 20 */	cmplwi r0, 0x20
/* 80874A78  40 81 00 0C */	ble lbl_80874A84
/* 80874A7C  38 00 00 21 */	li r0, 0x21
/* 80874A80  90 03 06 A4 */	stw r0, 0x6a4(r3)
lbl_80874A84:
/* 80874A84  38 00 00 00 */	li r0, 0
/* 80874A88  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874A8C  B0 03 06 84 */	sth r0, 0x684(r3)
/* 80874A90  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874A94  B0 03 06 8A */	sth r0, 0x68a(r3)
/* 80874A98  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874A9C  B0 03 06 90 */	sth r0, 0x690(r3)
lbl_80874AA0:
/* 80874AA0  3B 9C 00 01 */	addi r28, r28, 1
lbl_80874AA4:
/* 80874AA4  57 9B 06 3E */	clrlwi r27, r28, 0x18
/* 80874AA8  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874AAC  A0 03 06 96 */	lhz r0, 0x696(r3)
/* 80874AB0  7C 1B 00 00 */	cmpw r27, r0
/* 80874AB4  41 80 FE 74 */	blt lbl_80874928
/* 80874AB8  80 63 06 B0 */	lwz r3, 0x6b0(r3)
/* 80874ABC  80 9F 05 F4 */	lwz r4, 0x5f4(r31)
/* 80874AC0  38 A0 28 00 */	li r5, 0x2800
/* 80874AC4  4B AC 6D 75 */	bl LCStoreData
/* 80874AC8  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874ACC  80 63 06 B4 */	lwz r3, 0x6b4(r3)
/* 80874AD0  80 9D 00 04 */	lwz r4, 4(r29)
/* 80874AD4  38 A0 0A 00 */	li r5, 0xa00
/* 80874AD8  4B AC 6D 61 */	bl LCStoreData
/* 80874ADC  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874AE0  80 63 06 B8 */	lwz r3, 0x6b8(r3)
/* 80874AE4  80 9D 00 08 */	lwz r4, 8(r29)
/* 80874AE8  38 A0 0A 00 */	li r5, 0xa00
/* 80874AEC  4B AC 6D 4D */	bl LCStoreData
/* 80874AF0  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80874AF4  80 64 06 B0 */	lwz r3, 0x6b0(r4)
/* 80874AF8  38 03 28 00 */	addi r0, r3, 0x2800
/* 80874AFC  90 04 06 B0 */	stw r0, 0x6b0(r4)
/* 80874B00  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80874B04  80 64 06 B4 */	lwz r3, 0x6b4(r4)
/* 80874B08  38 03 0A 00 */	addi r0, r3, 0xa00
/* 80874B0C  90 04 06 B4 */	stw r0, 0x6b4(r4)
/* 80874B10  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80874B14  80 64 06 B8 */	lwz r3, 0x6b8(r4)
/* 80874B18  38 03 0A 00 */	addi r0, r3, 0xa00
/* 80874B1C  90 04 06 B8 */	stw r0, 0x6b8(r4)
/* 80874B20  39 61 00 20 */	addi r11, r1, 0x20
/* 80874B24  4B AE D6 FD */	bl _restgpr_27
/* 80874B28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80874B2C  7C 08 03 A6 */	mtlr r0
/* 80874B30  38 21 00 20 */	addi r1, r1, 0x20
/* 80874B34  4E 80 00 20 */	blr 
