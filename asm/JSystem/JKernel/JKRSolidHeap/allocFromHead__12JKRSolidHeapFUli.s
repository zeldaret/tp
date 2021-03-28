lbl_802D0D58:
/* 802D0D58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0D5C  7C 08 02 A6 */	mflr r0
/* 802D0D60  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0D64  39 61 00 20 */	addi r11, r1, 0x20
/* 802D0D68  48 09 14 71 */	bl _savegpr_28
/* 802D0D6C  7C 7F 1B 78 */	mr r31, r3
/* 802D0D70  7C BD 2B 78 */	mr r29, r5
/* 802D0D74  38 04 00 03 */	addi r0, r4, 3
/* 802D0D78  54 1C 00 3A */	rlwinm r28, r0, 0, 0, 0x1d
/* 802D0D7C  3B C0 00 00 */	li r30, 0
/* 802D0D80  38 1D FF FF */	addi r0, r29, -1
/* 802D0D84  7C 04 00 F8 */	nor r4, r0, r0
/* 802D0D88  80 A3 00 70 */	lwz r5, 0x70(r3)
/* 802D0D8C  7C 7D 2A 14 */	add r3, r29, r5
/* 802D0D90  38 03 FF FF */	addi r0, r3, -1
/* 802D0D94  7C 83 00 38 */	and r3, r4, r0
/* 802D0D98  7C 05 18 50 */	subf r0, r5, r3
/* 802D0D9C  7C 9C 02 14 */	add r4, r28, r0
/* 802D0DA0  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 802D0DA4  7C 04 00 40 */	cmplw r4, r0
/* 802D0DA8  41 81 00 20 */	bgt lbl_802D0DC8
/* 802D0DAC  7C 7E 1B 78 */	mr r30, r3
/* 802D0DB0  7C 05 22 14 */	add r0, r5, r4
/* 802D0DB4  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802D0DB8  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 802D0DBC  7C 04 00 50 */	subf r0, r4, r0
/* 802D0DC0  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 802D0DC4  48 00 00 40 */	b lbl_802D0E04
lbl_802D0DC8:
/* 802D0DC8  3C 60 80 3A */	lis r3, JKRSolidHeap__stringBase0@ha
/* 802D0DCC  38 63 CE 50 */	addi r3, r3, JKRSolidHeap__stringBase0@l
/* 802D0DD0  4C C6 31 82 */	crclr 6
/* 802D0DD4  48 01 78 A9 */	bl JUTWarningConsole_f
/* 802D0DD8  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 802D0DDC  28 00 00 01 */	cmplwi r0, 1
/* 802D0DE0  40 82 00 24 */	bne lbl_802D0E04
/* 802D0DE4  81 8D 8D FC */	lwz r12, mErrorHandler__7JKRHeap(r13)
/* 802D0DE8  28 0C 00 00 */	cmplwi r12, 0
/* 802D0DEC  41 82 00 18 */	beq lbl_802D0E04
/* 802D0DF0  7F E3 FB 78 */	mr r3, r31
/* 802D0DF4  7F 84 E3 78 */	mr r4, r28
/* 802D0DF8  7F A5 EB 78 */	mr r5, r29
/* 802D0DFC  7D 89 03 A6 */	mtctr r12
/* 802D0E00  4E 80 04 21 */	bctrl 
lbl_802D0E04:
/* 802D0E04  7F C3 F3 78 */	mr r3, r30
/* 802D0E08  39 61 00 20 */	addi r11, r1, 0x20
/* 802D0E0C  48 09 14 19 */	bl _restgpr_28
/* 802D0E10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0E14  7C 08 03 A6 */	mtlr r0
/* 802D0E18  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0E1C  4E 80 00 20 */	blr 
