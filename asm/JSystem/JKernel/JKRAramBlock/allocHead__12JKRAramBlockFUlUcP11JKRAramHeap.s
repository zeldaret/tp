lbl_802D3434:
/* 802D3434  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3438  7C 08 02 A6 */	mflr r0
/* 802D343C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D3440  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3444  48 08 ED 8D */	bl _savegpr_26
/* 802D3448  7C 7A 1B 78 */	mr r26, r3
/* 802D344C  7C 9B 23 78 */	mr r27, r4
/* 802D3450  7C BC 2B 78 */	mr r28, r5
/* 802D3454  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D3458  80 1A 00 18 */	lwz r0, 0x18(r26)
/* 802D345C  7F C3 02 14 */	add r30, r3, r0
/* 802D3460  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 802D3464  7F BB 00 50 */	subf r29, r27, r0
/* 802D3468  38 60 00 24 */	li r3, 0x24
/* 802D346C  80 86 00 30 */	lwz r4, 0x30(r6)
/* 802D3470  38 A0 00 00 */	li r5, 0
/* 802D3474  4B FF B8 25 */	bl __nw__FUlP7JKRHeapi
/* 802D3478  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D347C  41 82 00 20 */	beq lbl_802D349C
/* 802D3480  7F C4 F3 78 */	mr r4, r30
/* 802D3484  7F 65 DB 78 */	mr r5, r27
/* 802D3488  7F A6 EB 78 */	mr r6, r29
/* 802D348C  7F 87 E3 78 */	mr r7, r28
/* 802D3490  39 00 00 00 */	li r8, 0
/* 802D3494  4B FF FE 71 */	bl __ct__12JKRAramBlockFUlUlUlUcb
/* 802D3498  7C 7F 1B 78 */	mr r31, r3
lbl_802D349C:
/* 802D349C  38 00 00 00 */	li r0, 0
/* 802D34A0  90 1A 00 1C */	stw r0, 0x1c(r26)
/* 802D34A4  80 9A 00 10 */	lwz r4, 0x10(r26)
/* 802D34A8  80 7A 00 08 */	lwz r3, 8(r26)
/* 802D34AC  38 BF 00 04 */	addi r5, r31, 4
/* 802D34B0  48 00 8B E5 */	bl insert__10JSUPtrListFP10JSUPtrLinkP10JSUPtrLink
/* 802D34B4  7F E3 FB 78 */	mr r3, r31
/* 802D34B8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D34BC  48 08 ED 61 */	bl _restgpr_26
/* 802D34C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D34C4  7C 08 03 A6 */	mtlr r0
/* 802D34C8  38 21 00 20 */	addi r1, r1, 0x20
/* 802D34CC  4E 80 00 20 */	blr 
