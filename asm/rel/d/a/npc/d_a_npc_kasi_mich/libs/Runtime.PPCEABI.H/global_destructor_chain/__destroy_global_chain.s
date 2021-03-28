lbl_80A26174:
/* 80A26174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A26178  7C 08 02 A6 */	mflr r0
/* 80A2617C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A26180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A26184  3C 60 80 A3 */	lis r3, __global_destructor_chain@ha
/* 80A26188  3B E3 A7 98 */	addi r31, r3, __global_destructor_chain@l
/* 80A2618C  48 00 00 20 */	b lbl_80A261AC
lbl_80A26190:
/* 80A26190  80 05 00 00 */	lwz r0, 0(r5)
/* 80A26194  90 1F 00 00 */	stw r0, 0(r31)
/* 80A26198  80 65 00 08 */	lwz r3, 8(r5)
/* 80A2619C  38 80 FF FF */	li r4, -1
/* 80A261A0  81 85 00 04 */	lwz r12, 4(r5)
/* 80A261A4  7D 89 03 A6 */	mtctr r12
/* 80A261A8  4E 80 04 21 */	bctrl 
lbl_80A261AC:
/* 80A261AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A261B0  28 05 00 00 */	cmplwi r5, 0
/* 80A261B4  40 82 FF DC */	bne lbl_80A26190
/* 80A261B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A261BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A261C0  7C 08 03 A6 */	mtlr r0
/* 80A261C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A261C8  4E 80 00 20 */	blr 
