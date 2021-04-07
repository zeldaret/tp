lbl_80A98510:
/* 80A98510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A98514  7C 08 02 A6 */	mflr r0
/* 80A98518  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9851C  4B 6B 00 11 */	bl execute__8daNpcT_cFv
/* 80A98520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A98524  7C 08 03 A6 */	mtlr r0
/* 80A98528  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9852C  4E 80 00 20 */	blr 
