lbl_80500F34:
/* 80500F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80500F38  7C 08 02 A6 */	mflr r0
/* 80500F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500F40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80500F44  3C 60 80 50 */	lis r3, __global_destructor_chain@ha
/* 80500F48  3B E3 49 48 */	addi r31, r3, __global_destructor_chain@l
/* 80500F4C  48 00 00 20 */	b lbl_80500F6C
lbl_80500F50:
/* 80500F50  80 05 00 00 */	lwz r0, 0(r5)
/* 80500F54  90 1F 00 00 */	stw r0, 0(r31)
/* 80500F58  80 65 00 08 */	lwz r3, 8(r5)
/* 80500F5C  38 80 FF FF */	li r4, -1
/* 80500F60  81 85 00 04 */	lwz r12, 4(r5)
/* 80500F64  7D 89 03 A6 */	mtctr r12
/* 80500F68  4E 80 04 21 */	bctrl 
lbl_80500F6C:
/* 80500F6C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80500F70  28 05 00 00 */	cmplwi r5, 0
/* 80500F74  40 82 FF DC */	bne lbl_80500F50
/* 80500F78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80500F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80500F80  7C 08 03 A6 */	mtlr r0
/* 80500F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80500F88  4E 80 00 20 */	blr 
