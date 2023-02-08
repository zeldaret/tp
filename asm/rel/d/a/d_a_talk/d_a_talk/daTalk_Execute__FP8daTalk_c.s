lbl_80D6672C:
/* 80D6672C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66730  7C 08 02 A6 */	mflr r0
/* 80D66734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66738  4B FF FD 75 */	bl execute__8daTalk_cFv
/* 80D6673C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D66740  7C 08 03 A6 */	mtlr r0
/* 80D66744  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66748  4E 80 00 20 */	blr 
