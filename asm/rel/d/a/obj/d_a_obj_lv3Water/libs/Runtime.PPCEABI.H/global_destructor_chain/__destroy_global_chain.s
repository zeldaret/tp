lbl_80C58774:
/* 80C58774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C58778  7C 08 02 A6 */	mflr r0
/* 80C5877C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C58780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C58784  3C 60 80 C6 */	lis r3, __global_destructor_chain@ha
/* 80C58788  3B E3 A3 00 */	addi r31, r3, __global_destructor_chain@l
/* 80C5878C  48 00 00 20 */	b lbl_80C587AC
lbl_80C58790:
/* 80C58790  80 05 00 00 */	lwz r0, 0(r5)
/* 80C58794  90 1F 00 00 */	stw r0, 0(r31)
/* 80C58798  80 65 00 08 */	lwz r3, 8(r5)
/* 80C5879C  38 80 FF FF */	li r4, -1
/* 80C587A0  81 85 00 04 */	lwz r12, 4(r5)
/* 80C587A4  7D 89 03 A6 */	mtctr r12
/* 80C587A8  4E 80 04 21 */	bctrl 
lbl_80C587AC:
/* 80C587AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C587B0  28 05 00 00 */	cmplwi r5, 0
/* 80C587B4  40 82 FF DC */	bne lbl_80C58790
/* 80C587B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C587BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C587C0  7C 08 03 A6 */	mtlr r0
/* 80C587C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C587C8  4E 80 00 20 */	blr 
