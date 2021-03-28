lbl_80C21C8C:
/* 80C21C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C21C90  7C 08 02 A6 */	mflr r0
/* 80C21C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C21C98  4B 64 13 F4 */	b ModuleEpilog
/* 80C21C9C  3C 60 80 C2 */	lis r3, data_80C242F0@ha
/* 80C21CA0  38 63 42 F0 */	addi r3, r3, data_80C242F0@l
/* 80C21CA4  4B 64 14 EC */	b ModuleDestructorsX
/* 80C21CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C21CAC  7C 08 03 A6 */	mtlr r0
/* 80C21CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C21CB4  4E 80 00 20 */	blr 
