lbl_80BCC518:
/* 80BCC518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCC51C  7C 08 02 A6 */	mflr r0
/* 80BCC520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCC524  3C 60 80 BD */	lis r3, l_HIO@ha /* 0x80BCC760@ha */
/* 80BCC528  38 63 C7 60 */	addi r3, r3, l_HIO@l /* 0x80BCC760@l */
/* 80BCC52C  4B FF DD E1 */	bl __ct__14daObj_ChoHIO_cFv
/* 80BCC530  3C 80 80 BD */	lis r4, __dt__14daObj_ChoHIO_cFv@ha /* 0x80BCC4D0@ha */
/* 80BCC534  38 84 C4 D0 */	addi r4, r4, __dt__14daObj_ChoHIO_cFv@l /* 0x80BCC4D0@l */
/* 80BCC538  3C A0 80 BD */	lis r5, lit_3770@ha /* 0x80BCC754@ha */
/* 80BCC53C  38 A5 C7 54 */	addi r5, r5, lit_3770@l /* 0x80BCC754@l */
/* 80BCC540  4B FF DD 59 */	bl __register_global_object
/* 80BCC544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCC548  7C 08 03 A6 */	mtlr r0
/* 80BCC54C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCC550  4E 80 00 20 */	blr 
