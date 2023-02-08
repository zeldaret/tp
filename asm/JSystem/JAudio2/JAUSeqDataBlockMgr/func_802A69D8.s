lbl_802A69D8:
/* 802A69D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A69DC  7C 08 02 A6 */	mflr r0
/* 802A69E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A69E4  48 03 55 69 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802A69E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A69EC  7C 08 03 A6 */	mtlr r0
/* 802A69F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A69F4  4E 80 00 20 */	blr 
