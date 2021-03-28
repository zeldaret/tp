lbl_80C53F5C:
/* 80C53F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C53F60  7C 08 02 A6 */	mflr r0
/* 80C53F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C53F68  3C 60 80 C5 */	lis r3, l_HIO@ha
/* 80C53F6C  38 63 40 F8 */	addi r3, r3, l_HIO@l
/* 80C53F70  4B FF F5 FD */	bl __ct__16daObj_Lbox_HIO_cFv
/* 80C53F74  3C 80 80 C5 */	lis r4, __dt__16daObj_Lbox_HIO_cFv@ha
/* 80C53F78  38 84 3F 14 */	addi r4, r4, __dt__16daObj_Lbox_HIO_cFv@l
/* 80C53F7C  3C A0 80 C5 */	lis r5, lit_3763@ha
/* 80C53F80  38 A5 40 EC */	addi r5, r5, lit_3763@l
/* 80C53F84  4B FF F5 75 */	bl __register_global_object
/* 80C53F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C53F8C  7C 08 03 A6 */	mtlr r0
/* 80C53F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C53F94  4E 80 00 20 */	blr 
