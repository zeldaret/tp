lbl_804C6D0C:
/* 804C6D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C6D10  7C 08 02 A6 */	mflr r0
/* 804C6D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C6D18  4B D9 C3 74 */	b ModuleEpilog
/* 804C6D1C  3C 60 80 4D */	lis r3, __destroy_global_chain_reference@ha
/* 804C6D20  38 63 C3 34 */	addi r3, r3, __destroy_global_chain_reference@l
/* 804C6D24  4B D9 C4 6C */	b ModuleDestructorsX
/* 804C6D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6D2C  7C 08 03 A6 */	mtlr r0
/* 804C6D30  38 21 00 10 */	addi r1, r1, 0x10
/* 804C6D34  4E 80 00 20 */	blr 
