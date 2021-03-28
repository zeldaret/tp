lbl_800DFD6C:
/* 800DFD6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DFD70  7C 08 02 A6 */	mflr r0
/* 800DFD74  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DFD78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DFD7C  7C 7F 1B 78 */	mr r31, r3
/* 800DFD80  38 80 00 5E */	li r4, 0x5e
/* 800DFD84  4B FE 30 21 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DFD88  2C 03 00 00 */	cmpwi r3, 0
/* 800DFD8C  40 82 00 0C */	bne lbl_800DFD98
/* 800DFD90  38 60 00 00 */	li r3, 0
/* 800DFD94  48 00 00 34 */	b lbl_800DFDC8
lbl_800DFD98:
/* 800DFD98  7F E3 FB 78 */	mr r3, r31
/* 800DFD9C  38 80 00 11 */	li r4, 0x11
/* 800DFDA0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DFDA4  3C A0 80 39 */	lis r5, m__17daAlinkHIO_bow_c0@ha
/* 800DFDA8  38 A5 E6 58 */	addi r5, r5, m__17daAlinkHIO_bow_c0@l
/* 800DFDAC  C0 45 00 30 */	lfs f2, 0x30(r5)
/* 800DFDB0  4B FC D2 31 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800DFDB4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DFDB8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800DFDBC  7F E3 FB 78 */	mr r3, r31
/* 800DFDC0  4B FF ED CD */	bl setBowOrSlingStatus__9daAlink_cFv
/* 800DFDC4  38 60 00 01 */	li r3, 1
lbl_800DFDC8:
/* 800DFDC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DFDCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DFDD0  7C 08 03 A6 */	mtlr r0
/* 800DFDD4  38 21 00 10 */	addi r1, r1, 0x10
/* 800DFDD8  4E 80 00 20 */	blr 
