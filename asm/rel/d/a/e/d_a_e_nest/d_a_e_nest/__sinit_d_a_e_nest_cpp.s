lbl_8050467C:
/* 8050467C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504680  7C 08 02 A6 */	mflr r0
/* 80504684  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504688  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x80504960@ha */
/* 8050468C  38 63 49 60 */	addi r3, r3, l_HIO@l /* 0x80504960@l */
/* 80504690  4B FF C8 FD */	bl __ct__14daE_Nest_HIO_cFv
/* 80504694  3C 80 80 50 */	lis r4, __dt__14daE_Nest_HIO_cFv@ha /* 0x80504634@ha */
/* 80504698  38 84 46 34 */	addi r4, r4, __dt__14daE_Nest_HIO_cFv@l /* 0x80504634@l */
/* 8050469C  3C A0 80 50 */	lis r5, lit_3994@ha /* 0x80504954@ha */
/* 805046A0  38 A5 49 54 */	addi r5, r5, lit_3994@l /* 0x80504954@l */
/* 805046A4  4B FF C8 75 */	bl __register_global_object
/* 805046A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805046AC  7C 08 03 A6 */	mtlr r0
/* 805046B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805046B4  4E 80 00 20 */	blr 
