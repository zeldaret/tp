lbl_802DB49C:
/* 802DB49C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DB4A0  7C 08 02 A6 */	mflr r0
/* 802DB4A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DB4A8  39 61 00 20 */	addi r11, r1, 0x20
/* 802DB4AC  48 08 6D 31 */	bl _savegpr_29
/* 802DB4B0  7C 64 1B 78 */	mr r4, r3
/* 802DB4B4  80 0D 8E EC */	lwz r0, szpEnd(r13)
/* 802DB4B8  7F C4 00 50 */	subf r30, r4, r0
/* 802DB4BC  57 C5 06 FF */	clrlwi. r5, r30, 0x1b
/* 802DB4C0  41 82 00 14 */	beq lbl_802DB4D4
/* 802DB4C4  80 6D 8E E8 */	lwz r3, szpBuf(r13)
/* 802DB4C8  38 03 00 20 */	addi r0, r3, 0x20
/* 802DB4CC  7F A5 00 50 */	subf r29, r5, r0
/* 802DB4D0  48 00 00 08 */	b lbl_802DB4D8
lbl_802DB4D4:
/* 802DB4D4  83 AD 8E E8 */	lwz r29, szpBuf(r13)
lbl_802DB4D8:
/* 802DB4D8  7F A3 EB 78 */	mr r3, r29
/* 802DB4DC  7F C5 F3 78 */	mr r5, r30
/* 802DB4E0  4B D2 80 61 */	bl memcpy
/* 802DB4E4  7F DD F2 14 */	add r30, r29, r30
/* 802DB4E8  80 0D 8E EC */	lwz r0, szpEnd(r13)
/* 802DB4EC  7F FE 00 50 */	subf r31, r30, r0
/* 802DB4F0  80 0D 8F 0C */	lwz r0, transLeft(r13)
/* 802DB4F4  7C 1F 00 40 */	cmplw r31, r0
/* 802DB4F8  40 81 00 08 */	ble lbl_802DB500
/* 802DB4FC  7C 1F 03 78 */	mr r31, r0
lbl_802DB500:
/* 802DB500  80 6D 8F 14 */	lwz r3, srcFile(r13)
/* 802DB504  38 63 00 5C */	addi r3, r3, 0x5c
/* 802DB508  7F C4 F3 78 */	mr r4, r30
/* 802DB50C  7F E5 FB 78 */	mr r5, r31
/* 802DB510  80 CD 8F 08 */	lwz r6, srcOffset(r13)
/* 802DB514  38 E0 00 02 */	li r7, 2
/* 802DB518  48 06 D9 2D */	bl DVDReadPrio
/* 802DB51C  2C 03 00 00 */	cmpwi r3, 0
/* 802DB520  40 80 00 20 */	bge lbl_802DB540
/* 802DB524  88 0D 83 50 */	lbz r0, data_804508D0(r13)
/* 802DB528  28 00 00 00 */	cmplwi r0, 0
/* 802DB52C  40 82 00 0C */	bne lbl_802DB538
/* 802DB530  38 60 00 00 */	li r3, 0
/* 802DB534  48 00 00 34 */	b lbl_802DB568
lbl_802DB538:
/* 802DB538  48 07 14 8D */	bl VIWaitForRetrace
/* 802DB53C  4B FF FF C4 */	b lbl_802DB500
lbl_802DB540:
/* 802DB540  80 0D 8F 08 */	lwz r0, srcOffset(r13)
/* 802DB544  7C 00 FA 14 */	add r0, r0, r31
/* 802DB548  90 0D 8F 08 */	stw r0, srcOffset(r13)
/* 802DB54C  80 0D 8F 0C */	lwz r0, transLeft(r13)
/* 802DB550  7C 1F 00 51 */	subf. r0, r31, r0
/* 802DB554  90 0D 8F 0C */	stw r0, transLeft(r13)
/* 802DB558  40 82 00 0C */	bne lbl_802DB564
/* 802DB55C  7C 1E FA 14 */	add r0, r30, r31
/* 802DB560  90 0D 8F 10 */	stw r0, srcLimit(r13)
lbl_802DB564:
/* 802DB564  7F A3 EB 78 */	mr r3, r29
lbl_802DB568:
/* 802DB568  39 61 00 20 */	addi r11, r1, 0x20
/* 802DB56C  48 08 6C BD */	bl _restgpr_29
/* 802DB570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DB574  7C 08 03 A6 */	mtlr r0
/* 802DB578  38 21 00 20 */	addi r1, r1, 0x20
/* 802DB57C  4E 80 00 20 */	blr 
