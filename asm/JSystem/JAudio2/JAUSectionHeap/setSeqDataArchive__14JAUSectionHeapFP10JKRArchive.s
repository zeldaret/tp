lbl_802A5E60:
/* 802A5E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A5E64  7C 08 02 A6 */	mflr r0
/* 802A5E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A5E6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A5E70  93 C1 00 08 */	stw r30, 8(r1)
/* 802A5E74  7C 7F 1B 78 */	mr r31, r3
/* 802A5E78  7C 9E 23 78 */	mr r30, r4
/* 802A5E7C  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 802A5E80  48 00 0C 21 */	bl setSeqDataArchive__23JAUDynamicSeqDataBlocksFP10JKRArchive
/* 802A5E84  83 FF 00 E8 */	lwz r31, 0xe8(r31)
/* 802A5E88  48 00 00 18 */	b lbl_802A5EA0
lbl_802A5E8C:
/* 802A5E8C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A5E90  38 63 00 38 */	addi r3, r3, 0x38
/* 802A5E94  7F C4 F3 78 */	mr r4, r30
/* 802A5E98  48 00 0C 09 */	bl setSeqDataArchive__23JAUDynamicSeqDataBlocksFP10JKRArchive
/* 802A5E9C  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802A5EA0:
/* 802A5EA0  28 1F 00 00 */	cmplwi r31, 0
/* 802A5EA4  40 82 FF E8 */	bne lbl_802A5E8C
/* 802A5EA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A5EAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A5EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A5EB4  7C 08 03 A6 */	mtlr r0
/* 802A5EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A5EBC  4E 80 00 20 */	blr 
