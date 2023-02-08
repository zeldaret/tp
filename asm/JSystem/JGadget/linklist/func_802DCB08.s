lbl_802DCB08:
/* 802DCB08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802DCB0C  7C 08 02 A6 */	mflr r0
/* 802DCB10  90 01 00 44 */	stw r0, 0x44(r1)
/* 802DCB14  39 61 00 40 */	addi r11, r1, 0x40
/* 802DCB18  48 08 56 C5 */	bl _savegpr_29
/* 802DCB1C  7C 7D 1B 78 */	mr r29, r3
/* 802DCB20  7C 9E 23 78 */	mr r30, r4
/* 802DCB24  80 C6 00 00 */	lwz r6, 0(r6)
/* 802DCB28  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 802DCB2C  80 66 00 00 */	lwz r3, 0(r6)
/* 802DCB30  90 61 00 08 */	stw r3, 8(r1)
/* 802DCB34  90 C1 00 24 */	stw r6, 0x24(r1)
/* 802DCB38  80 04 00 00 */	lwz r0, 0(r4)
/* 802DCB3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802DCB40  90 01 00 28 */	stw r0, 0x28(r1)
/* 802DCB44  7C 00 30 40 */	cmplw r0, r6
/* 802DCB48  41 82 00 48 */	beq lbl_802DCB90
/* 802DCB4C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802DCB50  90 01 00 20 */	stw r0, 0x20(r1)
/* 802DCB54  7C 00 18 40 */	cmplw r0, r3
/* 802DCB58  40 82 00 08 */	bne lbl_802DCB60
/* 802DCB5C  48 00 00 34 */	b lbl_802DCB90
lbl_802DCB60:
/* 802DCB60  7C DF 33 78 */	mr r31, r6
/* 802DCB64  38 61 00 18 */	addi r3, r1, 0x18
/* 802DCB68  7C A4 2B 78 */	mr r4, r5
/* 802DCB6C  7C C5 33 78 */	mr r5, r6
/* 802DCB70  48 00 00 65 */	bl Erase__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
/* 802DCB74  80 1E 00 00 */	lwz r0, 0(r30)
/* 802DCB78  90 01 00 10 */	stw r0, 0x10(r1)
/* 802DCB7C  38 61 00 14 */	addi r3, r1, 0x14
/* 802DCB80  7F A4 EB 78 */	mr r4, r29
/* 802DCB84  38 A1 00 10 */	addi r5, r1, 0x10
/* 802DCB88  7F E6 FB 78 */	mr r6, r31
/* 802DCB8C  48 00 00 1D */	bl Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
lbl_802DCB90:
/* 802DCB90  39 61 00 40 */	addi r11, r1, 0x40
/* 802DCB94  48 08 56 95 */	bl _restgpr_29
/* 802DCB98  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802DCB9C  7C 08 03 A6 */	mtlr r0
/* 802DCBA0  38 21 00 40 */	addi r1, r1, 0x40
/* 802DCBA4  4E 80 00 20 */	blr 
