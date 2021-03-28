lbl_805B34D8:
/* 805B34D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B34DC  7C 08 02 A6 */	mflr r0
/* 805B34E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B34E4  4B CA FB AC */	b ModuleUnresolved
/* 805B34E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B34EC  7C 08 03 A6 */	mtlr r0
/* 805B34F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B34F4  4E 80 00 20 */	blr 
