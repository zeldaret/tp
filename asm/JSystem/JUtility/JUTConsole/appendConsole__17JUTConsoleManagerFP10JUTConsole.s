lbl_802E8240:
/* 802E8240  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E8244  7C 08 02 A6 */	mflr r0
/* 802E8248  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E824C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802E8250  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802E8254  7C 7E 1B 78 */	mr r30, r3
/* 802E8258  7C 9F 23 78 */	mr r31, r4
/* 802E825C  38 1E 00 04 */	addi r0, r30, 4
/* 802E8260  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E8264  90 01 00 08 */	stw r0, 8(r1)
/* 802E8268  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E826C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E8270  38 DF 00 18 */	addi r6, r31, 0x18
/* 802E8274  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8278  38 61 00 10 */	addi r3, r1, 0x10
/* 802E827C  7F C4 F3 78 */	mr r4, r30
/* 802E8280  38 A1 00 14 */	addi r5, r1, 0x14
/* 802E8284  4B FF 49 25 */	bl Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
/* 802E8288  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802E828C  28 00 00 00 */	cmplwi r0, 0
/* 802E8290  40 82 00 08 */	bne lbl_802E8298
/* 802E8294  93 FE 00 0C */	stw r31, 0xc(r30)
lbl_802E8298:
/* 802E8298  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802E829C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802E82A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E82A4  7C 08 03 A6 */	mtlr r0
/* 802E82A8  38 21 00 30 */	addi r1, r1, 0x30
/* 802E82AC  4E 80 00 20 */	blr 
