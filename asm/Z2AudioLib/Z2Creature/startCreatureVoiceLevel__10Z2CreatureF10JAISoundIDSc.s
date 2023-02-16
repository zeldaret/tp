lbl_802C0AF8:
/* 802C0AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0AFC  7C 08 02 A6 */	mflr r0
/* 802C0B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0B04  7C A6 2B 78 */	mr r6, r5
/* 802C0B08  80 A4 00 00 */	lwz r5, 0(r4)
/* 802C0B0C  3C 05 FF FB */	addis r0, r5, 0xfffb
/* 802C0B10  28 00 01 F0 */	cmplwi r0, 0x1f0
/* 802C0B14  40 82 00 2C */	bne lbl_802C0B40
/* 802C0B18  80 8D 85 FC */	lwz r4, __OSReport_disable-0x1C(r13)
/* 802C0B1C  88 04 00 2C */	lbz r0, 0x2c(r4)
/* 802C0B20  28 00 00 02 */	cmplwi r0, 2
/* 802C0B24  41 82 00 14 */	beq lbl_802C0B38
/* 802C0B28  80 8D 86 00 */	lwz r4, __OSReport_disable-0x18(r13)
/* 802C0B2C  88 04 00 1C */	lbz r0, 0x1c(r4)
/* 802C0B30  28 00 00 00 */	cmplwi r0, 0
/* 802C0B34  40 82 00 0C */	bne lbl_802C0B40
lbl_802C0B38:
/* 802C0B38  38 60 00 00 */	li r3, 0
/* 802C0B3C  48 00 00 24 */	b lbl_802C0B60
lbl_802C0B40:
/* 802C0B40  90 A1 00 08 */	stw r5, 8(r1)
/* 802C0B44  38 63 00 50 */	addi r3, r3, 0x50
/* 802C0B48  38 81 00 08 */	addi r4, r1, 8
/* 802C0B4C  38 A0 00 00 */	li r5, 0
/* 802C0B50  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C0B54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C0B58  7D 89 03 A6 */	mtctr r12
/* 802C0B5C  4E 80 04 21 */	bctrl 
lbl_802C0B60:
/* 802C0B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0B64  7C 08 03 A6 */	mtlr r0
/* 802C0B68  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0B6C  4E 80 00 20 */	blr 
