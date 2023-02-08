lbl_80D5C550:
/* 80D5C550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5C554  7C 08 02 A6 */	mflr r0
/* 80D5C558  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5C55C  4B FF FB 4D */	bl execute__12daTagMwait_cFv
/* 80D5C560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5C564  7C 08 03 A6 */	mtlr r0
/* 80D5C568  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5C56C  4E 80 00 20 */	blr 
