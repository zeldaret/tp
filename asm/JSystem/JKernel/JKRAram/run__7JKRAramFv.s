lbl_802D21DC:
/* 802D21DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D21E0  7C 08 02 A6 */	mflr r0
/* 802D21E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D21E8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D21EC  48 08 FF F1 */	bl _savegpr_29
/* 802D21F0  3C 60 80 3D */	lis r3, sMessageQueue__7JKRAram@ha
/* 802D21F4  38 63 C1 38 */	addi r3, r3, sMessageQueue__7JKRAram@l
/* 802D21F8  3C 80 80 3D */	lis r4, sMessageBuffer__7JKRAram@ha
/* 802D21FC  38 84 C1 28 */	addi r4, r4, sMessageBuffer__7JKRAram@l
/* 802D2200  38 A0 00 04 */	li r5, 4
/* 802D2204  48 06 C7 91 */	bl OSInitMessageQueue
/* 802D2208  3C 60 80 3D */	lis r3, sMessageQueue__7JKRAram@ha
/* 802D220C  3B E3 C1 38 */	addi r31, r3, sMessageQueue__7JKRAram@l
lbl_802D2210:
/* 802D2210  7F E3 FB 78 */	mr r3, r31
/* 802D2214  38 81 00 08 */	addi r4, r1, 8
/* 802D2218  38 A0 00 01 */	li r5, 1
/* 802D221C  48 06 C8 A1 */	bl OSReceiveMessage
/* 802D2220  80 61 00 08 */	lwz r3, 8(r1)
/* 802D2224  83 C3 00 00 */	lwz r30, 0(r3)
/* 802D2228  83 A3 00 04 */	lwz r29, 4(r3)
/* 802D222C  4B FF CB 11 */	bl __dl__FPv
/* 802D2230  2C 1E 00 01 */	cmpwi r30, 1
/* 802D2234  41 82 00 08 */	beq lbl_802D223C
/* 802D2238  4B FF FF D8 */	b lbl_802D2210
lbl_802D223C:
/* 802D223C  7F A3 EB 78 */	mr r3, r29
/* 802D2240  48 00 16 8D */	bl startDMA__12JKRAramPieceFP12JKRAMCommand
/* 802D2244  4B FF FF CC */	b lbl_802D2210
