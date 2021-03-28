lbl_807584D8:
/* 807584D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807584DC  7C 08 02 A6 */	mflr r0
/* 807584E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807584E4  4B B0 AB AC */	b ModuleUnresolved
/* 807584E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807584EC  7C 08 03 A6 */	mtlr r0
/* 807584F0  38 21 00 10 */	addi r1, r1, 0x10
/* 807584F4  4E 80 00 20 */	blr 
