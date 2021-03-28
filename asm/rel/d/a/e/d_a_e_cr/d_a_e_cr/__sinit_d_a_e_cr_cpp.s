lbl_8069983C:
/* 8069983C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80699840  7C 08 02 A6 */	mflr r0
/* 80699844  90 01 00 14 */	stw r0, 0x14(r1)
/* 80699848  3C 60 80 6A */	lis r3, l_HIO@ha
/* 8069984C  38 63 9E 98 */	addi r3, r3, l_HIO@l
/* 80699850  4B FF E7 BD */	bl __ct__12daE_CR_HIO_cFv
/* 80699854  3C 80 80 6A */	lis r4, __dt__12daE_CR_HIO_cFv@ha
/* 80699858  38 84 97 F4 */	addi r4, r4, __dt__12daE_CR_HIO_cFv@l
/* 8069985C  3C A0 80 6A */	lis r5, lit_3804@ha
/* 80699860  38 A5 9E 8C */	addi r5, r5, lit_3804@l
/* 80699864  4B FF E7 35 */	bl __register_global_object
/* 80699868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8069986C  7C 08 03 A6 */	mtlr r0
/* 80699870  38 21 00 10 */	addi r1, r1, 0x10
/* 80699874  4E 80 00 20 */	blr 
