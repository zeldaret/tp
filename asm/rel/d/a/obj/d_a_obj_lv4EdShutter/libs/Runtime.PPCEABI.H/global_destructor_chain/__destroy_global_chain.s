lbl_80C5DD54:
/* 80C5DD54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5DD58  7C 08 02 A6 */	mflr r0
/* 80C5DD5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5DD60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5DD64  3C 60 80 C6 */	lis r3, __global_destructor_chain@ha
/* 80C5DD68  3B E3 EA 50 */	addi r31, r3, __global_destructor_chain@l
/* 80C5DD6C  48 00 00 20 */	b lbl_80C5DD8C
lbl_80C5DD70:
/* 80C5DD70  80 05 00 00 */	lwz r0, 0(r5)
/* 80C5DD74  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5DD78  80 65 00 08 */	lwz r3, 8(r5)
/* 80C5DD7C  38 80 FF FF */	li r4, -1
/* 80C5DD80  81 85 00 04 */	lwz r12, 4(r5)
/* 80C5DD84  7D 89 03 A6 */	mtctr r12
/* 80C5DD88  4E 80 04 21 */	bctrl 
lbl_80C5DD8C:
/* 80C5DD8C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C5DD90  28 05 00 00 */	cmplwi r5, 0
/* 80C5DD94  40 82 FF DC */	bne lbl_80C5DD70
/* 80C5DD98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5DD9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5DDA0  7C 08 03 A6 */	mtlr r0
/* 80C5DDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5DDA8  4E 80 00 20 */	blr 
