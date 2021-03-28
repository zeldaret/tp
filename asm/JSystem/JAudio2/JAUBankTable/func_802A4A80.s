lbl_802A4A80:
/* 802A4A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4A84  7C 08 02 A6 */	mflr r0
/* 802A4A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4A8C  48 03 74 C1 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802A4A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4A94  7C 08 03 A6 */	mtlr r0
/* 802A4A98  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4A9C  4E 80 00 20 */	blr 
