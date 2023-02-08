lbl_80CB8658:
/* 80CB8658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB865C  7C 08 02 A6 */	mflr r0
/* 80CB8660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8664  48 00 01 B1 */	bl createHeap__14daObjRCircle_cFv
/* 80CB8668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB866C  7C 08 03 A6 */	mtlr r0
/* 80CB8670  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8674  4E 80 00 20 */	blr 
