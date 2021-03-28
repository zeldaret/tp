lbl_80BA7F54:
/* 80BA7F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA7F58  7C 08 02 A6 */	mflr r0
/* 80BA7F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA7F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA7F64  3C 60 80 BB */	lis r3, __global_destructor_chain@ha
/* 80BA7F68  3B E3 8F A8 */	addi r31, r3, __global_destructor_chain@l
/* 80BA7F6C  48 00 00 20 */	b lbl_80BA7F8C
lbl_80BA7F70:
/* 80BA7F70  80 05 00 00 */	lwz r0, 0(r5)
/* 80BA7F74  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA7F78  80 65 00 08 */	lwz r3, 8(r5)
/* 80BA7F7C  38 80 FF FF */	li r4, -1
/* 80BA7F80  81 85 00 04 */	lwz r12, 4(r5)
/* 80BA7F84  7D 89 03 A6 */	mtctr r12
/* 80BA7F88  4E 80 04 21 */	bctrl 
lbl_80BA7F8C:
/* 80BA7F8C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BA7F90  28 05 00 00 */	cmplwi r5, 0
/* 80BA7F94  40 82 FF DC */	bne lbl_80BA7F70
/* 80BA7F98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA7F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA7FA0  7C 08 03 A6 */	mtlr r0
/* 80BA7FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA7FA8  4E 80 00 20 */	blr 
