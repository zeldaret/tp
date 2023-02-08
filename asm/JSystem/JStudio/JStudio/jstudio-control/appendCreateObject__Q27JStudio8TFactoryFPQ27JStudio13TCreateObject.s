lbl_80285560:
/* 80285560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80285564  7C 08 02 A6 */	mflr r0
/* 80285568  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028556C  7C 65 1B 78 */	mr r5, r3
/* 80285570  38 05 00 08 */	addi r0, r5, 8
/* 80285574  90 01 00 0C */	stw r0, 0xc(r1)
/* 80285578  90 01 00 08 */	stw r0, 8(r1)
/* 8028557C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80285580  90 01 00 18 */	stw r0, 0x18(r1)
/* 80285584  38 C4 00 04 */	addi r6, r4, 4
/* 80285588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028558C  38 61 00 10 */	addi r3, r1, 0x10
/* 80285590  38 85 00 04 */	addi r4, r5, 4
/* 80285594  38 A1 00 14 */	addi r5, r1, 0x14
/* 80285598  48 05 76 11 */	bl Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
/* 8028559C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802855A0  7C 08 03 A6 */	mtlr r0
/* 802855A4  38 21 00 20 */	addi r1, r1, 0x20
/* 802855A8  4E 80 00 20 */	blr 
