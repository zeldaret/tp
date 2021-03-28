lbl_80284704:
/* 80284704  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80284708  7C 08 02 A6 */	mflr r0
/* 8028470C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80284710  7C 65 1B 78 */	mr r5, r3
/* 80284714  38 05 00 0C */	addi r0, r5, 0xc
/* 80284718  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028471C  90 01 00 08 */	stw r0, 8(r1)
/* 80284720  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80284724  90 01 00 18 */	stw r0, 0x18(r1)
/* 80284728  38 C4 00 0C */	addi r6, r4, 0xc
/* 8028472C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80284730  38 61 00 10 */	addi r3, r1, 0x10
/* 80284734  38 85 00 08 */	addi r4, r5, 8
/* 80284738  38 A1 00 14 */	addi r5, r1, 0x14
/* 8028473C  48 05 84 6D */	bl Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
/* 80284740  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80284744  7C 08 03 A6 */	mtlr r0
/* 80284748  38 21 00 20 */	addi r1, r1, 0x20
/* 8028474C  4E 80 00 20 */	blr 
