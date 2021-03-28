lbl_802810AC:
/* 802810AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802810B0  7C 08 02 A6 */	mflr r0
/* 802810B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802810B8  7C 66 1B 78 */	mr r6, r3
/* 802810BC  38 A4 00 0C */	addi r5, r4, 0xc
/* 802810C0  38 61 00 08 */	addi r3, r1, 8
/* 802810C4  38 86 00 08 */	addi r4, r6, 8
/* 802810C8  48 05 BB 0D */	bl Erase__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
/* 802810CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802810D0  7C 08 03 A6 */	mtlr r0
/* 802810D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802810D8  4E 80 00 20 */	blr 
