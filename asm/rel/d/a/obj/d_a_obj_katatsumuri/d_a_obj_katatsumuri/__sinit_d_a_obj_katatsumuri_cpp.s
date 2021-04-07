lbl_80C3C614:
/* 80C3C614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3C618  7C 08 02 A6 */	mflr r0
/* 80C3C61C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3C620  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C3C848@ha */
/* 80C3C624  38 63 C8 48 */	addi r3, r3, l_HIO@l /* 0x80C3C848@l */
/* 80C3C628  4B FF D3 45 */	bl __ct__14daObj_KatHIO_cFv
/* 80C3C62C  3C 80 80 C4 */	lis r4, __dt__14daObj_KatHIO_cFv@ha /* 0x80C3C5CC@ha */
/* 80C3C630  38 84 C5 CC */	addi r4, r4, __dt__14daObj_KatHIO_cFv@l /* 0x80C3C5CC@l */
/* 80C3C634  3C A0 80 C4 */	lis r5, lit_3770@ha /* 0x80C3C83C@ha */
/* 80C3C638  38 A5 C8 3C */	addi r5, r5, lit_3770@l /* 0x80C3C83C@l */
/* 80C3C63C  4B FF D2 BD */	bl __register_global_object
/* 80C3C640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3C644  7C 08 03 A6 */	mtlr r0
/* 80C3C648  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3C64C  4E 80 00 20 */	blr 
