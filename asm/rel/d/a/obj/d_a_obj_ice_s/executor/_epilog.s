lbl_80C208EC:
/* 80C208EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C208F0  7C 08 02 A6 */	mflr r0
/* 80C208F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C208F8  4B 64 27 94 */	b ModuleEpilog
/* 80C208FC  3C 60 80 C2 */	lis r3, __destroy_global_chain_reference@ha
/* 80C20900  38 63 1A EC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C20904  4B 64 28 8C */	b ModuleDestructorsX
/* 80C20908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2090C  7C 08 03 A6 */	mtlr r0
/* 80C20910  38 21 00 10 */	addi r1, r1, 0x10
/* 80C20914  4E 80 00 20 */	blr 
