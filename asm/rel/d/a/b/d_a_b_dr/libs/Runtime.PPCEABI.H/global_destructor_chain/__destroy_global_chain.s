lbl_805BAE14:
/* 805BAE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BAE18  7C 08 02 A6 */	mflr r0
/* 805BAE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BAE20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BAE24  3C 60 80 5C */	lis r3, __global_destructor_chain@ha
/* 805BAE28  3B E3 78 B8 */	addi r31, r3, __global_destructor_chain@l
/* 805BAE2C  48 00 00 20 */	b lbl_805BAE4C
lbl_805BAE30:
/* 805BAE30  80 05 00 00 */	lwz r0, 0(r5)
/* 805BAE34  90 1F 00 00 */	stw r0, 0(r31)
/* 805BAE38  80 65 00 08 */	lwz r3, 8(r5)
/* 805BAE3C  38 80 FF FF */	li r4, -1
/* 805BAE40  81 85 00 04 */	lwz r12, 4(r5)
/* 805BAE44  7D 89 03 A6 */	mtctr r12
/* 805BAE48  4E 80 04 21 */	bctrl 
lbl_805BAE4C:
/* 805BAE4C  80 BF 00 00 */	lwz r5, 0(r31)
/* 805BAE50  28 05 00 00 */	cmplwi r5, 0
/* 805BAE54  40 82 FF DC */	bne lbl_805BAE30
/* 805BAE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BAE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BAE60  7C 08 03 A6 */	mtlr r0
/* 805BAE64  38 21 00 10 */	addi r1, r1, 0x10
/* 805BAE68  4E 80 00 20 */	blr 
