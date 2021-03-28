lbl_80AE788C:
/* 80AE788C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE7890  7C 08 02 A6 */	mflr r0
/* 80AE7894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE7898  4B 77 B7 F4 */	b ModuleEpilog
/* 80AE789C  3C 60 80 AF */	lis r3, __destroy_global_chain_reference@ha
/* 80AE78A0  38 63 A3 A4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AE78A4  4B 77 B8 EC */	b ModuleDestructorsX
/* 80AE78A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE78AC  7C 08 03 A6 */	mtlr r0
/* 80AE78B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE78B4  4E 80 00 20 */	blr 
