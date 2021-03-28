lbl_808393EC:
/* 808393EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808393F0  7C 08 02 A6 */	mflr r0
/* 808393F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808393F8  4B FF FB A1 */	bl createHeap__9daHorse_cFv
/* 808393FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80839400  7C 08 03 A6 */	mtlr r0
/* 80839404  38 21 00 10 */	addi r1, r1, 0x10
/* 80839408  4E 80 00 20 */	blr 
