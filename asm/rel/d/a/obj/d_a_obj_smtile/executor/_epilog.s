lbl_80CDD1EC:
/* 80CDD1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDD1F0  7C 08 02 A6 */	mflr r0
/* 80CDD1F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDD1F8  4B 58 5E 94 */	b ModuleEpilog
/* 80CDD1FC  3C 60 80 CE */	lis r3, __destroy_global_chain_reference@ha
/* 80CDD200  38 63 E3 50 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CDD204  4B 58 5F 8C */	b ModuleDestructorsX
/* 80CDD208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDD20C  7C 08 03 A6 */	mtlr r0
/* 80CDD210  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDD214  4E 80 00 20 */	blr 
