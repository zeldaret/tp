lbl_80C55C20:
/* 80C55C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C55C24  7C 08 02 A6 */	mflr r0
/* 80C55C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C55C2C  3C 60 80 C5 */	lis r3, data_80C56A3C@ha
/* 80C55C30  38 63 6A 3C */	addi r3, r3, data_80C56A3C@l
/* 80C55C34  4B 60 D5 18 */	b ModuleConstructorsX
/* 80C55C38  4B 60 D4 50 */	b ModuleProlog
/* 80C55C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C55C40  7C 08 03 A6 */	mtlr r0
/* 80C55C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C55C48  4E 80 00 20 */	blr 
