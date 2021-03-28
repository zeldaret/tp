lbl_80C44C20:
/* 80C44C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44C24  7C 08 02 A6 */	mflr r0
/* 80C44C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44C2C  3C 60 80 C4 */	lis r3, data_80C45180@ha
/* 80C44C30  38 63 51 80 */	addi r3, r3, data_80C45180@l
/* 80C44C34  4B 61 E5 18 */	b ModuleConstructorsX
/* 80C44C38  4B 61 E4 50 */	b ModuleProlog
/* 80C44C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44C40  7C 08 03 A6 */	mtlr r0
/* 80C44C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C44C48  4E 80 00 20 */	blr 
