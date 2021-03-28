lbl_807BA20C:
/* 807BA20C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BA210  7C 08 02 A6 */	mflr r0
/* 807BA214  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BA218  3C 60 80 7C */	lis r3, l_HIO@ha
/* 807BA21C  38 63 A4 48 */	addi r3, r3, l_HIO@l
/* 807BA220  4B FF DF CD */	bl __ct__12daE_TK_HIO_cFv
/* 807BA224  3C 80 80 7C */	lis r4, __dt__12daE_TK_HIO_cFv@ha
/* 807BA228  38 84 A1 C4 */	addi r4, r4, __dt__12daE_TK_HIO_cFv@l
/* 807BA22C  3C A0 80 7C */	lis r5, lit_3757@ha
/* 807BA230  38 A5 A4 3C */	addi r5, r5, lit_3757@l
/* 807BA234  4B FF DF 45 */	bl __register_global_object
/* 807BA238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BA23C  7C 08 03 A6 */	mtlr r0
/* 807BA240  38 21 00 10 */	addi r1, r1, 0x10
/* 807BA244  4E 80 00 20 */	blr 
