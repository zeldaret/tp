lbl_802E3980:
/* 802E3980  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E3984  7C 08 02 A6 */	mflr r0
/* 802E3988  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E398C  39 61 00 20 */	addi r11, r1, 0x20
/* 802E3990  48 07 E8 41 */	bl _savegpr_26
/* 802E3994  7C 7A 1B 79 */	or. r26, r3, r3
/* 802E3998  41 82 00 58 */	beq lbl_802E39F0
/* 802E399C  48 05 ED 61 */	bl OSGetTime
/* 802E39A0  7C 9C 23 78 */	mr r28, r4
/* 802E39A4  7C 7D 1B 78 */	mr r29, r3
/* 802E39A8  7F 5B FE 70 */	srawi r27, r26, 0x1f
/* 802E39AC  3F C0 80 00 */	lis r30, 0x8000
/* 802E39B0  3B E0 03 E8 */	li r31, 0x3e8
lbl_802E39B4:
/* 802E39B4  48 05 ED 49 */	bl OSGetTime
/* 802E39B8  7C 9C 20 10 */	subfc r4, r28, r4
/* 802E39BC  7C 7D 19 10 */	subfe r3, r29, r3
/* 802E39C0  80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 802E39C4  54 00 F0 BE */	srwi r0, r0, 2
/* 802E39C8  7C C0 FB 96 */	divwu r6, r0, r31
/* 802E39CC  38 A0 00 00 */	li r5, 0
/* 802E39D0  48 07 E9 55 */	bl __div2i
/* 802E39D4  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 802E39D8  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 802E39DC  7C 1A 20 10 */	subfc r0, r26, r4
/* 802E39E0  7C 63 29 10 */	subfe r3, r3, r5
/* 802E39E4  7C 65 29 10 */	subfe r3, r5, r5
/* 802E39E8  7C 63 00 D1 */	neg. r3, r3
/* 802E39EC  40 82 FF C8 */	bne lbl_802E39B4
lbl_802E39F0:
/* 802E39F0  39 61 00 20 */	addi r11, r1, 0x20
/* 802E39F4  48 07 E8 29 */	bl _restgpr_26
/* 802E39F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E39FC  7C 08 03 A6 */	mtlr r0
/* 802E3A00  38 21 00 20 */	addi r1, r1, 0x20
/* 802E3A04  4E 80 00 20 */	blr 
