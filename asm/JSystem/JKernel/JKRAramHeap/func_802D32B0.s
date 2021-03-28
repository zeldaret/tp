lbl_802D32B0:
/* 802D32B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D32B4  7C 08 02 A6 */	mflr r0
/* 802D32B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D32BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D32C0  93 C1 00 08 */	stw r30, 8(r1)
/* 802D32C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D32C8  7C 9F 23 78 */	mr r31, r4
/* 802D32CC  41 82 00 1C */	beq lbl_802D32E8
/* 802D32D0  38 80 00 00 */	li r4, 0
/* 802D32D4  48 00 8B D9 */	bl __dt__10JSUPtrListFv
/* 802D32D8  7F E0 07 35 */	extsh. r0, r31
/* 802D32DC  40 81 00 0C */	ble lbl_802D32E8
/* 802D32E0  7F C3 F3 78 */	mr r3, r30
/* 802D32E4  4B FF BA 59 */	bl __dl__FPv
lbl_802D32E8:
/* 802D32E8  7F C3 F3 78 */	mr r3, r30
/* 802D32EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D32F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D32F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D32F8  7C 08 03 A6 */	mtlr r0
/* 802D32FC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3300  4E 80 00 20 */	blr 
