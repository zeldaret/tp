lbl_802A67DC:
/* 802A67DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A67E0  7C 08 02 A6 */	mflr r0
/* 802A67E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A67E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A67EC  7C 7F 1B 78 */	mr r31, r3
/* 802A67F0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802A67F4  28 00 00 00 */	cmplwi r0, 0
/* 802A67F8  41 82 00 2C */	beq lbl_802A6824
/* 802A67FC  38 7F 00 04 */	addi r3, r31, 4
/* 802A6800  38 81 00 08 */	addi r4, r1, 8
/* 802A6804  4B FF FF 51 */	bl getSeqDataRegion__16JAUSeqCollectionFP16JAISeqDataRegion
/* 802A6808  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 802A680C  38 81 00 08 */	addi r4, r1, 8
/* 802A6810  81 83 00 00 */	lwz r12, 0(r3)
/* 802A6814  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A6818  7D 89 03 A6 */	mtctr r12
/* 802A681C  4E 80 04 21 */	bctrl 
/* 802A6820  48 00 00 08 */	b lbl_802A6828
lbl_802A6824:
/* 802A6824  38 60 00 02 */	li r3, 2
lbl_802A6828:
/* 802A6828  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A682C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A6830  7C 08 03 A6 */	mtlr r0
/* 802A6834  38 21 00 20 */	addi r1, r1, 0x20
/* 802A6838  4E 80 00 20 */	blr 
