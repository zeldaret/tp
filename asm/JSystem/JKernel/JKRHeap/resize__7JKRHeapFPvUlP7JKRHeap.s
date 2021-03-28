lbl_802CE624:
/* 802CE624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CE628  7C 08 02 A6 */	mflr r0
/* 802CE62C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CE630  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CE634  93 C1 00 08 */	stw r30, 8(r1)
/* 802CE638  7C 7E 1B 78 */	mr r30, r3
/* 802CE63C  7C 9F 23 78 */	mr r31, r4
/* 802CE640  28 05 00 00 */	cmplwi r5, 0
/* 802CE644  40 82 00 18 */	bne lbl_802CE65C
/* 802CE648  48 00 01 F5 */	bl findFromRoot__7JKRHeapFPv
/* 802CE64C  7C 65 1B 79 */	or. r5, r3, r3
/* 802CE650  40 82 00 0C */	bne lbl_802CE65C
/* 802CE654  38 60 FF FF */	li r3, -1
/* 802CE658  48 00 00 14 */	b lbl_802CE66C
lbl_802CE65C:
/* 802CE65C  7C A3 2B 78 */	mr r3, r5
/* 802CE660  7F C4 F3 78 */	mr r4, r30
/* 802CE664  7F E5 FB 78 */	mr r5, r31
/* 802CE668  48 00 00 1D */	bl resize__7JKRHeapFPvUl
lbl_802CE66C:
/* 802CE66C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CE670  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CE674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CE678  7C 08 03 A6 */	mtlr r0
/* 802CE67C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CE680  4E 80 00 20 */	blr 
