lbl_80CE7DCC:
/* 80CE7DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE7DD0  7C 08 02 A6 */	mflr r0
/* 80CE7DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7DD8  4B FF F5 B5 */	bl Execute__14daObj_SSItem_cFv
/* 80CE7DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE7DE0  7C 08 03 A6 */	mtlr r0
/* 80CE7DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7DE8  4E 80 00 20 */	blr 
