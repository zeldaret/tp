lbl_809DF838:
/* 809DF838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DF83C  7C 08 02 A6 */	mflr r0
/* 809DF840  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DF844  4B 88 38 4C */	b ModuleUnresolved
/* 809DF848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DF84C  7C 08 03 A6 */	mtlr r0
/* 809DF850  38 21 00 10 */	addi r1, r1, 0x10
/* 809DF854  4E 80 00 20 */	blr 
