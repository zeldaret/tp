lbl_80ACB70C:
/* 80ACB70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACB710  7C 08 02 A6 */	mflr r0
/* 80ACB714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACB718  4B 79 79 74 */	b ModuleEpilog
/* 80ACB71C  3C 60 80 AD */	lis r3, __destroy_global_chain_reference@ha
/* 80ACB720  38 63 FD E4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80ACB724  4B 79 7A 6C */	b ModuleDestructorsX
/* 80ACB728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACB72C  7C 08 03 A6 */	mtlr r0
/* 80ACB730  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACB734  4E 80 00 20 */	blr 
