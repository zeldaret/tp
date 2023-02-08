lbl_80D5EC48:
/* 80D5EC48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5EC4C  7C 08 02 A6 */	mflr r0
/* 80D5EC50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5EC54  38 80 FF FF */	li r4, -1
/* 80D5EC58  4B FF F2 21 */	bl __dt__9daTagQs_cFv
/* 80D5EC5C  38 60 00 01 */	li r3, 1
/* 80D5EC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5EC64  7C 08 03 A6 */	mtlr r0
/* 80D5EC68  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5EC6C  4E 80 00 20 */	blr 
