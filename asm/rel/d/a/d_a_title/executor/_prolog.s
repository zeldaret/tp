lbl_80D66A20:
/* 80D66A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66A24  7C 08 02 A6 */	mflr r0
/* 80D66A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66A2C  3C 60 80 D6 */	lis r3, data_80D67BC0@ha
/* 80D66A30  38 63 7B C0 */	addi r3, r3, data_80D67BC0@l
/* 80D66A34  4B 4F C7 18 */	b ModuleConstructorsX
/* 80D66A38  4B 4F C6 50 */	b ModuleProlog
/* 80D66A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D66A40  7C 08 03 A6 */	mtlr r0
/* 80D66A44  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66A48  4E 80 00 20 */	blr 
