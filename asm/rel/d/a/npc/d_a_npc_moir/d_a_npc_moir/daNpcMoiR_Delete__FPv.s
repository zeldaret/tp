lbl_80A81064:
/* 80A81064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A81068  7C 08 02 A6 */	mflr r0
/* 80A8106C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A81070  4B FF BD D9 */	bl Delete__11daNpcMoiR_cFv
/* 80A81074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A81078  7C 08 03 A6 */	mtlr r0
/* 80A8107C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A81080  4E 80 00 20 */	blr 
