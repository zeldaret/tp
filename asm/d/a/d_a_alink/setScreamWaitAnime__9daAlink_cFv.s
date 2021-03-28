lbl_800DBC98:
/* 800DBC98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DBC9C  7C 08 02 A6 */	mflr r0
/* 800DBCA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DBCA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DBCA8  7C 7F 1B 78 */	mr r31, r3
/* 800DBCAC  38 80 01 7B */	li r4, 0x17b
/* 800DBCB0  4B FD 12 D1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800DBCB4  7F E3 FB 78 */	mr r3, r31
/* 800DBCB8  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100A9@ha */
/* 800DBCBC  38 84 00 A9 */	addi r4, r4, 0x00A9 /* 0x000100A9@l */
/* 800DBCC0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DBCC4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DBCC8  7D 89 03 A6 */	mtctr r12
/* 800DBCCC  4E 80 04 21 */	bctrl 
/* 800DBCD0  38 00 00 01 */	li r0, 1
/* 800DBCD4  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800DBCD8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DBCDC  D0 21 00 08 */	stfs f1, 8(r1)
/* 800DBCE0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DBCE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800DBCE8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800DBCEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DBCF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DBCF4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DBCF8  38 80 00 05 */	li r4, 5
/* 800DBCFC  38 A0 00 01 */	li r5, 1
/* 800DBD00  38 C1 00 08 */	addi r6, r1, 8
/* 800DBD04  4B F9 3E 0D */	bl StartQuake__12dVibration_cFii4cXyz
/* 800DBD08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DBD0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DBD10  7C 08 03 A6 */	mtlr r0
/* 800DBD14  38 21 00 20 */	addi r1, r1, 0x20
/* 800DBD18  4E 80 00 20 */	blr 
