lbl_809ADE14:
/* 809ADE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809ADE18  7C 08 02 A6 */	mflr r0
/* 809ADE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ADE20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809ADE24  3C 60 80 9B */	lis r3, __global_destructor_chain@ha
/* 809ADE28  3B E3 FC 38 */	addi r31, r3, __global_destructor_chain@l
/* 809ADE2C  48 00 00 20 */	b lbl_809ADE4C
lbl_809ADE30:
/* 809ADE30  80 05 00 00 */	lwz r0, 0(r5)
/* 809ADE34  90 1F 00 00 */	stw r0, 0(r31)
/* 809ADE38  80 65 00 08 */	lwz r3, 8(r5)
/* 809ADE3C  38 80 FF FF */	li r4, -1
/* 809ADE40  81 85 00 04 */	lwz r12, 4(r5)
/* 809ADE44  7D 89 03 A6 */	mtctr r12
/* 809ADE48  4E 80 04 21 */	bctrl 
lbl_809ADE4C:
/* 809ADE4C  80 BF 00 00 */	lwz r5, 0(r31)
/* 809ADE50  28 05 00 00 */	cmplwi r5, 0
/* 809ADE54  40 82 FF DC */	bne lbl_809ADE30
/* 809ADE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809ADE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809ADE60  7C 08 03 A6 */	mtlr r0
/* 809ADE64  38 21 00 10 */	addi r1, r1, 0x10
/* 809ADE68  4E 80 00 20 */	blr 
