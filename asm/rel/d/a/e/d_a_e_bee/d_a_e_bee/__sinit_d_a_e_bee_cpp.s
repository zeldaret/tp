lbl_806853E4:
/* 806853E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806853E8  7C 08 02 A6 */	mflr r0
/* 806853EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806853F0  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x80685684@ha */
/* 806853F4  38 63 56 84 */	addi r3, r3, l_HIO@l /* 0x80685684@l */
/* 806853F8  4B FF D4 75 */	bl __ct__13daE_Bee_HIO_cFv
/* 806853FC  3C 80 80 68 */	lis r4, __dt__13daE_Bee_HIO_cFv@ha /* 0x8068539C@ha */
/* 80685400  38 84 53 9C */	addi r4, r4, __dt__13daE_Bee_HIO_cFv@l /* 0x8068539C@l */
/* 80685404  3C A0 80 68 */	lis r5, lit_3765@ha /* 0x80685678@ha */
/* 80685408  38 A5 56 78 */	addi r5, r5, lit_3765@l /* 0x80685678@l */
/* 8068540C  4B FF D3 ED */	bl __register_global_object
/* 80685410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80685414  7C 08 03 A6 */	mtlr r0
/* 80685418  38 21 00 10 */	addi r1, r1, 0x10
/* 8068541C  4E 80 00 20 */	blr 
