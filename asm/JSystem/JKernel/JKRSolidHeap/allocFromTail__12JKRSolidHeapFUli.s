lbl_802D0E20:
/* 802D0E20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0E24  7C 08 02 A6 */	mflr r0
/* 802D0E28  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0E2C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D0E30  48 09 13 A9 */	bl _savegpr_28
/* 802D0E34  7C 7F 1B 78 */	mr r31, r3
/* 802D0E38  7C BD 2B 78 */	mr r29, r5
/* 802D0E3C  38 04 00 03 */	addi r0, r4, 3
/* 802D0E40  54 1C 00 3A */	rlwinm r28, r0, 0, 0, 0x1d
/* 802D0E44  3B C0 00 00 */	li r30, 0
/* 802D0E48  38 1D FF FF */	addi r0, r29, -1
/* 802D0E4C  7C 03 00 F8 */	nor r3, r0, r0
/* 802D0E50  80 BF 00 74 */	lwz r5, 0x74(r31)
/* 802D0E54  7C 1C 28 50 */	subf r0, r28, r5
/* 802D0E58  7C 63 00 38 */	and r3, r3, r0
/* 802D0E5C  7C 83 28 50 */	subf r4, r3, r5
/* 802D0E60  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 802D0E64  7C 04 00 40 */	cmplw r4, r0
/* 802D0E68  41 81 00 20 */	bgt lbl_802D0E88
/* 802D0E6C  7C 7E 1B 78 */	mr r30, r3
/* 802D0E70  7C 04 28 50 */	subf r0, r4, r5
/* 802D0E74  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802D0E78  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 802D0E7C  7C 04 00 50 */	subf r0, r4, r0
/* 802D0E80  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 802D0E84  48 00 00 44 */	b lbl_802D0EC8
lbl_802D0E88:
/* 802D0E88  3C 60 80 3A */	lis r3, JKRSolidHeap__stringBase0@ha
/* 802D0E8C  38 63 CE 50 */	addi r3, r3, JKRSolidHeap__stringBase0@l
/* 802D0E90  38 63 00 31 */	addi r3, r3, 0x31
/* 802D0E94  4C C6 31 82 */	crclr 6
/* 802D0E98  48 01 77 E5 */	bl JUTWarningConsole_f
/* 802D0E9C  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 802D0EA0  28 00 00 01 */	cmplwi r0, 1
/* 802D0EA4  40 82 00 24 */	bne lbl_802D0EC8
/* 802D0EA8  81 8D 8D FC */	lwz r12, mErrorHandler__7JKRHeap(r13)
/* 802D0EAC  28 0C 00 00 */	cmplwi r12, 0
/* 802D0EB0  41 82 00 18 */	beq lbl_802D0EC8
/* 802D0EB4  7F E3 FB 78 */	mr r3, r31
/* 802D0EB8  7F 84 E3 78 */	mr r4, r28
/* 802D0EBC  7F A5 EB 78 */	mr r5, r29
/* 802D0EC0  7D 89 03 A6 */	mtctr r12
/* 802D0EC4  4E 80 04 21 */	bctrl 
lbl_802D0EC8:
/* 802D0EC8  7F C3 F3 78 */	mr r3, r30
/* 802D0ECC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D0ED0  48 09 13 55 */	bl _restgpr_28
/* 802D0ED4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0ED8  7C 08 03 A6 */	mtlr r0
/* 802D0EDC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0EE0  4E 80 00 20 */	blr 
