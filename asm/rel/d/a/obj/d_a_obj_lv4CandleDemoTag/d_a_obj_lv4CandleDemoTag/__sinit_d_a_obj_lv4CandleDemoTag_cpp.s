lbl_80C5D0D8:
/* 80C5D0D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D0DC  7C 08 02 A6 */	mflr r0
/* 80C5D0E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D0E4  3C 60 80 C6 */	lis r3, l_HIO@ha /* 0x80C5D354@ha */
/* 80C5D0E8  38 63 D3 54 */	addi r3, r3, l_HIO@l /* 0x80C5D354@l */
/* 80C5D0EC  4B FF F9 01 */	bl __ct__24dalv4CandleDemoTag_HIO_cFv
/* 80C5D0F0  3C 80 80 C6 */	lis r4, __dt__24dalv4CandleDemoTag_HIO_cFv@ha /* 0x80C5D07C@ha */
/* 80C5D0F4  38 84 D0 7C */	addi r4, r4, __dt__24dalv4CandleDemoTag_HIO_cFv@l /* 0x80C5D07C@l */
/* 80C5D0F8  3C A0 80 C6 */	lis r5, lit_3632@ha /* 0x80C5D348@ha */
/* 80C5D0FC  38 A5 D3 48 */	addi r5, r5, lit_3632@l /* 0x80C5D348@l */
/* 80C5D100  4B FF F8 79 */	bl __register_global_object
/* 80C5D104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D108  7C 08 03 A6 */	mtlr r0
/* 80C5D10C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D110  4E 80 00 20 */	blr 
