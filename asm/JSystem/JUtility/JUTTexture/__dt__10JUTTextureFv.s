lbl_802DE234:
/* 802DE234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE238  7C 08 02 A6 */	mflr r0
/* 802DE23C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE244  93 C1 00 08 */	stw r30, 8(r1)
/* 802DE248  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DE24C  7C 9F 23 78 */	mr r31, r4
/* 802DE250  41 82 00 3C */	beq lbl_802DE28C
/* 802DE254  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 802DE258  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802DE25C  41 82 00 0C */	beq lbl_802DE268
/* 802DE260  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 802DE264  4B FF 0A FD */	bl __dla__FPv
lbl_802DE268:
/* 802DE268  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 802DE26C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802DE270  41 82 00 0C */	beq lbl_802DE27C
/* 802DE274  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 802DE278  4B FF 0A C5 */	bl __dl__FPv
lbl_802DE27C:
/* 802DE27C  7F E0 07 35 */	extsh. r0, r31
/* 802DE280  40 81 00 0C */	ble lbl_802DE28C
/* 802DE284  7F C3 F3 78 */	mr r3, r30
/* 802DE288  4B FF 0A B5 */	bl __dl__FPv
lbl_802DE28C:
/* 802DE28C  7F C3 F3 78 */	mr r3, r30
/* 802DE290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DE294  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DE298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE29C  7C 08 03 A6 */	mtlr r0
/* 802DE2A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE2A4  4E 80 00 20 */	blr 
