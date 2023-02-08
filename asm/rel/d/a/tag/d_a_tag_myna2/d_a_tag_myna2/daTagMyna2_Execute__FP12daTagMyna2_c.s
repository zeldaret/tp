lbl_80D5C9C8:
/* 80D5C9C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5C9CC  7C 08 02 A6 */	mflr r0
/* 80D5C9D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5C9D4  4B FF FD 35 */	bl execute__12daTagMyna2_cFv
/* 80D5C9D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5C9DC  7C 08 03 A6 */	mtlr r0
/* 80D5C9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5C9E4  4E 80 00 20 */	blr 
