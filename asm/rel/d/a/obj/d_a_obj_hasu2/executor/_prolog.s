lbl_80C18220:
/* 80C18220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18224  7C 08 02 A6 */	mflr r0
/* 80C18228  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1822C  3C 60 80 C2 */	lis r3, data_80C18A50@ha
/* 80C18230  38 63 8A 50 */	addi r3, r3, data_80C18A50@l
/* 80C18234  4B 64 AF 18 */	b ModuleConstructorsX
/* 80C18238  4B 64 AE 50 */	b ModuleProlog
/* 80C1823C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18240  7C 08 03 A6 */	mtlr r0
/* 80C18244  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18248  4E 80 00 20 */	blr 
