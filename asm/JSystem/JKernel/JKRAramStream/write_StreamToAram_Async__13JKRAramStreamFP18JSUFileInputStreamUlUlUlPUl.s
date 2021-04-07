lbl_802D3ED0:
/* 802D3ED0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3ED4  7C 08 02 A6 */	mflr r0
/* 802D3ED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D3EDC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3EE0  48 08 E2 F1 */	bl _savegpr_26
/* 802D3EE4  7C 7A 1B 78 */	mr r26, r3
/* 802D3EE8  7C 9B 23 78 */	mr r27, r4
/* 802D3EEC  7C BC 2B 78 */	mr r28, r5
/* 802D3EF0  7C DD 33 78 */	mr r29, r6
/* 802D3EF4  7C FE 3B 78 */	mr r30, r7
/* 802D3EF8  38 60 00 5C */	li r3, 0x5c
/* 802D3EFC  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802D3F00  38 A0 FF FC */	li r5, -4
/* 802D3F04  4B FF AD 95 */	bl __nw__FUlP7JKRHeapi
/* 802D3F08  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D3F0C  41 82 00 0C */	beq lbl_802D3F18
/* 802D3F10  48 00 01 79 */	bl __ct__20JKRAramStreamCommandFv
/* 802D3F14  7C 7F 1B 78 */	mr r31, r3
lbl_802D3F18:
/* 802D3F18  38 00 00 02 */	li r0, 2
/* 802D3F1C  90 1F 00 00 */	stw r0, 0(r31)
/* 802D3F20  93 7F 00 04 */	stw r27, 4(r31)
/* 802D3F24  93 9F 00 08 */	stw r28, 8(r31)
/* 802D3F28  93 5F 00 10 */	stw r26, 0x10(r31)
/* 802D3F2C  38 60 00 00 */	li r3, 0
/* 802D3F30  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 802D3F34  93 BF 00 14 */	stw r29, 0x14(r31)
/* 802D3F38  80 0D 8E 8C */	lwz r0, transBuffer__13JKRAramStream(r13)
/* 802D3F3C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 802D3F40  80 0D 8E 94 */	lwz r0, transHeap__13JKRAramStream(r13)
/* 802D3F44  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802D3F48  80 0D 8E 90 */	lwz r0, transSize__13JKRAramStream(r13)
/* 802D3F4C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802D3F50  93 DF 00 18 */	stw r30, 0x18(r31)
/* 802D3F54  28 1E 00 00 */	cmplwi r30, 0
/* 802D3F58  41 82 00 08 */	beq lbl_802D3F60
/* 802D3F5C  90 7E 00 00 */	stw r3, 0(r30)
lbl_802D3F60:
/* 802D3F60  38 7F 00 30 */	addi r3, r31, 0x30
/* 802D3F64  38 9F 00 50 */	addi r4, r31, 0x50
/* 802D3F68  38 A0 00 01 */	li r5, 1
/* 802D3F6C  48 06 AA 29 */	bl OSInitMessageQueue
/* 802D3F70  3C 60 80 3D */	lis r3, sMessageQueue__13JKRAramStream@ha /* 0x803CC198@ha */
/* 802D3F74  38 63 C1 98 */	addi r3, r3, sMessageQueue__13JKRAramStream@l /* 0x803CC198@l */
/* 802D3F78  7F E4 FB 78 */	mr r4, r31
/* 802D3F7C  38 A0 00 01 */	li r5, 1
/* 802D3F80  48 06 AA 75 */	bl OSSendMessage
/* 802D3F84  7F E3 FB 78 */	mr r3, r31
/* 802D3F88  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3F8C  48 08 E2 91 */	bl _restgpr_26
/* 802D3F90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D3F94  7C 08 03 A6 */	mtlr r0
/* 802D3F98  38 21 00 20 */	addi r1, r1, 0x20
/* 802D3F9C  4E 80 00 20 */	blr 
