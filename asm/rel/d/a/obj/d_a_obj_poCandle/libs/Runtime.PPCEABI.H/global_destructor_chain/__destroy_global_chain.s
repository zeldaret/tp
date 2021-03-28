lbl_80CB1A14:
/* 80CB1A14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1A18  7C 08 02 A6 */	mflr r0
/* 80CB1A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1A20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB1A24  3C 60 80 CB */	lis r3, __global_destructor_chain@ha
/* 80CB1A28  3B E3 28 38 */	addi r31, r3, __global_destructor_chain@l
/* 80CB1A2C  48 00 00 20 */	b lbl_80CB1A4C
lbl_80CB1A30:
/* 80CB1A30  80 05 00 00 */	lwz r0, 0(r5)
/* 80CB1A34  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB1A38  80 65 00 08 */	lwz r3, 8(r5)
/* 80CB1A3C  38 80 FF FF */	li r4, -1
/* 80CB1A40  81 85 00 04 */	lwz r12, 4(r5)
/* 80CB1A44  7D 89 03 A6 */	mtctr r12
/* 80CB1A48  4E 80 04 21 */	bctrl 
lbl_80CB1A4C:
/* 80CB1A4C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CB1A50  28 05 00 00 */	cmplwi r5, 0
/* 80CB1A54  40 82 FF DC */	bne lbl_80CB1A30
/* 80CB1A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB1A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB1A60  7C 08 03 A6 */	mtlr r0
/* 80CB1A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1A68  4E 80 00 20 */	blr 
