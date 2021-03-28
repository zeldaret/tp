lbl_802E1EA8:
/* 802E1EA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E1EAC  7C 08 02 A6 */	mflr r0
/* 802E1EB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E1EB4  39 61 00 30 */	addi r11, r1, 0x30
/* 802E1EB8  48 08 03 15 */	bl _savegpr_25
/* 802E1EBC  7C 7F 1B 78 */	mr r31, r3
/* 802E1EC0  48 05 7E 01 */	bl PPCMfmsr
/* 802E1EC4  38 00 F6 FF */	li r0, -2305
/* 802E1EC8  7C 63 00 38 */	and r3, r3, r0
/* 802E1ECC  48 05 7D FD */	bl PPCMtmsr
/* 802E1ED0  3C 60 80 3D */	lis r3, sMessageQueue__12JUTException@ha
/* 802E1ED4  38 63 C6 20 */	addi r3, r3, sMessageQueue__12JUTException@l
/* 802E1ED8  38 8D 83 70 */	la r4, sMessageBuffer__12JUTException(r13) /* 804508F0-_SDA_BASE_ */
/* 802E1EDC  38 A0 00 01 */	li r5, 1
/* 802E1EE0  48 05 CA B5 */	bl OSInitMessageQueue
/* 802E1EE4  3C 60 80 3D */	lis r3, sMessageQueue__12JUTException@ha
/* 802E1EE8  3B C3 C6 20 */	addi r30, r3, sMessageQueue__12JUTException@l
lbl_802E1EEC:
/* 802E1EEC  7F C3 F3 78 */	mr r3, r30
/* 802E1EF0  38 81 00 08 */	addi r4, r1, 8
/* 802E1EF4  38 A0 00 01 */	li r5, 1
/* 802E1EF8  48 05 CB C5 */	bl OSReceiveMessage
/* 802E1EFC  38 60 00 00 */	li r3, 0
/* 802E1F00  48 06 A2 E1 */	bl VISetPreRetraceCallback
/* 802E1F04  38 60 00 00 */	li r3, 0
/* 802E1F08  48 06 A3 1D */	bl VISetPostRetraceCallback
/* 802E1F0C  80 61 00 08 */	lwz r3, 8(r1)
/* 802E1F10  83 A3 00 00 */	lwz r29, 0(r3)
/* 802E1F14  A3 83 00 04 */	lhz r28, 4(r3)
/* 802E1F18  83 63 00 08 */	lwz r27, 8(r3)
/* 802E1F1C  83 43 00 0C */	lwz r26, 0xc(r3)
/* 802E1F20  83 23 00 10 */	lwz r25, 0x10(r3)
/* 802E1F24  28 1C 00 11 */	cmplwi r28, 0x11
/* 802E1F28  40 80 00 0C */	bge lbl_802E1F34
/* 802E1F2C  80 1B 00 04 */	lwz r0, 4(r27)
/* 802E1F30  90 1F 00 A0 */	stw r0, 0xa0(r31)
lbl_802E1F34:
/* 802E1F34  48 06 B9 05 */	bl VIGetCurrentFrameBuffer
/* 802E1F38  90 7F 00 7C */	stw r3, 0x7c(r31)
/* 802E1F3C  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 802E1F40  28 00 00 00 */	cmplwi r0, 0
/* 802E1F44  40 82 00 0C */	bne lbl_802E1F50
/* 802E1F48  80 6D 8F 88 */	lwz r3, sErrorManager__12JUTException(r13)
/* 802E1F4C  48 00 1A BD */	bl createFB__12JUTExceptionFv
lbl_802E1F50:
/* 802E1F50  80 6D 8F 88 */	lwz r3, sErrorManager__12JUTException(r13)
/* 802E1F54  80 63 00 80 */	lwz r3, 0x80(r3)
/* 802E1F58  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 802E1F5C  A0 A3 00 04 */	lhz r5, 4(r3)
/* 802E1F60  A0 C3 00 06 */	lhz r6, 6(r3)
/* 802E1F64  48 00 26 09 */	bl changeFrameBuffer__14JUTDirectPrintFPvUsUs
/* 802E1F68  28 1D 00 00 */	cmplwi r29, 0
/* 802E1F6C  41 82 00 20 */	beq lbl_802E1F8C
/* 802E1F70  7F 83 E3 78 */	mr r3, r28
/* 802E1F74  7F 64 DB 78 */	mr r4, r27
/* 802E1F78  7F 45 D3 78 */	mr r5, r26
/* 802E1F7C  7F 26 CB 78 */	mr r6, r25
/* 802E1F80  7F AC EB 78 */	mr r12, r29
/* 802E1F84  7D 89 03 A6 */	mtctr r12
/* 802E1F88  4E 80 04 21 */	bctrl 
lbl_802E1F8C:
/* 802E1F8C  48 05 B7 69 */	bl OSDisableInterrupts
/* 802E1F90  48 06 B8 A9 */	bl VIGetCurrentFrameBuffer
/* 802E1F94  90 7F 00 7C */	stw r3, 0x7c(r31)
/* 802E1F98  80 6D 8F 88 */	lwz r3, sErrorManager__12JUTException(r13)
/* 802E1F9C  80 63 00 80 */	lwz r3, 0x80(r3)
/* 802E1FA0  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 802E1FA4  A0 A3 00 04 */	lhz r5, 4(r3)
/* 802E1FA8  A0 C3 00 06 */	lhz r6, 6(r3)
/* 802E1FAC  48 00 25 C1 */	bl changeFrameBuffer__14JUTDirectPrintFPvUsUs
/* 802E1FB0  80 6D 8F 88 */	lwz r3, sErrorManager__12JUTException(r13)
/* 802E1FB4  7F 84 E3 78 */	mr r4, r28
/* 802E1FB8  7F 65 DB 78 */	mr r5, r27
/* 802E1FBC  7F 46 D3 78 */	mr r6, r26
/* 802E1FC0  7F 27 CB 78 */	mr r7, r25
/* 802E1FC4  48 00 14 FD */	bl printContext__12JUTExceptionFUsP9OSContextUlUl
/* 802E1FC8  4B FF FF 24 */	b lbl_802E1EEC
