lbl_802A677C:
/* 802A677C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A6780  7C 08 02 A6 */	mflr r0
/* 802A6784  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A678C  7C 7F 1B 78 */	mr r31, r3
/* 802A6790  3C 60 80 3D */	lis r3, __vt__13JAISeqDataMgr@ha /* 0x803C9928@ha */
/* 802A6794  38 03 99 28 */	addi r0, r3, __vt__13JAISeqDataMgr@l /* 0x803C9928@l */
/* 802A6798  90 1F 00 00 */	stw r0, 0(r31)
/* 802A679C  38 7F 00 04 */	addi r3, r31, 4
/* 802A67A0  4B FF FF 01 */	bl __ct__16JAUSeqCollectionFv
/* 802A67A4  3C 60 80 3D */	lis r3, __vt__27JAUSeqDataMgr_SeqCollection@ha /* 0x803C9B38@ha */
/* 802A67A8  38 03 9B 38 */	addi r0, r3, __vt__27JAUSeqDataMgr_SeqCollection@l /* 0x803C9B38@l */
/* 802A67AC  90 1F 00 00 */	stw r0, 0(r31)
/* 802A67B0  38 00 00 00 */	li r0, 0
/* 802A67B4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 802A67B8  7F E3 FB 78 */	mr r3, r31
/* 802A67BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A67C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A67C4  7C 08 03 A6 */	mtlr r0
/* 802A67C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A67CC  4E 80 00 20 */	blr 
