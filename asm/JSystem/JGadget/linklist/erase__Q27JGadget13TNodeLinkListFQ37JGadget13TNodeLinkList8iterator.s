lbl_802DCA58:
/* 802DCA58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DCA5C  7C 08 02 A6 */	mflr r0
/* 802DCA60  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DCA64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DCA68  80 A5 00 00 */	lwz r5, 0(r5)
/* 802DCA6C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802DCA70  80 05 00 00 */	lwz r0, 0(r5)
/* 802DCA74  90 01 00 08 */	stw r0, 8(r1)
/* 802DCA78  90 01 00 0C */	stw r0, 0xc(r1)
/* 802DCA7C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802DCA80  38 A1 00 10 */	addi r5, r1, 0x10
/* 802DCA84  38 C1 00 0C */	addi r6, r1, 0xc
/* 802DCA88  48 00 00 19 */	bl erase__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorQ37JGadget13TNodeLinkList8iterator
/* 802DCA8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DCA90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DCA94  7C 08 03 A6 */	mtlr r0
/* 802DCA98  38 21 00 20 */	addi r1, r1, 0x20
/* 802DCA9C  4E 80 00 20 */	blr 
