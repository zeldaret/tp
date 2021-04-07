lbl_807AF8B8:
/* 807AF8B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AF8BC  7C 08 02 A6 */	mflr r0
/* 807AF8C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AF8C4  3C 60 80 7B */	lis r3, l_HIO@ha /* 0x807B0210@ha */
/* 807AF8C8  38 63 02 10 */	addi r3, r3, l_HIO@l /* 0x807B0210@l */
/* 807AF8CC  4B FF 7B 41 */	bl __ct__12daE_SW_HIO_cFv
/* 807AF8D0  3C 80 80 7B */	lis r4, __dt__12daE_SW_HIO_cFv@ha /* 0x807AF870@ha */
/* 807AF8D4  38 84 F8 70 */	addi r4, r4, __dt__12daE_SW_HIO_cFv@l /* 0x807AF870@l */
/* 807AF8D8  3C A0 80 7B */	lis r5, lit_3925@ha /* 0x807B0204@ha */
/* 807AF8DC  38 A5 02 04 */	addi r5, r5, lit_3925@l /* 0x807B0204@l */
/* 807AF8E0  4B FF 7A B9 */	bl __register_global_object
/* 807AF8E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AF8E8  7C 08 03 A6 */	mtlr r0
/* 807AF8EC  38 21 00 10 */	addi r1, r1, 0x10
/* 807AF8F0  4E 80 00 20 */	blr 
