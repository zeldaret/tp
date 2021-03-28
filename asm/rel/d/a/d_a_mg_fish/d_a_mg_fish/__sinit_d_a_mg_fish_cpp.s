lbl_805360F0:
/* 805360F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805360F4  7C 08 02 A6 */	mflr r0
/* 805360F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805360FC  3C 60 80 53 */	lis r3, l_HIO@ha
/* 80536100  38 63 6B CC */	addi r3, r3, l_HIO@l
/* 80536104  4B FF 3C 29 */	bl __ct__15daMg_Fish_HIO_cFv
/* 80536108  3C 80 80 53 */	lis r4, __dt__15daMg_Fish_HIO_cFv@ha
/* 8053610C  38 84 60 A8 */	addi r4, r4, __dt__15daMg_Fish_HIO_cFv@l
/* 80536110  3C A0 80 53 */	lis r5, lit_3674@ha
/* 80536114  38 A5 6B C0 */	addi r5, r5, lit_3674@l
/* 80536118  4B FF 3B A1 */	bl __register_global_object
/* 8053611C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80536120  7C 08 03 A6 */	mtlr r0
/* 80536124  38 21 00 10 */	addi r1, r1, 0x10
/* 80536128  4E 80 00 20 */	blr 
