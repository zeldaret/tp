lbl_800CEF70:
/* 800CEF70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CEF74  7C 08 02 A6 */	mflr r0
/* 800CEF78  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CEF7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CEF80  7C 7F 1B 78 */	mr r31, r3
/* 800CEF84  38 80 01 3F */	li r4, 0x13f
/* 800CEF88  4B FF 2F E5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800CEF8C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800CEF90  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800CEF94  7F E3 FB 78 */	mr r3, r31
/* 800CEF98  4B FF FB 5D */	bl setSubjectMode__9daAlink_cFv
/* 800CEF9C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800CEFA0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CEFA4  41 82 00 24 */	beq lbl_800CEFC8
/* 800CEFA8  7F E3 FB 78 */	mr r3, r31
/* 800CEFAC  38 80 00 37 */	li r4, 0x37
/* 800CEFB0  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 800CEFB4  38 A5 F8 B4 */	addi r5, r5, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 800CEFB8  C0 25 00 88 */	lfs f1, 0x88(r5)
/* 800CEFBC  C0 45 00 68 */	lfs f2, 0x68(r5)
/* 800CEFC0  48 05 A7 19 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 800CEFC4  48 00 00 20 */	b lbl_800CEFE4
lbl_800CEFC8:
/* 800CEFC8  7F E3 FB 78 */	mr r3, r31
/* 800CEFCC  38 80 00 14 */	li r4, 0x14
/* 800CEFD0  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 800CEFD4  38 A5 ED 2C */	addi r5, r5, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 800CEFD8  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 800CEFDC  C0 45 00 94 */	lfs f2, 0x94(r5)
/* 800CEFE0  4B FD E0 01 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800CEFE4:
/* 800CEFE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CEFE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CEFEC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800CEFF0  64 00 00 10 */	oris r0, r0, 0x10
/* 800CEFF4  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800CEFF8  38 00 00 00 */	li r0, 0
/* 800CEFFC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800CF000  38 60 00 01 */	li r3, 1
/* 800CF004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CF008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CF00C  7C 08 03 A6 */	mtlr r0
/* 800CF010  38 21 00 10 */	addi r1, r1, 0x10
/* 800CF014  4E 80 00 20 */	blr 
