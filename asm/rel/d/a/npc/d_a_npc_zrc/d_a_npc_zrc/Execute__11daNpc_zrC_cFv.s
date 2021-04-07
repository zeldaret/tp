lbl_80B8E864:
/* 80B8E864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8E868  7C 08 02 A6 */	mflr r0
/* 80B8E86C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8E870  4B 5C 37 A5 */	bl execute__8daNpcF_cFv
/* 80B8E874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8E878  7C 08 03 A6 */	mtlr r0
/* 80B8E87C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8E880  4E 80 00 20 */	blr 
