lbl_802A82F4:
/* 802A82F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A82F8  7C 08 02 A6 */	mflr r0
/* 802A82FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8300  80 83 00 34 */	lwz r4, 0x34(r3)
/* 802A8304  38 04 FF FF */	addi r0, r4, -1
/* 802A8308  90 03 00 34 */	stw r0, 0x34(r3)
/* 802A830C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 802A8310  28 00 00 00 */	cmplwi r0, 0
/* 802A8314  41 82 00 10 */	beq lbl_802A8324
/* 802A8318  4B FF FC 1D */	bl on_select_separate__Q28JMessage10TProcessorFv
/* 802A831C  38 60 00 01 */	li r3, 1
/* 802A8320  48 00 00 0C */	b lbl_802A832C
lbl_802A8324:
/* 802A8324  4B FF FB B9 */	bl on_select_end__Q28JMessage10TProcessorFv
/* 802A8328  38 60 00 01 */	li r3, 1
lbl_802A832C:
/* 802A832C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8330  7C 08 03 A6 */	mtlr r0
/* 802A8334  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8338  4E 80 00 20 */	blr 
