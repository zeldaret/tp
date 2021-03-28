lbl_80694AA0:
/* 80694AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80694AA4  7C 08 02 A6 */	mflr r0
/* 80694AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80694AAC  3C 60 80 69 */	lis r3, data_80697C8C@ha
/* 80694AB0  38 63 7C 8C */	addi r3, r3, data_80697C8C@l
/* 80694AB4  4B BC E6 98 */	b ModuleConstructorsX
/* 80694AB8  4B BC E5 D0 */	b ModuleProlog
/* 80694ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80694AC0  7C 08 03 A6 */	mtlr r0
/* 80694AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80694AC8  4E 80 00 20 */	blr 
