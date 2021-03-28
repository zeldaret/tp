lbl_809F8FCC:
/* 809F8FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F8FD0  7C 08 02 A6 */	mflr r0
/* 809F8FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F8FD8  4B 86 A0 B4 */	b ModuleEpilog
/* 809F8FDC  3C 60 80 A0 */	lis r3, __destroy_global_chain_reference@ha
/* 809F8FE0  38 63 05 F4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809F8FE4  4B 86 A1 AC */	b ModuleDestructorsX
/* 809F8FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F8FEC  7C 08 03 A6 */	mtlr r0
/* 809F8FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809F8FF4  4E 80 00 20 */	blr 
