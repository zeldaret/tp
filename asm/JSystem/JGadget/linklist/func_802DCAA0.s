lbl_802DCAA0:
/* 802DCAA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DCAA4  7C 08 02 A6 */	mflr r0
/* 802DCAA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DCAAC  39 61 00 30 */	addi r11, r1, 0x30
/* 802DCAB0  48 08 57 25 */	bl _savegpr_27
/* 802DCAB4  7C 7B 1B 78 */	mr r27, r3
/* 802DCAB8  7C 9C 23 78 */	mr r28, r4
/* 802DCABC  7C DD 33 78 */	mr r29, r6
/* 802DCAC0  80 A5 00 00 */	lwz r5, 0(r5)
/* 802DCAC4  83 E6 00 00 */	lwz r31, 0(r6)
/* 802DCAC8  48 00 00 18 */	b lbl_802DCAE0
lbl_802DCACC:
/* 802DCACC  83 C5 00 00 */	lwz r30, 0(r5)
/* 802DCAD0  38 61 00 08 */	addi r3, r1, 8
/* 802DCAD4  7F 84 E3 78 */	mr r4, r28
/* 802DCAD8  48 00 00 FD */	bl Erase__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
/* 802DCADC  7F C5 F3 78 */	mr r5, r30
lbl_802DCAE0:
/* 802DCAE0  7C 05 F8 40 */	cmplw r5, r31
/* 802DCAE4  40 82 FF E8 */	bne lbl_802DCACC
/* 802DCAE8  80 1D 00 00 */	lwz r0, 0(r29)
/* 802DCAEC  90 1B 00 00 */	stw r0, 0(r27)
/* 802DCAF0  39 61 00 30 */	addi r11, r1, 0x30
/* 802DCAF4  48 08 57 2D */	bl _restgpr_27
/* 802DCAF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DCAFC  7C 08 03 A6 */	mtlr r0
/* 802DCB00  38 21 00 30 */	addi r1, r1, 0x30
/* 802DCB04  4E 80 00 20 */	blr 
