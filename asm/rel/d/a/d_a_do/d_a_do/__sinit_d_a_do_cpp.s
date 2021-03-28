lbl_8066ED88:
/* 8066ED88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066ED8C  7C 08 02 A6 */	mflr r0
/* 8066ED90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066ED94  3C 60 80 67 */	lis r3, l_HIO@ha
/* 8066ED98  38 63 F2 C4 */	addi r3, r3, l_HIO@l
/* 8066ED9C  4B FF 8F B1 */	bl __ct__10daDo_HIO_cFv
/* 8066EDA0  3C 80 80 67 */	lis r4, __dt__10daDo_HIO_cFv@ha
/* 8066EDA4  38 84 ED 40 */	addi r4, r4, __dt__10daDo_HIO_cFv@l
/* 8066EDA8  3C A0 80 67 */	lis r5, lit_3657@ha
/* 8066EDAC  38 A5 F2 B8 */	addi r5, r5, lit_3657@l
/* 8066EDB0  4B FF 8F 29 */	bl __register_global_object
/* 8066EDB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066EDB8  7C 08 03 A6 */	mtlr r0
/* 8066EDBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8066EDC0  4E 80 00 20 */	blr 
