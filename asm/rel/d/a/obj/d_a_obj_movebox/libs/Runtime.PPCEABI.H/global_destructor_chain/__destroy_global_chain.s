lbl_8047DA94:
/* 8047DA94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047DA98  7C 08 02 A6 */	mflr r0
/* 8047DA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047DAA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047DAA4  3C 60 80 48 */	lis r3, __global_destructor_chain@ha
/* 8047DAA8  3B E3 18 80 */	addi r31, r3, __global_destructor_chain@l
/* 8047DAAC  48 00 00 20 */	b lbl_8047DACC
lbl_8047DAB0:
/* 8047DAB0  80 05 00 00 */	lwz r0, 0(r5)
/* 8047DAB4  90 1F 00 00 */	stw r0, 0(r31)
/* 8047DAB8  80 65 00 08 */	lwz r3, 8(r5)
/* 8047DABC  38 80 FF FF */	li r4, -1
/* 8047DAC0  81 85 00 04 */	lwz r12, 4(r5)
/* 8047DAC4  7D 89 03 A6 */	mtctr r12
/* 8047DAC8  4E 80 04 21 */	bctrl 
lbl_8047DACC:
/* 8047DACC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8047DAD0  28 05 00 00 */	cmplwi r5, 0
/* 8047DAD4  40 82 FF DC */	bne lbl_8047DAB0
/* 8047DAD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047DADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047DAE0  7C 08 03 A6 */	mtlr r0
/* 8047DAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8047DAE8  4E 80 00 20 */	blr 
