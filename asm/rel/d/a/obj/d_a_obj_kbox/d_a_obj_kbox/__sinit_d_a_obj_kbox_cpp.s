lbl_80C3EFE0:
/* 80C3EFE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3EFE4  7C 08 02 A6 */	mflr r0
/* 80C3EFE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3EFEC  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C3F294@ha */
/* 80C3EFF0  38 63 F2 94 */	addi r3, r3, l_HIO@l /* 0x80C3F294@l */
/* 80C3EFF4  4B FF E6 19 */	bl __ct__16daObj_Kbox_HIO_cFv
/* 80C3EFF8  3C 80 80 C4 */	lis r4, __dt__16daObj_Kbox_HIO_cFv@ha /* 0x80C3EF98@ha */
/* 80C3EFFC  38 84 EF 98 */	addi r4, r4, __dt__16daObj_Kbox_HIO_cFv@l /* 0x80C3EF98@l */
/* 80C3F000  3C A0 80 C4 */	lis r5, lit_3643@ha /* 0x80C3F288@ha */
/* 80C3F004  38 A5 F2 88 */	addi r5, r5, lit_3643@l /* 0x80C3F288@l */
/* 80C3F008  4B FF E5 91 */	bl __register_global_object
/* 80C3F00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3F010  7C 08 03 A6 */	mtlr r0
/* 80C3F014  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3F018  4E 80 00 20 */	blr 
