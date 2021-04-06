lbl_8068A1E4:
/* 8068A1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068A1E8  7C 08 02 A6 */	mflr r0
/* 8068A1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068A1F0  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x8068A4C8@ha */
/* 8068A1F4  38 63 A4 C8 */	addi r3, r3, l_HIO@l /* 0x8068A4C8@l */
/* 8068A1F8  4B FF B6 15 */	bl __ct__12daE_BG_HIO_cFv
/* 8068A1FC  3C 80 80 69 */	lis r4, __dt__12daE_BG_HIO_cFv@ha /* 0x8068A19C@ha */
/* 8068A200  38 84 A1 9C */	addi r4, r4, __dt__12daE_BG_HIO_cFv@l /* 0x8068A19C@l */
/* 8068A204  3C A0 80 69 */	lis r5, lit_3763@ha /* 0x8068A4BC@ha */
/* 8068A208  38 A5 A4 BC */	addi r5, r5, lit_3763@l /* 0x8068A4BC@l */
/* 8068A20C  4B FF B5 8D */	bl __register_global_object
/* 8068A210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068A214  7C 08 03 A6 */	mtlr r0
/* 8068A218  38 21 00 10 */	addi r1, r1, 0x10
/* 8068A21C  4E 80 00 20 */	blr 
