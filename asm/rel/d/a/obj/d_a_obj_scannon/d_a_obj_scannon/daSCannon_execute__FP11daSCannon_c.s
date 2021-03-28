lbl_80CC8ED4:
/* 80CC8ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC8ED8  7C 08 02 A6 */	mflr r0
/* 80CC8EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC8EE0  4B FF E3 25 */	bl execute__11daSCannon_cFv
/* 80CC8EE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC8EE8  7C 08 03 A6 */	mtlr r0
/* 80CC8EEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC8EF0  4E 80 00 20 */	blr 
