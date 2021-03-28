lbl_80CB5160:
/* 80CB5160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB5164  7C 08 02 A6 */	mflr r0
/* 80CB5168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB516C  3C 60 80 CB */	lis r3, data_80CB560C@ha
/* 80CB5170  38 63 56 0C */	addi r3, r3, data_80CB560C@l
/* 80CB5174  4B 5A DF D8 */	b ModuleConstructorsX
/* 80CB5178  4B 5A DF 10 */	b ModuleProlog
/* 80CB517C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB5180  7C 08 03 A6 */	mtlr r0
/* 80CB5184  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5188  4E 80 00 20 */	blr 
