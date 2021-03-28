lbl_80284750:
/* 80284750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284754  7C 08 02 A6 */	mflr r0
/* 80284758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028475C  7C 66 1B 78 */	mr r6, r3
/* 80284760  38 A4 00 0C */	addi r5, r4, 0xc
/* 80284764  38 61 00 08 */	addi r3, r1, 8
/* 80284768  38 86 00 08 */	addi r4, r6, 8
/* 8028476C  48 05 84 69 */	bl Erase__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
/* 80284770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80284774  7C 08 03 A6 */	mtlr r0
/* 80284778  38 21 00 10 */	addi r1, r1, 0x10
/* 8028477C  4E 80 00 20 */	blr 
