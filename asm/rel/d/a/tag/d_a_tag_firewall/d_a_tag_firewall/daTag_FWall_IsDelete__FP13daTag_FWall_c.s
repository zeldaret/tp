lbl_80D59080:
/* 80D59080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D59084  7C 08 02 A6 */	mflr r0
/* 80D59088  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5908C  4B FF FF ED */	bl _delete__13daTag_FWall_cFv
/* 80D59090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D59094  7C 08 03 A6 */	mtlr r0
/* 80D59098  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5909C  4E 80 00 20 */	blr 
