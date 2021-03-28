lbl_806A6D50:
/* 806A6D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A6D54  7C 08 02 A6 */	mflr r0
/* 806A6D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A6D5C  3C 60 80 6A */	lis r3, l_HIO@ha
/* 806A6D60  38 63 74 C8 */	addi r3, r3, l_HIO@l
/* 806A6D64  4B FF B5 09 */	bl __ct__12daE_DD_HIO_cFv
/* 806A6D68  3C 80 80 6A */	lis r4, __dt__12daE_DD_HIO_cFv@ha
/* 806A6D6C  38 84 6D 08 */	addi r4, r4, __dt__12daE_DD_HIO_cFv@l
/* 806A6D70  3C A0 80 6A */	lis r5, lit_3919@ha
/* 806A6D74  38 A5 74 BC */	addi r5, r5, lit_3919@l
/* 806A6D78  4B FF B4 81 */	bl __register_global_object
/* 806A6D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A6D80  7C 08 03 A6 */	mtlr r0
/* 806A6D84  38 21 00 10 */	addi r1, r1, 0x10
/* 806A6D88  4E 80 00 20 */	blr 
