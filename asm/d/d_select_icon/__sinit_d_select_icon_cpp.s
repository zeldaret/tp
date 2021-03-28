lbl_80195C64:
/* 80195C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80195C68  7C 08 02 A6 */	mflr r0
/* 80195C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80195C70  38 6D 8A D0 */	la r3, g_siHIO(r13) /* 80451050-_SDA_BASE_ */
/* 80195C74  4B FF FD B9 */	bl __ct__9dSi_HIO_cFv
/* 80195C78  3C 80 80 19 */	lis r4, __dt__9dSi_HIO_cFv@ha
/* 80195C7C  38 84 5C 1C */	addi r4, r4, __dt__9dSi_HIO_cFv@l
/* 80195C80  3C A0 80 43 */	lis r5, lit_3648@ha
/* 80195C84  38 A5 CA 10 */	addi r5, r5, lit_3648@l
/* 80195C88  48 1C BF 9D */	bl __register_global_object
/* 80195C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80195C90  7C 08 03 A6 */	mtlr r0
/* 80195C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80195C98  4E 80 00 20 */	blr 
