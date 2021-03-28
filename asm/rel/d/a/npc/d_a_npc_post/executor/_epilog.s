lbl_80AA8BCC:
/* 80AA8BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA8BD0  7C 08 02 A6 */	mflr r0
/* 80AA8BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA8BD8  4B 7B A4 B4 */	b ModuleEpilog
/* 80AA8BDC  3C 60 80 AB */	lis r3, __destroy_global_chain_reference@ha
/* 80AA8BE0  38 63 D1 E0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AA8BE4  4B 7B A5 AC */	b ModuleDestructorsX
/* 80AA8BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA8BEC  7C 08 03 A6 */	mtlr r0
/* 80AA8BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA8BF4  4E 80 00 20 */	blr 
