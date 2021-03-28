lbl_802D2CE4:
/* 802D2CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D2CE8  7C 08 02 A6 */	mflr r0
/* 802D2CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D2CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D2CF4  48 08 F4 E5 */	bl _savegpr_28
/* 802D2CF8  7C 64 1B 78 */	mr r4, r3
/* 802D2CFC  80 0D 8E 50 */	lwz r0, szpEnd(r13)
/* 802D2D00  7F A4 00 50 */	subf r29, r4, r0
/* 802D2D04  57 A5 06 FF */	clrlwi. r5, r29, 0x1b
/* 802D2D08  41 82 00 14 */	beq lbl_802D2D1C
/* 802D2D0C  80 6D 8E 4C */	lwz r3, szpBuf(r13)
/* 802D2D10  38 03 00 20 */	addi r0, r3, 0x20
/* 802D2D14  7F C5 00 50 */	subf r30, r5, r0
/* 802D2D18  48 00 00 08 */	b lbl_802D2D20
lbl_802D2D1C:
/* 802D2D1C  83 CD 8E 4C */	lwz r30, szpBuf(r13)
lbl_802D2D20:
/* 802D2D20  7F C3 F3 78 */	mr r3, r30
/* 802D2D24  7F A5 EB 78 */	mr r5, r29
/* 802D2D28  4B D3 08 19 */	bl memcpy
/* 802D2D2C  7F FE EA 14 */	add r31, r30, r29
/* 802D2D30  80 0D 8E 50 */	lwz r0, szpEnd(r13)
/* 802D2D34  7F 9F 00 50 */	subf r28, r31, r0
/* 802D2D38  80 0D 8E 64 */	lwz r0, transLeft(r13)
/* 802D2D3C  7C 1C 00 40 */	cmplw r28, r0
/* 802D2D40  40 81 00 08 */	ble lbl_802D2D48
/* 802D2D44  7C 1C 03 78 */	mr r28, r0
lbl_802D2D48:
/* 802D2D48  38 60 00 01 */	li r3, 1
/* 802D2D4C  80 8D 8E 6C */	lwz r4, srcAddress(r13)
/* 802D2D50  80 0D 8E 60 */	lwz r0, srcOffset(r13)
/* 802D2D54  7C 84 02 14 */	add r4, r4, r0
/* 802D2D58  7C BE EA 14 */	add r5, r30, r29
/* 802D2D5C  38 1C 00 1F */	addi r0, r28, 0x1f
/* 802D2D60  54 06 00 34 */	rlwinm r6, r0, 0, 0, 0x1a
/* 802D2D64  38 E0 00 00 */	li r7, 0
/* 802D2D68  48 00 0A D1 */	bl orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
/* 802D2D6C  80 0D 8E 60 */	lwz r0, srcOffset(r13)
/* 802D2D70  7C 00 E2 14 */	add r0, r0, r28
/* 802D2D74  90 0D 8E 60 */	stw r0, srcOffset(r13)
/* 802D2D78  80 0D 8E 64 */	lwz r0, transLeft(r13)
/* 802D2D7C  7C 1C 00 51 */	subf. r0, r28, r0
/* 802D2D80  90 0D 8E 64 */	stw r0, transLeft(r13)
/* 802D2D84  40 82 00 0C */	bne lbl_802D2D90
/* 802D2D88  7C 1F E2 14 */	add r0, r31, r28
/* 802D2D8C  90 0D 8E 68 */	stw r0, srcLimit(r13)
lbl_802D2D90:
/* 802D2D90  7F C3 F3 78 */	mr r3, r30
/* 802D2D94  39 61 00 20 */	addi r11, r1, 0x20
/* 802D2D98  48 08 F4 8D */	bl _restgpr_28
/* 802D2D9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D2DA0  7C 08 03 A6 */	mtlr r0
/* 802D2DA4  38 21 00 20 */	addi r1, r1, 0x20
/* 802D2DA8  4E 80 00 20 */	blr 
