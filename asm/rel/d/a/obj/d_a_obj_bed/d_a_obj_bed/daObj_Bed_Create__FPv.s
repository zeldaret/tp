lbl_80BAE034:
/* 80BAE034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAE038  7C 08 02 A6 */	mflr r0
/* 80BAE03C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAE040  4B FF F7 51 */	bl create__11daObj_Bed_cFv
/* 80BAE044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAE048  7C 08 03 A6 */	mtlr r0
/* 80BAE04C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAE050  4E 80 00 20 */	blr 
