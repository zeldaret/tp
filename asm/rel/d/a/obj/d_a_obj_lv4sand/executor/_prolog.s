lbl_80C69A20:
/* 80C69A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C69A24  7C 08 02 A6 */	mflr r0
/* 80C69A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C69A2C  3C 60 80 C7 */	lis r3, data_80C6A3B0@ha
/* 80C69A30  38 63 A3 B0 */	addi r3, r3, data_80C6A3B0@l
/* 80C69A34  4B 5F 97 18 */	b ModuleConstructorsX
/* 80C69A38  4B 5F 96 50 */	b ModuleProlog
/* 80C69A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C69A40  7C 08 03 A6 */	mtlr r0
/* 80C69A44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C69A48  4E 80 00 20 */	blr 
