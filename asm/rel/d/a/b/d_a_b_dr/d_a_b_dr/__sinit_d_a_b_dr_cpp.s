lbl_805C6C14:
/* 805C6C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C6C18  7C 08 02 A6 */	mflr r0
/* 805C6C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C6C20  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805C6C24  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805C6C28  4B FF 42 45 */	bl __ct__12daB_DR_HIO_cFv
/* 805C6C2C  3C 80 80 5C */	lis r4, __dt__12daB_DR_HIO_cFv@ha
/* 805C6C30  38 84 6B 94 */	addi r4, r4, __dt__12daB_DR_HIO_cFv@l
/* 805C6C34  3C A0 80 5C */	lis r5, lit_3795@ha
/* 805C6C38  38 A5 79 00 */	addi r5, r5, lit_3795@l
/* 805C6C3C  4B FF 41 BD */	bl __register_global_object
/* 805C6C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C6C44  7C 08 03 A6 */	mtlr r0
/* 805C6C48  38 21 00 10 */	addi r1, r1, 0x10
/* 805C6C4C  4E 80 00 20 */	blr 
