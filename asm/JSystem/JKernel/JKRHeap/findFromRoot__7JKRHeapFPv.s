lbl_802CE83C:
/* 802CE83C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CE840  7C 08 02 A6 */	mflr r0
/* 802CE844  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CE848  7C 64 1B 78 */	mr r4, r3
/* 802CE84C  80 6D 8D F8 */	lwz r3, sRootHeap__7JKRHeap(r13)
/* 802CE850  28 03 00 00 */	cmplwi r3, 0
/* 802CE854  40 82 00 0C */	bne lbl_802CE860
/* 802CE858  38 60 00 00 */	li r3, 0
/* 802CE85C  48 00 00 28 */	b lbl_802CE884
lbl_802CE860:
/* 802CE860  80 03 00 30 */	lwz r0, 0x30(r3)
/* 802CE864  7C 00 20 40 */	cmplw r0, r4
/* 802CE868  41 81 00 18 */	bgt lbl_802CE880
/* 802CE86C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 802CE870  7C 04 00 40 */	cmplw r4, r0
/* 802CE874  40 80 00 0C */	bge lbl_802CE880
/* 802CE878  48 00 00 1D */	bl find__7JKRHeapCFPv
/* 802CE87C  48 00 00 08 */	b lbl_802CE884
lbl_802CE880:
/* 802CE880  48 00 00 BD */	bl findAllHeap__7JKRHeapCFPv
lbl_802CE884:
/* 802CE884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CE888  7C 08 03 A6 */	mtlr r0
/* 802CE88C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CE890  4E 80 00 20 */	blr 
