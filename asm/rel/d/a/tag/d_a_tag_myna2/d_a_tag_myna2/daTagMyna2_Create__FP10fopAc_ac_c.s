lbl_80D5C9A8:
/* 80D5C9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5C9AC  7C 08 02 A6 */	mflr r0
/* 80D5C9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5C9B4  4B FF FC E5 */	bl create__12daTagMyna2_cFv
/* 80D5C9B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5C9BC  7C 08 03 A6 */	mtlr r0
/* 80D5C9C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5C9C4  4E 80 00 20 */	blr 
