lbl_805B34AC:
/* 805B34AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B34B0  7C 08 02 A6 */	mflr r0
/* 805B34B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B34B8  4B CA FB D4 */	b ModuleEpilog
/* 805B34BC  3C 60 80 5C */	lis r3, __destroy_global_chain_reference@ha
/* 805B34C0  38 63 A5 7C */	addi r3, r3, __destroy_global_chain_reference@l
/* 805B34C4  4B CA FC CC */	b ModuleDestructorsX
/* 805B34C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B34CC  7C 08 03 A6 */	mtlr r0
/* 805B34D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B34D4  4E 80 00 20 */	blr 
