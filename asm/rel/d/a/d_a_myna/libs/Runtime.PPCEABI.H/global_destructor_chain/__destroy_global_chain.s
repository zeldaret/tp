lbl_80945C14:
/* 80945C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80945C18  7C 08 02 A6 */	mflr r0
/* 80945C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80945C20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80945C24  3C 60 80 95 */	lis r3, __global_destructor_chain@ha
/* 80945C28  3B E3 B9 E8 */	addi r31, r3, __global_destructor_chain@l
/* 80945C2C  48 00 00 20 */	b lbl_80945C4C
lbl_80945C30:
/* 80945C30  80 05 00 00 */	lwz r0, 0(r5)
/* 80945C34  90 1F 00 00 */	stw r0, 0(r31)
/* 80945C38  80 65 00 08 */	lwz r3, 8(r5)
/* 80945C3C  38 80 FF FF */	li r4, -1
/* 80945C40  81 85 00 04 */	lwz r12, 4(r5)
/* 80945C44  7D 89 03 A6 */	mtctr r12
/* 80945C48  4E 80 04 21 */	bctrl 
lbl_80945C4C:
/* 80945C4C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80945C50  28 05 00 00 */	cmplwi r5, 0
/* 80945C54  40 82 FF DC */	bne lbl_80945C30
/* 80945C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80945C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80945C60  7C 08 03 A6 */	mtlr r0
/* 80945C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80945C68  4E 80 00 20 */	blr 
