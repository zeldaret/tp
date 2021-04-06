lbl_80BAC8BC:
/* 80BAC8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAC8C0  7C 08 02 A6 */	mflr r0
/* 80BAC8C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAC8C8  3C 60 80 BB */	lis r3, l_HIO@ha /* 0x80BACC98@ha */
/* 80BAC8CC  38 63 CC 98 */	addi r3, r3, l_HIO@l /* 0x80BACC98@l */
/* 80BAC8D0  4B FF D5 5D */	bl __ct__16daObj_BattaHIO_cFv
/* 80BAC8D4  3C 80 80 BB */	lis r4, __dt__16daObj_BattaHIO_cFv@ha /* 0x80BAC874@ha */
/* 80BAC8D8  38 84 C8 74 */	addi r4, r4, __dt__16daObj_BattaHIO_cFv@l /* 0x80BAC874@l */
/* 80BAC8DC  3C A0 80 BB */	lis r5, lit_3769@ha /* 0x80BACC8C@ha */
/* 80BAC8E0  38 A5 CC 8C */	addi r5, r5, lit_3769@l /* 0x80BACC8C@l */
/* 80BAC8E4  4B FF D4 D5 */	bl __register_global_object
/* 80BAC8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAC8EC  7C 08 03 A6 */	mtlr r0
/* 80BAC8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAC8F4  4E 80 00 20 */	blr 
