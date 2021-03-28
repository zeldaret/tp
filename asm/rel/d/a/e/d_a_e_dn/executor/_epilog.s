lbl_804E50EC:
/* 804E50EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E50F0  7C 08 02 A6 */	mflr r0
/* 804E50F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E50F8  4B D7 DF 94 */	b ModuleEpilog
/* 804E50FC  3C 60 80 4F */	lis r3, __destroy_global_chain_reference@ha
/* 804E5100  38 63 E8 A0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 804E5104  4B D7 E0 8C */	b ModuleDestructorsX
/* 804E5108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E510C  7C 08 03 A6 */	mtlr r0
/* 804E5110  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5114  4E 80 00 20 */	blr 
