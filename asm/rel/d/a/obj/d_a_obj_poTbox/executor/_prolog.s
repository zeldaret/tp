lbl_80CB4160:
/* 80CB4160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4164  7C 08 02 A6 */	mflr r0
/* 80CB4168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB416C  3C 60 80 CB */	lis r3, data_80CB4FAC@ha
/* 80CB4170  38 63 4F AC */	addi r3, r3, data_80CB4FAC@l
/* 80CB4174  4B 5A EF D8 */	b ModuleConstructorsX
/* 80CB4178  4B 5A EF 10 */	b ModuleProlog
/* 80CB417C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4180  7C 08 03 A6 */	mtlr r0
/* 80CB4184  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4188  4E 80 00 20 */	blr 
