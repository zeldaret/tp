lbl_80542E4C:
/* 80542E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542E50  7C 08 02 A6 */	mflr r0
/* 80542E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542E58  4B D2 02 34 */	b ModuleEpilog
/* 80542E5C  3C 60 80 55 */	lis r3, __destroy_global_chain_reference@ha
/* 80542E60  38 63 A9 58 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80542E64  4B D2 03 2C */	b ModuleDestructorsX
/* 80542E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542E6C  7C 08 03 A6 */	mtlr r0
/* 80542E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80542E74  4E 80 00 20 */	blr 
