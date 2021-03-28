lbl_80A6AB54:
/* 80A6AB54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6AB58  7C 08 02 A6 */	mflr r0
/* 80A6AB5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6AB60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6AB64  3C 60 80 A7 */	lis r3, __global_destructor_chain@ha
/* 80A6AB68  3B E3 0B 50 */	addi r31, r3, __global_destructor_chain@l
/* 80A6AB6C  48 00 00 20 */	b lbl_80A6AB8C
lbl_80A6AB70:
/* 80A6AB70  80 05 00 00 */	lwz r0, 0(r5)
/* 80A6AB74  90 1F 00 00 */	stw r0, 0(r31)
/* 80A6AB78  80 65 00 08 */	lwz r3, 8(r5)
/* 80A6AB7C  38 80 FF FF */	li r4, -1
/* 80A6AB80  81 85 00 04 */	lwz r12, 4(r5)
/* 80A6AB84  7D 89 03 A6 */	mtctr r12
/* 80A6AB88  4E 80 04 21 */	bctrl 
lbl_80A6AB8C:
/* 80A6AB8C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A6AB90  28 05 00 00 */	cmplwi r5, 0
/* 80A6AB94  40 82 FF DC */	bne lbl_80A6AB70
/* 80A6AB98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6AB9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6ABA0  7C 08 03 A6 */	mtlr r0
/* 80A6ABA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6ABA8  4E 80 00 20 */	blr 
