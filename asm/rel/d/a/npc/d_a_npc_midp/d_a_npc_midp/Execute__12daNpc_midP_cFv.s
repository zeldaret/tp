lbl_80A714F0:
/* 80A714F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A714F4  7C 08 02 A6 */	mflr r0
/* 80A714F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A714FC  4B 6D 70 31 */	bl execute__8daNpcT_cFv
/* 80A71500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A71504  7C 08 03 A6 */	mtlr r0
/* 80A71508  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7150C  4E 80 00 20 */	blr 
