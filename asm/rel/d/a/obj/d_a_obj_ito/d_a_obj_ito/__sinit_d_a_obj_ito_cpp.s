lbl_8047D7C0:
/* 8047D7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047D7C4  7C 08 02 A6 */	mflr r0
/* 8047D7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047D7CC  3C 60 80 48 */	lis r3, l_HIO@ha /* 0x8047D9D8@ha */
/* 8047D7D0  38 63 D9 D8 */	addi r3, r3, l_HIO@l /* 0x8047D9D8@l */
/* 8047D7D4  4B FF DB 19 */	bl __ct__15daObj_Ito_HIO_cFv
/* 8047D7D8  3C 80 80 48 */	lis r4, __dt__15daObj_Ito_HIO_cFv@ha /* 0x8047D778@ha */
/* 8047D7DC  38 84 D7 78 */	addi r4, r4, __dt__15daObj_Ito_HIO_cFv@l /* 0x8047D778@l */
/* 8047D7E0  3C A0 80 48 */	lis r5, lit_3765@ha /* 0x8047D9CC@ha */
/* 8047D7E4  38 A5 D9 CC */	addi r5, r5, lit_3765@l /* 0x8047D9CC@l */
/* 8047D7E8  4B FF DA 91 */	bl __register_global_object
/* 8047D7EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D7F0  7C 08 03 A6 */	mtlr r0
/* 8047D7F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D7F8  4E 80 00 20 */	blr 
