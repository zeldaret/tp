lbl_809B1AB4:
/* 809B1AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B1AB8  7C 08 02 A6 */	mflr r0
/* 809B1ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B1AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B1AC4  3C 60 80 9C */	lis r3, __global_destructor_chain@ha
/* 809B1AC8  3B E3 A4 10 */	addi r31, r3, __global_destructor_chain@l
/* 809B1ACC  48 00 00 20 */	b lbl_809B1AEC
lbl_809B1AD0:
/* 809B1AD0  80 05 00 00 */	lwz r0, 0(r5)
/* 809B1AD4  90 1F 00 00 */	stw r0, 0(r31)
/* 809B1AD8  80 65 00 08 */	lwz r3, 8(r5)
/* 809B1ADC  38 80 FF FF */	li r4, -1
/* 809B1AE0  81 85 00 04 */	lwz r12, 4(r5)
/* 809B1AE4  7D 89 03 A6 */	mtctr r12
/* 809B1AE8  4E 80 04 21 */	bctrl 
lbl_809B1AEC:
/* 809B1AEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 809B1AF0  28 05 00 00 */	cmplwi r5, 0
/* 809B1AF4  40 82 FF DC */	bne lbl_809B1AD0
/* 809B1AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B1AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B1B00  7C 08 03 A6 */	mtlr r0
/* 809B1B04  38 21 00 10 */	addi r1, r1, 0x10
/* 809B1B08  4E 80 00 20 */	blr 
