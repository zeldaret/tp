lbl_802A69F8:
/* 802A69F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A69FC  7C 08 02 A6 */	mflr r0
/* 802A6A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6A04  48 03 57 59 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802A6A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A6A0C  7C 08 03 A6 */	mtlr r0
/* 802A6A10  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6A14  4E 80 00 20 */	blr 
