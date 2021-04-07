lbl_80136F54:
/* 80136F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136F58  7C 08 02 A6 */	mflr r0
/* 80136F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136F64  7C 7F 1B 78 */	mr r31, r3
/* 80136F68  38 80 01 0A */	li r4, 0x10a
/* 80136F6C  4B F8 B0 01 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80136F70  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 80136F74  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80136F78  41 82 00 10 */	beq lbl_80136F88
/* 80136F7C  7F E3 FB 78 */	mr r3, r31
/* 80136F80  4B FF FF 45 */	bl setWolfScreamWaitAnime__9daAlink_cFv
/* 80136F84  48 00 00 30 */	b lbl_80136FB4
lbl_80136F88:
/* 80136F88  7F E3 FB 78 */	mr r3, r31
/* 80136F8C  38 80 00 00 */	li r4, 0
/* 80136F90  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlMoveNoP_c0@ha /* 0x8038EF28@ha */
/* 80136F94  38 A5 EF 28 */	addi r5, r5, m__23daAlinkHIO_wlMoveNoP_c0@l /* 0x8038EF28@l */
/* 80136F98  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 80136F9C  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 80136FA0  38 A5 EE 28 */	addi r5, r5, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 80136FA4  C0 45 00 BC */	lfs f2, 0xbc(r5)
/* 80136FA8  4B FF 27 31 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 80136FAC  38 00 00 00 */	li r0, 0
/* 80136FB0  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_80136FB4:
/* 80136FB4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80136FB8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80136FBC  38 00 00 00 */	li r0, 0
/* 80136FC0  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 80136FC4  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 80136FC8  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 80136FCC  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 80136FD0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80136FD4  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 80136FD8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80136FDC  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 80136FE0  38 60 00 01 */	li r3, 1
/* 80136FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136FEC  7C 08 03 A6 */	mtlr r0
/* 80136FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80136FF4  4E 80 00 20 */	blr 
