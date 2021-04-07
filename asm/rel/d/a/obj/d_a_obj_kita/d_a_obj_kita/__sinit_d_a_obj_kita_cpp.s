lbl_80C45ECC:
/* 80C45ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C45ED0  7C 08 02 A6 */	mflr r0
/* 80C45ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C45ED8  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C46000@ha */
/* 80C45EDC  38 63 60 00 */	addi r3, r3, l_HIO@l /* 0x80C46000@l */
/* 80C45EE0  4B FF F4 6D */	bl __ct__16daObj_Kita_HIO_cFv
/* 80C45EE4  3C 80 80 C4 */	lis r4, __dt__16daObj_Kita_HIO_cFv@ha /* 0x80C45E84@ha */
/* 80C45EE8  38 84 5E 84 */	addi r4, r4, __dt__16daObj_Kita_HIO_cFv@l /* 0x80C45E84@l */
/* 80C45EEC  3C A0 80 C4 */	lis r5, lit_3764@ha /* 0x80C45FF4@ha */
/* 80C45EF0  38 A5 5F F4 */	addi r5, r5, lit_3764@l /* 0x80C45FF4@l */
/* 80C45EF4  4B FF F3 E5 */	bl __register_global_object
/* 80C45EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C45EFC  7C 08 03 A6 */	mtlr r0
/* 80C45F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80C45F04  4E 80 00 20 */	blr 
