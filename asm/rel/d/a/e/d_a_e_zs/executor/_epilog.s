lbl_80832FEC:
/* 80832FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80832FF0  7C 08 02 A6 */	mflr r0
/* 80832FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80832FF8  4B A3 00 94 */	b ModuleEpilog
/* 80832FFC  3C 60 80 83 */	lis r3, __destroy_global_chain_reference@ha
/* 80833000  38 63 52 C4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80833004  4B A3 01 8C */	b ModuleDestructorsX
/* 80833008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8083300C  7C 08 03 A6 */	mtlr r0
/* 80833010  38 21 00 10 */	addi r1, r1, 0x10
/* 80833014  4E 80 00 20 */	blr 
