lbl_809F3018:
/* 809F3018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F301C  7C 08 02 A6 */	mflr r0
/* 809F3020  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F3024  4B 87 00 6C */	b ModuleUnresolved
/* 809F3028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F302C  7C 08 03 A6 */	mtlr r0
/* 809F3030  38 21 00 10 */	addi r1, r1, 0x10
/* 809F3034  4E 80 00 20 */	blr 
