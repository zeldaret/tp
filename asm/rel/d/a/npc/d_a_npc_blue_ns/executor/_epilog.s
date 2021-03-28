lbl_809688AC:
/* 809688AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809688B0  7C 08 02 A6 */	mflr r0
/* 809688B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809688B8  4B 8F A7 D4 */	b ModuleEpilog
/* 809688BC  3C 60 80 97 */	lis r3, __destroy_global_chain_reference@ha
/* 809688C0  38 63 C9 14 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809688C4  4B 8F A8 CC */	b ModuleDestructorsX
/* 809688C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809688CC  7C 08 03 A6 */	mtlr r0
/* 809688D0  38 21 00 10 */	addi r1, r1, 0x10
/* 809688D4  4E 80 00 20 */	blr 
