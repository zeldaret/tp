lbl_807918FC:
/* 807918FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80791900  7C 08 02 A6 */	mflr r0
/* 80791904  90 01 00 14 */	stw r0, 0x14(r1)
/* 80791908  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8079190C  38 63 21 08 */	addi r3, r3, l_HIO@l
/* 80791910  4B FF CA 3D */	bl __ct__12daE_SH_HIO_cFv
/* 80791914  3C 80 80 79 */	lis r4, __dt__12daE_SH_HIO_cFv@ha
/* 80791918  38 84 18 B4 */	addi r4, r4, __dt__12daE_SH_HIO_cFv@l
/* 8079191C  3C A0 80 79 */	lis r5, lit_3918@ha
/* 80791920  38 A5 20 FC */	addi r5, r5, lit_3918@l
/* 80791924  4B FF C9 B5 */	bl __register_global_object
/* 80791928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079192C  7C 08 03 A6 */	mtlr r0
/* 80791930  38 21 00 10 */	addi r1, r1, 0x10
/* 80791934  4E 80 00 20 */	blr 
