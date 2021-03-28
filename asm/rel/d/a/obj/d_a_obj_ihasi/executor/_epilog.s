lbl_80C25FCC:
/* 80C25FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C25FD0  7C 08 02 A6 */	mflr r0
/* 80C25FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C25FD8  4B 63 D0 B4 */	b ModuleEpilog
/* 80C25FDC  3C 60 80 C2 */	lis r3, data_80C26884@ha
/* 80C25FE0  38 63 68 84 */	addi r3, r3, data_80C26884@l
/* 80C25FE4  4B 63 D1 AC */	b ModuleDestructorsX
/* 80C25FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C25FEC  7C 08 03 A6 */	mtlr r0
/* 80C25FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C25FF4  4E 80 00 20 */	blr 
