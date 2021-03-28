lbl_8073A20C:
/* 8073A20C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073A210  7C 08 02 A6 */	mflr r0
/* 8073A214  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073A218  4B B2 8E 74 */	b ModuleEpilog
/* 8073A21C  3C 60 80 74 */	lis r3, __destroy_global_chain_reference@ha
/* 8073A220  38 63 CE 9C */	addi r3, r3, __destroy_global_chain_reference@l
/* 8073A224  4B B2 8F 6C */	b ModuleDestructorsX
/* 8073A228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073A22C  7C 08 03 A6 */	mtlr r0
/* 8073A230  38 21 00 10 */	addi r1, r1, 0x10
/* 8073A234  4E 80 00 20 */	blr 
