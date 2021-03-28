lbl_802DA6D8:
/* 802DA6D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DA6DC  7C 08 02 A6 */	mflr r0
/* 802DA6E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DA6E4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DA6E8  48 08 7A F1 */	bl _savegpr_28
/* 802DA6EC  7C 64 1B 78 */	mr r4, r3
/* 802DA6F0  80 0D 8E AC */	lwz r0, szpEnd(r13)
/* 802DA6F4  7F A4 00 50 */	subf r29, r4, r0
/* 802DA6F8  57 A5 06 FF */	clrlwi. r5, r29, 0x1b
/* 802DA6FC  41 82 00 14 */	beq lbl_802DA710
/* 802DA700  80 6D 8E A8 */	lwz r3, szpBuf(r13)
/* 802DA704  38 03 00 20 */	addi r0, r3, 0x20
/* 802DA708  7F 85 00 50 */	subf r28, r5, r0
/* 802DA70C  48 00 00 08 */	b lbl_802DA714
lbl_802DA710:
/* 802DA710  83 8D 8E A8 */	lwz r28, szpBuf(r13)
lbl_802DA714:
/* 802DA714  7F 83 E3 78 */	mr r3, r28
/* 802DA718  7F A5 EB 78 */	mr r5, r29
/* 802DA71C  4B D2 8E 25 */	bl memcpy
/* 802DA720  7F BC EA 14 */	add r29, r28, r29
/* 802DA724  80 0D 8E AC */	lwz r0, szpEnd(r13)
/* 802DA728  7F DD 00 50 */	subf r30, r29, r0
/* 802DA72C  80 0D 8E C0 */	lwz r0, transLeft(r13)
/* 802DA730  7C 1E 00 40 */	cmplw r30, r0
/* 802DA734  40 81 00 08 */	ble lbl_802DA73C
/* 802DA738  7C 1E 03 78 */	mr r30, r0
lbl_802DA73C:
/* 802DA73C  3C 60 80 2E */	lis r3, isErrorRetry__12JKRDvdRipperFv@ha
/* 802DA740  3B E3 A7 D4 */	addi r31, r3, isErrorRetry__12JKRDvdRipperFv@l
lbl_802DA744:
/* 802DA744  80 6D 8E C8 */	lwz r3, srcFile(r13)
/* 802DA748  38 63 00 5C */	addi r3, r3, 0x5c
/* 802DA74C  7F A4 EB 78 */	mr r4, r29
/* 802DA750  7F C5 F3 78 */	mr r5, r30
/* 802DA754  80 CD 8E BC */	lwz r6, srcOffset(r13)
/* 802DA758  38 E0 00 02 */	li r7, 2
/* 802DA75C  48 06 E6 E9 */	bl DVDReadPrio
/* 802DA760  2C 03 00 00 */	cmpwi r3, 0
/* 802DA764  40 80 00 24 */	bge lbl_802DA788
/* 802DA768  2C 03 FF FD */	cmpwi r3, -3
/* 802DA76C  41 82 00 0C */	beq lbl_802DA778
/* 802DA770  28 1F 00 00 */	cmplwi r31, 0
/* 802DA774  40 82 00 0C */	bne lbl_802DA780
lbl_802DA778:
/* 802DA778  38 60 00 00 */	li r3, 0
/* 802DA77C  48 00 00 40 */	b lbl_802DA7BC
lbl_802DA780:
/* 802DA780  48 07 22 45 */	bl VIWaitForRetrace
/* 802DA784  4B FF FF C0 */	b lbl_802DA744
lbl_802DA788:
/* 802DA788  7F A3 EB 78 */	mr r3, r29
/* 802DA78C  7F C4 F3 78 */	mr r4, r30
/* 802DA790  48 06 0D F1 */	bl DCInvalidateRange
/* 802DA794  80 0D 8E BC */	lwz r0, srcOffset(r13)
/* 802DA798  7C 00 F2 14 */	add r0, r0, r30
/* 802DA79C  90 0D 8E BC */	stw r0, srcOffset(r13)
/* 802DA7A0  80 0D 8E C0 */	lwz r0, transLeft(r13)
/* 802DA7A4  7C 1E 00 51 */	subf. r0, r30, r0
/* 802DA7A8  90 0D 8E C0 */	stw r0, transLeft(r13)
/* 802DA7AC  40 82 00 0C */	bne lbl_802DA7B8
/* 802DA7B0  7C 1D F2 14 */	add r0, r29, r30
/* 802DA7B4  90 0D 8E C4 */	stw r0, srcLimit(r13)
lbl_802DA7B8:
/* 802DA7B8  7F 83 E3 78 */	mr r3, r28
lbl_802DA7BC:
/* 802DA7BC  39 61 00 20 */	addi r11, r1, 0x20
/* 802DA7C0  48 08 7A 65 */	bl _restgpr_28
/* 802DA7C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DA7C8  7C 08 03 A6 */	mtlr r0
/* 802DA7CC  38 21 00 20 */	addi r1, r1, 0x20
/* 802DA7D0  4E 80 00 20 */	blr 
