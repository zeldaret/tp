lbl_80BDC338:
/* 80BDC338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDC33C  7C 08 02 A6 */	mflr r0
/* 80BDC340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDC344  3C 60 80 BE */	lis r3, l_HIO@ha /* 0x80BDC578@ha */
/* 80BDC348  38 63 C5 78 */	addi r3, r3, l_HIO@l /* 0x80BDC578@l */
/* 80BDC34C  4B FF E2 41 */	bl __ct__14daObj_DanHIO_cFv
/* 80BDC350  3C 80 80 BE */	lis r4, __dt__14daObj_DanHIO_cFv@ha /* 0x80BDC2F0@ha */
/* 80BDC354  38 84 C2 F0 */	addi r4, r4, __dt__14daObj_DanHIO_cFv@l /* 0x80BDC2F0@l */
/* 80BDC358  3C A0 80 BE */	lis r5, lit_3770@ha /* 0x80BDC56C@ha */
/* 80BDC35C  38 A5 C5 6C */	addi r5, r5, lit_3770@l /* 0x80BDC56C@l */
/* 80BDC360  4B FF E1 B9 */	bl __register_global_object
/* 80BDC364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDC368  7C 08 03 A6 */	mtlr r0
/* 80BDC36C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDC370  4E 80 00 20 */	blr 
