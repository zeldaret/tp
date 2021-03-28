lbl_80BCA24C:
/* 80BCA24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCA250  7C 08 02 A6 */	mflr r0
/* 80BCA254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCA258  4B 69 8E 34 */	b ModuleEpilog
/* 80BCA25C  3C 60 80 BD */	lis r3, __destroy_global_chain_reference@ha
/* 80BCA260  38 63 C5 6C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BCA264  4B 69 8F 2C */	b ModuleDestructorsX
/* 80BCA268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCA26C  7C 08 03 A6 */	mtlr r0
/* 80BCA270  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCA274  4E 80 00 20 */	blr 
