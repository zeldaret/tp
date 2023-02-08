lbl_802A6B8C:
/* 802A6B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A6B90  7C 08 02 A6 */	mflr r0
/* 802A6B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6B98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6B9C  93 C1 00 08 */	stw r30, 8(r1)
/* 802A6BA0  7C 7E 1B 78 */	mr r30, r3
/* 802A6BA4  7C 9F 23 78 */	mr r31, r4
/* 802A6BA8  48 00 03 35 */	bl rearrangeLoadingSeqs___23JAUDynamicSeqDataBlocksFv
/* 802A6BAC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802A6BB0  3C 03 00 01 */	addis r0, r3, 1
/* 802A6BB4  28 00 FF FF */	cmplwi r0, 0xffff
/* 802A6BB8  40 82 00 14 */	bne lbl_802A6BCC
/* 802A6BBC  7F C3 F3 78 */	mr r3, r30
/* 802A6BC0  7F E4 FB 78 */	mr r4, r31
/* 802A6BC4  4B FF FE 15 */	bl func_802A69D8
/* 802A6BC8  48 00 00 10 */	b lbl_802A6BD8
lbl_802A6BCC:
/* 802A6BCC  38 7E 00 18 */	addi r3, r30, 0x18
/* 802A6BD0  7F E4 FB 78 */	mr r4, r31
/* 802A6BD4  4B FF FE 05 */	bl func_802A69D8
lbl_802A6BD8:
/* 802A6BD8  38 60 00 01 */	li r3, 1
/* 802A6BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A6BE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A6BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A6BE8  7C 08 03 A6 */	mtlr r0
/* 802A6BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6BF0  4E 80 00 20 */	blr 
