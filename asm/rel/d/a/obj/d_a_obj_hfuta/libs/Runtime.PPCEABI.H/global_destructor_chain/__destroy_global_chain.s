lbl_80C1DD34:
/* 80C1DD34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1DD38  7C 08 02 A6 */	mflr r0
/* 80C1DD3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1DD40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1DD44  3C 60 80 C2 */	lis r3, __global_destructor_chain@ha
/* 80C1DD48  3B E3 EF 88 */	addi r31, r3, __global_destructor_chain@l
/* 80C1DD4C  48 00 00 20 */	b lbl_80C1DD6C
lbl_80C1DD50:
/* 80C1DD50  80 05 00 00 */	lwz r0, 0(r5)
/* 80C1DD54  90 1F 00 00 */	stw r0, 0(r31)
/* 80C1DD58  80 65 00 08 */	lwz r3, 8(r5)
/* 80C1DD5C  38 80 FF FF */	li r4, -1
/* 80C1DD60  81 85 00 04 */	lwz r12, 4(r5)
/* 80C1DD64  7D 89 03 A6 */	mtctr r12
/* 80C1DD68  4E 80 04 21 */	bctrl 
lbl_80C1DD6C:
/* 80C1DD6C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C1DD70  28 05 00 00 */	cmplwi r5, 0
/* 80C1DD74  40 82 FF DC */	bne lbl_80C1DD50
/* 80C1DD78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1DD7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1DD80  7C 08 03 A6 */	mtlr r0
/* 80C1DD84  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1DD88  4E 80 00 20 */	blr 
