lbl_80C8D78C:
/* 80C8D78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8D790  7C 08 02 A6 */	mflr r0
/* 80C8D794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8D798  3C 60 80 C9 */	lis r3, l_HIO@ha /* 0x80C8D91C@ha */
/* 80C8D79C  38 63 D9 1C */	addi r3, r3, l_HIO@l /* 0x80C8D91C@l */
/* 80C8D7A0  4B FF F7 0D */	bl __ct__20daLv9SwShutter_HIO_cFv
/* 80C8D7A4  3C 80 80 C9 */	lis r4, __dt__20daLv9SwShutter_HIO_cFv@ha /* 0x80C8D730@ha */
/* 80C8D7A8  38 84 D7 30 */	addi r4, r4, __dt__20daLv9SwShutter_HIO_cFv@l /* 0x80C8D730@l */
/* 80C8D7AC  3C A0 80 C9 */	lis r5, lit_3621@ha /* 0x80C8D910@ha */
/* 80C8D7B0  38 A5 D9 10 */	addi r5, r5, lit_3621@l /* 0x80C8D910@l */
/* 80C8D7B4  4B FF F6 85 */	bl __register_global_object
/* 80C8D7B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8D7BC  7C 08 03 A6 */	mtlr r0
/* 80C8D7C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8D7C4  4E 80 00 20 */	blr 
