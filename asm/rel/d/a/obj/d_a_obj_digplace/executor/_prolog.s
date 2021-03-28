lbl_8057BF20:
/* 8057BF20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BF24  7C 08 02 A6 */	mflr r0
/* 8057BF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BF2C  3C 60 80 58 */	lis r3, data_8057C8A8@ha
/* 8057BF30  38 63 C8 A8 */	addi r3, r3, data_8057C8A8@l
/* 8057BF34  4B CE 72 18 */	b ModuleConstructorsX
/* 8057BF38  4B CE 71 50 */	b ModuleProlog
/* 8057BF3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BF40  7C 08 03 A6 */	mtlr r0
/* 8057BF44  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BF48  4E 80 00 20 */	blr 
