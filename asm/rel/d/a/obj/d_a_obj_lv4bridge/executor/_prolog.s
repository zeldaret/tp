lbl_80C62800:
/* 80C62800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C62804  7C 08 02 A6 */	mflr r0
/* 80C62808  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6280C  3C 60 80 C6 */	lis r3, data_80C63168@ha
/* 80C62810  38 63 31 68 */	addi r3, r3, data_80C63168@l
/* 80C62814  4B 60 09 38 */	b ModuleConstructorsX
/* 80C62818  4B 60 08 70 */	b ModuleProlog
/* 80C6281C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C62820  7C 08 03 A6 */	mtlr r0
/* 80C62824  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62828  4E 80 00 20 */	blr 
