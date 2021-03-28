lbl_80BBC878:
/* 80BBC878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBC87C  7C 08 02 A6 */	mflr r0
/* 80BBC880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBC884  4B 6A 68 0C */	b ModuleUnresolved
/* 80BBC888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBC88C  7C 08 03 A6 */	mtlr r0
/* 80BBC890  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBC894  4E 80 00 20 */	blr 
