lbl_80BF1D30:
/* 80BF1D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF1D34  7C 08 02 A6 */	mflr r0
/* 80BF1D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF1D3C  3C 60 80 BF */	lis r3, l_HIO@ha /* 0x80BF1F50@ha */
/* 80BF1D40  38 63 1F 50 */	addi r3, r3, l_HIO@l /* 0x80BF1F50@l */
/* 80BF1D44  4B FF E9 C9 */	bl __ct__16daObj_Food_HIO_cFv
/* 80BF1D48  3C 80 80 BF */	lis r4, __dt__16daObj_Food_HIO_cFv@ha /* 0x80BF1CE8@ha */
/* 80BF1D4C  38 84 1C E8 */	addi r4, r4, __dt__16daObj_Food_HIO_cFv@l /* 0x80BF1CE8@l */
/* 80BF1D50  3C A0 80 BF */	lis r5, lit_3642@ha /* 0x80BF1F44@ha */
/* 80BF1D54  38 A5 1F 44 */	addi r5, r5, lit_3642@l /* 0x80BF1F44@l */
/* 80BF1D58  4B FF E9 41 */	bl __register_global_object
/* 80BF1D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF1D60  7C 08 03 A6 */	mtlr r0
/* 80BF1D64  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF1D68  4E 80 00 20 */	blr 
