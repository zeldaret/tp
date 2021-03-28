lbl_802DB680:
/* 802DB680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB684  7C 08 02 A6 */	mflr r0
/* 802DB688  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB68C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DB690  7C 7F 1B 78 */	mr r31, r3
/* 802DB694  80 0D 8F 30 */	lwz r0, sDecompObject__9JKRDecomp(r13)
/* 802DB698  28 00 00 00 */	cmplwi r0, 0
/* 802DB69C  40 82 00 2C */	bne lbl_802DB6C8
/* 802DB6A0  38 60 00 7C */	li r3, 0x7c
/* 802DB6A4  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802DB6A8  38 A0 00 00 */	li r5, 0
/* 802DB6AC  4B FF 35 ED */	bl __nw__FUlP7JKRHeapi
/* 802DB6B0  7C 60 1B 79 */	or. r0, r3, r3
/* 802DB6B4  41 82 00 10 */	beq lbl_802DB6C4
/* 802DB6B8  7F E4 FB 78 */	mr r4, r31
/* 802DB6BC  48 00 00 25 */	bl __ct__9JKRDecompFl
/* 802DB6C0  7C 60 1B 78 */	mr r0, r3
lbl_802DB6C4:
/* 802DB6C4  90 0D 8F 30 */	stw r0, sDecompObject__9JKRDecomp(r13)
lbl_802DB6C8:
/* 802DB6C8  80 6D 8F 30 */	lwz r3, sDecompObject__9JKRDecomp(r13)
/* 802DB6CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DB6D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB6D4  7C 08 03 A6 */	mtlr r0
/* 802DB6D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB6DC  4E 80 00 20 */	blr 
