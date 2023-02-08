lbl_802E8958:
/* 802E8958  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E895C  7C 08 02 A6 */	mflr r0
/* 802E8960  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E8964  39 61 00 20 */	addi r11, r1, 0x20
/* 802E8968  48 07 98 6D */	bl _savegpr_27
/* 802E896C  7C 7C 1B 78 */	mr r28, r3
/* 802E8970  7C BD 2B 78 */	mr r29, r5
/* 802E8974  88 03 08 30 */	lbz r0, 0x830(r3)
/* 802E8978  28 00 00 00 */	cmplwi r0, 0
/* 802E897C  40 82 00 0C */	bne lbl_802E8988
/* 802E8980  38 60 FF FF */	li r3, -1
/* 802E8984  48 00 01 6C */	b lbl_802E8AF0
lbl_802E8988:
/* 802E8988  2C 1D 00 00 */	cmpwi r29, 0
/* 802E898C  40 82 00 0C */	bne lbl_802E8998
/* 802E8990  38 60 00 00 */	li r3, 0
/* 802E8994  48 00 01 5C */	b lbl_802E8AF0
lbl_802E8998:
/* 802E8998  2C 1D 00 01 */	cmpwi r29, 1
/* 802E899C  40 82 00 0C */	bne lbl_802E89A8
/* 802E89A0  38 60 00 01 */	li r3, 1
/* 802E89A4  48 00 01 4C */	b lbl_802E8AF0
lbl_802E89A8:
/* 802E89A8  28 04 00 00 */	cmplwi r4, 0
/* 802E89AC  40 82 00 0C */	bne lbl_802E89B8
/* 802E89B0  38 60 FF FF */	li r3, -1
/* 802E89B4  48 00 01 3C */	b lbl_802E8AF0
lbl_802E89B8:
/* 802E89B8  80 7C 08 2C */	lwz r3, 0x82c(r28)
/* 802E89BC  80 1C 08 28 */	lwz r0, 0x828(r28)
/* 802E89C0  7C 03 00 40 */	cmplw r3, r0
/* 802E89C4  41 80 00 0C */	blt lbl_802E89D0
/* 802E89C8  38 60 FF FF */	li r3, -1
/* 802E89CC  48 00 01 24 */	b lbl_802E8AF0
lbl_802E89D0:
/* 802E89D0  7C 9F 23 78 */	mr r31, r4
/* 802E89D4  3B C0 00 00 */	li r30, 0
/* 802E89D8  3B 7D FF FF */	addi r27, r29, -1
/* 802E89DC  48 00 00 E8 */	b lbl_802E8AC4
lbl_802E89E0:
/* 802E89E0  80 1C 08 24 */	lwz r0, 0x824(r28)
/* 802E89E4  28 00 00 00 */	cmplwi r0, 0
/* 802E89E8  40 82 00 1C */	bne lbl_802E8A04
/* 802E89EC  7F 83 E3 78 */	mr r3, r28
/* 802E89F0  4B FF FD 41 */	bl fetch32byte__13JUTDirectFileFv
/* 802E89F4  2C 03 00 00 */	cmpwi r3, 0
/* 802E89F8  40 80 00 0C */	bge lbl_802E8A04
/* 802E89FC  38 60 FF FF */	li r3, -1
/* 802E8A00  48 00 00 F0 */	b lbl_802E8AF0
lbl_802E8A04:
/* 802E8A04  80 1C 08 2C */	lwz r0, 0x82c(r28)
/* 802E8A08  54 04 05 7E */	clrlwi r4, r0, 0x15
/* 802E8A0C  80 1C 08 24 */	lwz r0, 0x824(r28)
/* 802E8A10  7C A4 00 50 */	subf r5, r4, r0
/* 802E8A14  7C 1E 2A 14 */	add r0, r30, r5
/* 802E8A18  7C 00 D8 40 */	cmplw r0, r27
/* 802E8A1C  40 81 00 0C */	ble lbl_802E8A28
/* 802E8A20  7C 7E E8 50 */	subf r3, r30, r29
/* 802E8A24  38 A3 FF FF */	addi r5, r3, -1
lbl_802E8A28:
/* 802E8A28  38 C0 00 00 */	li r6, 0
/* 802E8A2C  38 E0 00 00 */	li r7, 0
/* 802E8A30  7C A9 03 A6 */	mtctr r5
/* 802E8A34  28 05 00 00 */	cmplwi r5, 0
/* 802E8A38  40 81 00 34 */	ble lbl_802E8A6C
lbl_802E8A3C:
/* 802E8A3C  80 7C 08 20 */	lwz r3, 0x820(r28)
/* 802E8A40  7C 03 20 AE */	lbzx r0, r3, r4
/* 802E8A44  98 1F 00 00 */	stb r0, 0(r31)
/* 802E8A48  2C 00 00 0A */	cmpwi r0, 0xa
/* 802E8A4C  38 84 00 01 */	addi r4, r4, 1
/* 802E8A50  3B FF 00 01 */	addi r31, r31, 1
/* 802E8A54  40 82 00 10 */	bne lbl_802E8A64
/* 802E8A58  38 C0 00 01 */	li r6, 1
/* 802E8A5C  38 A7 00 01 */	addi r5, r7, 1
/* 802E8A60  48 00 00 0C */	b lbl_802E8A6C
lbl_802E8A64:
/* 802E8A64  38 E7 00 01 */	addi r7, r7, 1
/* 802E8A68  42 00 FF D4 */	bdnz lbl_802E8A3C
lbl_802E8A6C:
/* 802E8A6C  28 04 08 00 */	cmplwi r4, 0x800
/* 802E8A70  41 80 00 0C */	blt lbl_802E8A7C
/* 802E8A74  38 00 00 00 */	li r0, 0
/* 802E8A78  90 1C 08 24 */	stw r0, 0x824(r28)
lbl_802E8A7C:
/* 802E8A7C  2C 06 00 01 */	cmpwi r6, 1
/* 802E8A80  40 82 00 20 */	bne lbl_802E8AA0
/* 802E8A84  38 00 00 00 */	li r0, 0
/* 802E8A88  98 1F 00 00 */	stb r0, 0(r31)
/* 802E8A8C  80 1C 08 2C */	lwz r0, 0x82c(r28)
/* 802E8A90  7C 00 2A 14 */	add r0, r0, r5
/* 802E8A94  90 1C 08 2C */	stw r0, 0x82c(r28)
/* 802E8A98  7F DE 2A 14 */	add r30, r30, r5
/* 802E8A9C  48 00 00 38 */	b lbl_802E8AD4
lbl_802E8AA0:
/* 802E8AA0  80 1C 08 2C */	lwz r0, 0x82c(r28)
/* 802E8AA4  7C 00 2A 14 */	add r0, r0, r5
/* 802E8AA8  90 1C 08 2C */	stw r0, 0x82c(r28)
/* 802E8AAC  7F DE 2A 14 */	add r30, r30, r5
/* 802E8AB0  7C 1E D8 00 */	cmpw r30, r27
/* 802E8AB4  41 80 00 10 */	blt lbl_802E8AC4
/* 802E8AB8  38 00 00 00 */	li r0, 0
/* 802E8ABC  98 1F 00 00 */	stb r0, 0(r31)
/* 802E8AC0  48 00 00 14 */	b lbl_802E8AD4
lbl_802E8AC4:
/* 802E8AC4  80 7C 08 2C */	lwz r3, 0x82c(r28)
/* 802E8AC8  80 1C 08 28 */	lwz r0, 0x828(r28)
/* 802E8ACC  7C 03 00 40 */	cmplw r3, r0
/* 802E8AD0  41 80 FF 10 */	blt lbl_802E89E0
lbl_802E8AD4:
/* 802E8AD4  80 7C 08 2C */	lwz r3, 0x82c(r28)
/* 802E8AD8  80 1C 08 28 */	lwz r0, 0x828(r28)
/* 802E8ADC  7C 03 00 40 */	cmplw r3, r0
/* 802E8AE0  41 80 00 0C */	blt lbl_802E8AEC
/* 802E8AE4  38 00 00 00 */	li r0, 0
/* 802E8AE8  98 1F 00 00 */	stb r0, 0(r31)
lbl_802E8AEC:
/* 802E8AEC  7F C3 F3 78 */	mr r3, r30
lbl_802E8AF0:
/* 802E8AF0  39 61 00 20 */	addi r11, r1, 0x20
/* 802E8AF4  48 07 97 2D */	bl _restgpr_27
/* 802E8AF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E8AFC  7C 08 03 A6 */	mtlr r0
/* 802E8B00  38 21 00 20 */	addi r1, r1, 0x20
/* 802E8B04  4E 80 00 20 */	blr 
