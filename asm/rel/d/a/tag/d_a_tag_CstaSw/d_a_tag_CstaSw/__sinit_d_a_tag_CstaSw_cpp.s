lbl_805A24DC:
/* 805A24DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A24E0  7C 08 02 A6 */	mflr r0
/* 805A24E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A24E8  3C 60 80 5A */	lis r3, l_HIO@ha /* 0x805A25CC@ha */
/* 805A24EC  38 63 25 CC */	addi r3, r3, l_HIO@l /* 0x805A25CC@l */
/* 805A24F0  4B FF FB 3D */	bl __ct__17daTagCstaSw_HIO_cFv
/* 805A24F4  3C 80 80 5A */	lis r4, __dt__17daTagCstaSw_HIO_cFv@ha /* 0x805A2480@ha */
/* 805A24F8  38 84 24 80 */	addi r4, r4, __dt__17daTagCstaSw_HIO_cFv@l /* 0x805A2480@l */
/* 805A24FC  3C A0 80 5A */	lis r5, lit_3619@ha /* 0x805A25C0@ha */
/* 805A2500  38 A5 25 C0 */	addi r5, r5, lit_3619@l /* 0x805A25C0@l */
/* 805A2504  4B FF FA B5 */	bl __register_global_object
/* 805A2508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A250C  7C 08 03 A6 */	mtlr r0
/* 805A2510  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2514  4E 80 00 20 */	blr 
