lbl_804DA4F4:
/* 804DA4F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA4F8  7C 08 02 A6 */	mflr r0
/* 804DA4FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DA504  3C 60 80 4E */	lis r3, __global_destructor_chain@ha
/* 804DA508  3B E3 D7 F0 */	addi r31, r3, __global_destructor_chain@l
/* 804DA50C  48 00 00 20 */	b lbl_804DA52C
lbl_804DA510:
/* 804DA510  80 05 00 00 */	lwz r0, 0(r5)
/* 804DA514  90 1F 00 00 */	stw r0, 0(r31)
/* 804DA518  80 65 00 08 */	lwz r3, 8(r5)
/* 804DA51C  38 80 FF FF */	li r4, -1
/* 804DA520  81 85 00 04 */	lwz r12, 4(r5)
/* 804DA524  7D 89 03 A6 */	mtctr r12
/* 804DA528  4E 80 04 21 */	bctrl 
lbl_804DA52C:
/* 804DA52C  80 BF 00 00 */	lwz r5, 0(r31)
/* 804DA530  28 05 00 00 */	cmplwi r5, 0
/* 804DA534  40 82 FF DC */	bne lbl_804DA510
/* 804DA538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DA53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA540  7C 08 03 A6 */	mtlr r0
/* 804DA544  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA548  4E 80 00 20 */	blr 
