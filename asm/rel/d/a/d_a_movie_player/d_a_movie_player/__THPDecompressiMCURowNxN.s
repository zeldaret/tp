lbl_80874B38:
/* 80874B38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80874B3C  7C 08 02 A6 */	mflr r0
/* 80874B40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80874B44  39 61 00 30 */	addi r11, r1, 0x30
/* 80874B48  4B AE D6 84 */	b _savegpr_25
/* 80874B4C  3C 60 80 88 */	lis r3, lit_1109@ha
/* 80874B50  3B E3 95 A0 */	addi r31, r3, lit_1109@l
/* 80874B54  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874B58  A3 43 06 92 */	lhz r26, 0x692(r3)
/* 80874B5C  38 60 00 03 */	li r3, 3
/* 80874B60  4B AC 6D 84 */	b LCQueueWait
/* 80874B64  3B 60 00 00 */	li r27, 0
/* 80874B68  3B DF 06 0C */	addi r30, r31, 0x60c
/* 80874B6C  3B 9F 05 F4 */	addi r28, r31, 0x5f4
/* 80874B70  57 5D F8 7E */	srwi r29, r26, 1
/* 80874B74  48 00 01 78 */	b lbl_80874CEC
lbl_80874B78:
/* 80874B78  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 80874B7C  48 00 02 11 */	bl __THPHuffDecodeDCTCompY
/* 80874B80  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874B84  80 9E 00 04 */	lwz r4, 4(r30)
/* 80874B88  48 00 02 05 */	bl __THPHuffDecodeDCTCompY
/* 80874B8C  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874B90  80 9E 00 08 */	lwz r4, 8(r30)
/* 80874B94  48 00 01 F9 */	bl __THPHuffDecodeDCTCompY
/* 80874B98  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874B9C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80874BA0  48 00 01 ED */	bl __THPHuffDecodeDCTCompY
/* 80874BA4  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874BA8  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80874BAC  48 00 08 65 */	bl __THPHuffDecodeDCTCompU
/* 80874BB0  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874BB4  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80874BB8  48 00 0A 41 */	bl __THPHuffDecodeDCTCompV
/* 80874BBC  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874BC0  80 1F 05 F4 */	lwz r0, 0x5f4(r31)
/* 80874BC4  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80874BC8  93 5F 05 E0 */	stw r26, 0x5e0(r31)
/* 80874BCC  88 03 06 80 */	lbz r0, 0x680(r3)
/* 80874BD0  54 00 40 2E */	slwi r0, r0, 8
/* 80874BD4  7C 03 02 14 */	add r0, r3, r0
/* 80874BD8  90 1F 05 E4 */	stw r0, 0x5e4(r31)
/* 80874BDC  57 39 20 36 */	slwi r25, r25, 4
/* 80874BE0  80 7F 06 0C */	lwz r3, 0x60c(r31)
/* 80874BE4  7F 24 CB 78 */	mr r4, r25
/* 80874BE8  4B FF F8 75 */	bl __THPInverseDCTNoYPos
/* 80874BEC  80 7E 00 04 */	lwz r3, 4(r30)
/* 80874BF0  38 99 00 08 */	addi r4, r25, 8
/* 80874BF4  4B FF F8 69 */	bl __THPInverseDCTNoYPos
/* 80874BF8  80 7E 00 08 */	lwz r3, 8(r30)
/* 80874BFC  7F 24 CB 78 */	mr r4, r25
/* 80874C00  4B FF F3 BD */	bl __THPInverseDCTY8
/* 80874C04  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80874C08  38 99 00 08 */	addi r4, r25, 8
/* 80874C0C  4B FF F3 B1 */	bl __THPInverseDCTY8
/* 80874C10  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874C14  80 1C 00 04 */	lwz r0, 4(r28)
/* 80874C18  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80874C1C  93 BF 05 E0 */	stw r29, 0x5e0(r31)
/* 80874C20  88 03 06 86 */	lbz r0, 0x686(r3)
/* 80874C24  54 00 40 2E */	slwi r0, r0, 8
/* 80874C28  7C 03 02 14 */	add r0, r3, r0
/* 80874C2C  90 1F 05 E4 */	stw r0, 0x5e4(r31)
/* 80874C30  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80874C34  57 39 F8 7E */	srwi r25, r25, 1
/* 80874C38  7F 24 CB 78 */	mr r4, r25
/* 80874C3C  4B FF F8 21 */	bl __THPInverseDCTNoYPos
/* 80874C40  80 1C 00 08 */	lwz r0, 8(r28)
/* 80874C44  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80874C48  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874C4C  88 03 06 8C */	lbz r0, 0x68c(r3)
/* 80874C50  54 00 40 2E */	slwi r0, r0, 8
/* 80874C54  7C 03 02 14 */	add r0, r3, r0
/* 80874C58  90 1F 05 E4 */	stw r0, 0x5e4(r31)
/* 80874C5C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80874C60  7F 24 CB 78 */	mr r4, r25
/* 80874C64  4B FF F7 F9 */	bl __THPInverseDCTNoYPos
/* 80874C68  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80874C6C  88 04 06 A9 */	lbz r0, 0x6a9(r4)
/* 80874C70  28 00 00 00 */	cmplwi r0, 0
/* 80874C74  41 82 00 74 */	beq lbl_80874CE8
/* 80874C78  A0 64 06 AC */	lhz r3, 0x6ac(r4)
/* 80874C7C  38 03 FF FF */	addi r0, r3, -1
/* 80874C80  B0 04 06 AC */	sth r0, 0x6ac(r4)
/* 80874C84  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874C88  A0 03 06 AC */	lhz r0, 0x6ac(r3)
/* 80874C8C  28 00 00 00 */	cmplwi r0, 0
/* 80874C90  40 82 00 58 */	bne lbl_80874CE8
/* 80874C94  A0 03 06 AA */	lhz r0, 0x6aa(r3)
/* 80874C98  B0 03 06 AC */	sth r0, 0x6ac(r3)
/* 80874C9C  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80874CA0  80 64 06 A4 */	lwz r3, 0x6a4(r4)
/* 80874CA4  38 03 00 06 */	addi r0, r3, 6
/* 80874CA8  54 03 00 38 */	rlwinm r3, r0, 0, 0, 0x1c
/* 80874CAC  38 03 00 01 */	addi r0, r3, 1
/* 80874CB0  90 04 06 A4 */	stw r0, 0x6a4(r4)
/* 80874CB4  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874CB8  80 03 06 A4 */	lwz r0, 0x6a4(r3)
/* 80874CBC  28 00 00 20 */	cmplwi r0, 0x20
/* 80874CC0  40 81 00 0C */	ble lbl_80874CCC
/* 80874CC4  38 00 00 21 */	li r0, 0x21
/* 80874CC8  90 03 06 A4 */	stw r0, 0x6a4(r3)
lbl_80874CCC:
/* 80874CCC  38 00 00 00 */	li r0, 0
/* 80874CD0  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874CD4  B0 03 06 84 */	sth r0, 0x684(r3)
/* 80874CD8  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874CDC  B0 03 06 8A */	sth r0, 0x68a(r3)
/* 80874CE0  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874CE4  B0 03 06 90 */	sth r0, 0x690(r3)
lbl_80874CE8:
/* 80874CE8  3B 7B 00 01 */	addi r27, r27, 1
lbl_80874CEC:
/* 80874CEC  57 79 06 3E */	clrlwi r25, r27, 0x18
/* 80874CF0  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874CF4  A0 03 06 96 */	lhz r0, 0x696(r3)
/* 80874CF8  7C 19 00 00 */	cmpw r25, r0
/* 80874CFC  41 80 FE 7C */	blt lbl_80874B78
/* 80874D00  80 63 06 B0 */	lwz r3, 0x6b0(r3)
/* 80874D04  80 9F 05 F4 */	lwz r4, 0x5f4(r31)
/* 80874D08  57 59 E1 3E */	srwi r25, r26, 4
/* 80874D0C  57 5A 20 2E */	rlwinm r26, r26, 4, 0, 0x17
/* 80874D10  7F 45 D3 78 */	mr r5, r26
/* 80874D14  4B AC 6B 24 */	b LCStoreData
/* 80874D18  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874D1C  80 63 06 B4 */	lwz r3, 0x6b4(r3)
/* 80874D20  80 9C 00 04 */	lwz r4, 4(r28)
/* 80874D24  57 39 30 32 */	slwi r25, r25, 6
/* 80874D28  7F 25 CB 78 */	mr r5, r25
/* 80874D2C  4B AC 6B 0C */	b LCStoreData
/* 80874D30  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874D34  80 63 06 B8 */	lwz r3, 0x6b8(r3)
/* 80874D38  80 9C 00 08 */	lwz r4, 8(r28)
/* 80874D3C  7F 25 CB 78 */	mr r5, r25
/* 80874D40  4B AC 6A F8 */	b LCStoreData
/* 80874D44  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874D48  80 03 06 B0 */	lwz r0, 0x6b0(r3)
/* 80874D4C  7C 00 D2 14 */	add r0, r0, r26
/* 80874D50  90 03 06 B0 */	stw r0, 0x6b0(r3)
/* 80874D54  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874D58  80 03 06 B4 */	lwz r0, 0x6b4(r3)
/* 80874D5C  7C 00 CA 14 */	add r0, r0, r25
/* 80874D60  90 03 06 B4 */	stw r0, 0x6b4(r3)
/* 80874D64  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80874D68  80 03 06 B8 */	lwz r0, 0x6b8(r3)
/* 80874D6C  7C 00 CA 14 */	add r0, r0, r25
/* 80874D70  90 03 06 B8 */	stw r0, 0x6b8(r3)
/* 80874D74  39 61 00 30 */	addi r11, r1, 0x30
/* 80874D78  4B AE D4 A0 */	b _restgpr_25
/* 80874D7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80874D80  7C 08 03 A6 */	mtlr r0
/* 80874D84  38 21 00 30 */	addi r1, r1, 0x30
/* 80874D88  4E 80 00 20 */	blr 
