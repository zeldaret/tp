lbl_80C8CE54:
/* 80C8CE54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8CE58  7C 08 02 A6 */	mflr r0
/* 80C8CE5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8CE60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8CE64  3C 60 80 C9 */	lis r3, __global_destructor_chain@ha
/* 80C8CE68  3B E3 D9 08 */	addi r31, r3, __global_destructor_chain@l
/* 80C8CE6C  48 00 00 20 */	b lbl_80C8CE8C
lbl_80C8CE70:
/* 80C8CE70  80 05 00 00 */	lwz r0, 0(r5)
/* 80C8CE74  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8CE78  80 65 00 08 */	lwz r3, 8(r5)
/* 80C8CE7C  38 80 FF FF */	li r4, -1
/* 80C8CE80  81 85 00 04 */	lwz r12, 4(r5)
/* 80C8CE84  7D 89 03 A6 */	mtctr r12
/* 80C8CE88  4E 80 04 21 */	bctrl 
lbl_80C8CE8C:
/* 80C8CE8C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C8CE90  28 05 00 00 */	cmplwi r5, 0
/* 80C8CE94  40 82 FF DC */	bne lbl_80C8CE70
/* 80C8CE98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8CE9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8CEA0  7C 08 03 A6 */	mtlr r0
/* 80C8CEA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8CEA8  4E 80 00 20 */	blr 
