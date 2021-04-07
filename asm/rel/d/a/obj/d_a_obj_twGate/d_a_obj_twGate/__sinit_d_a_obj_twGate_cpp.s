lbl_80D202B8:
/* 80D202B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D202BC  7C 08 02 A6 */	mflr r0
/* 80D202C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D202C4  3C 60 80 D2 */	lis r3, l_HIO@ha /* 0x80D206AC@ha */
/* 80D202C8  38 63 06 AC */	addi r3, r3, l_HIO@l /* 0x80D206AC@l */
/* 80D202CC  4B FF F7 E1 */	bl __ct__14daTwGate_HIO_cFv
/* 80D202D0  3C 80 80 D2 */	lis r4, __dt__14daTwGate_HIO_cFv@ha /* 0x80D2024C@ha */
/* 80D202D4  38 84 02 4C */	addi r4, r4, __dt__14daTwGate_HIO_cFv@l /* 0x80D2024C@l */
/* 80D202D8  3C A0 80 D2 */	lis r5, lit_3630@ha /* 0x80D206A0@ha */
/* 80D202DC  38 A5 06 A0 */	addi r5, r5, lit_3630@l /* 0x80D206A0@l */
/* 80D202E0  4B FF F7 59 */	bl __register_global_object
/* 80D202E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D202E8  7C 08 03 A6 */	mtlr r0
/* 80D202EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D202F0  4E 80 00 20 */	blr 
