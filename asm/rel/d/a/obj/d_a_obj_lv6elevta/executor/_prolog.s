lbl_80C82CC0:
/* 80C82CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82CC4  7C 08 02 A6 */	mflr r0
/* 80C82CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82CCC  3C 60 80 C8 */	lis r3, data_80C83808@ha
/* 80C82CD0  38 63 38 08 */	addi r3, r3, data_80C83808@l
/* 80C82CD4  4B 5E 04 78 */	b ModuleConstructorsX
/* 80C82CD8  4B 5E 03 B0 */	b ModuleProlog
/* 80C82CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82CE0  7C 08 03 A6 */	mtlr r0
/* 80C82CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82CE8  4E 80 00 20 */	blr 
