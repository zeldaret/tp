lbl_809CB3E0:
/* 809CB3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CB3E4  7C 08 02 A6 */	mflr r0
/* 809CB3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CB3EC  3C 60 80 9D */	lis r3, data_809CF508@ha
/* 809CB3F0  38 63 F5 08 */	addi r3, r3, data_809CF508@l
/* 809CB3F4  4B 89 7D 58 */	b ModuleConstructorsX
/* 809CB3F8  4B 89 7C 90 */	b ModuleProlog
/* 809CB3FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CB400  7C 08 03 A6 */	mtlr r0
/* 809CB404  38 21 00 10 */	addi r1, r1, 0x10
/* 809CB408  4E 80 00 20 */	blr 
