lbl_8065340C:
/* 8065340C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80653410  7C 08 02 A6 */	mflr r0
/* 80653414  90 01 00 14 */	stw r0, 0x14(r1)
/* 80653418  4B C0 FC 74 */	b ModuleEpilog
/* 8065341C  3C 60 80 65 */	lis r3, __destroy_global_chain_reference@ha
/* 80653420  38 63 55 A0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80653424  4B C0 FD 6C */	b ModuleDestructorsX
/* 80653428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065342C  7C 08 03 A6 */	mtlr r0
/* 80653430  38 21 00 10 */	addi r1, r1, 0x10
/* 80653434  4E 80 00 20 */	blr 
