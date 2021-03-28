lbl_8000EE40:
/* 8000EE40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000EE44  7C 08 02 A6 */	mflr r0
/* 8000EE48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000EE4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000EE50  28 04 00 00 */	cmplwi r4, 0
/* 8000EE54  40 82 00 08 */	bne lbl_8000EE5C
/* 8000EE58  80 8D 8D F4 */	lwz r4, sCurrentHeap__7JKRHeap(r13)
lbl_8000EE5C:
/* 8000EE5C  28 03 00 00 */	cmplwi r3, 0
/* 8000EE60  41 82 00 10 */	beq lbl_8000EE70
/* 8000EE64  3C 03 00 01 */	addis r0, r3, 1
/* 8000EE68  28 00 FF FF */	cmplwi r0, 0xffff
/* 8000EE6C  40 82 00 18 */	bne lbl_8000EE84
lbl_8000EE70:
/* 8000EE70  38 60 FF FF */	li r3, -1
/* 8000EE74  38 A0 00 00 */	li r5, 0
/* 8000EE78  48 2C 1B AD */	bl create__12JKRSolidHeapFUlP7JKRHeapb
/* 8000EE7C  7C 7F 1B 78 */	mr r31, r3
/* 8000EE80  48 00 00 2C */	b lbl_8000EEAC
lbl_8000EE84:
/* 8000EE84  38 03 00 0F */	addi r0, r3, 0xf
/* 8000EE88  54 03 00 36 */	rlwinm r3, r0, 0, 0, 0x1b
/* 8000EE8C  28 05 00 10 */	cmplwi r5, 0x10
/* 8000EE90  38 63 00 80 */	addi r3, r3, 0x80
/* 8000EE94  40 81 00 0C */	ble lbl_8000EEA0
/* 8000EE98  7C 65 1A 14 */	add r3, r5, r3
/* 8000EE9C  38 63 FF F0 */	addi r3, r3, -16
lbl_8000EEA0:
/* 8000EEA0  38 A0 00 00 */	li r5, 0
/* 8000EEA4  48 2C 1B 81 */	bl create__12JKRSolidHeapFUlP7JKRHeapb
/* 8000EEA8  7C 7F 1B 78 */	mr r31, r3
lbl_8000EEAC:
/* 8000EEAC  28 1F 00 00 */	cmplwi r31, 0
/* 8000EEB0  41 82 00 10 */	beq lbl_8000EEC0
/* 8000EEB4  7F E3 FB 78 */	mr r3, r31
/* 8000EEB8  38 80 00 01 */	li r4, 1
/* 8000EEBC  48 2B FC BD */	bl setErrorFlag__7JKRHeapFb
lbl_8000EEC0:
/* 8000EEC0  7F E3 FB 78 */	mr r3, r31
/* 8000EEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000EEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000EECC  7C 08 03 A6 */	mtlr r0
/* 8000EED0  38 21 00 10 */	addi r1, r1, 0x10
/* 8000EED4  4E 80 00 20 */	blr 
