lbl_80756E30:
/* 80756E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80756E34  7C 08 02 A6 */	mflr r0
/* 80756E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80756E3C  3C 60 80 75 */	lis r3, l_HIO@ha
/* 80756E40  38 63 7E 5C */	addi r3, r3, l_HIO@l
/* 80756E44  4B FF 57 09 */	bl __ct__12daE_PO_HIO_cFv
/* 80756E48  3C 80 80 75 */	lis r4, __dt__12daE_PO_HIO_cFv@ha
/* 80756E4C  38 84 6D E8 */	addi r4, r4, __dt__12daE_PO_HIO_cFv@l
/* 80756E50  3C A0 80 75 */	lis r5, lit_3933@ha
/* 80756E54  38 A5 7E 50 */	addi r5, r5, lit_3933@l
/* 80756E58  4B FF 56 81 */	bl __register_global_object
/* 80756E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80756E60  7C 08 03 A6 */	mtlr r0
/* 80756E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80756E68  4E 80 00 20 */	blr 
