lbl_800FB43C:
/* 800FB43C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FB440  7C 08 02 A6 */	mflr r0
/* 800FB444  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FB448  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FB44C  7C 7F 1B 78 */	mr r31, r3
/* 800FB450  38 80 00 58 */	li r4, 0x58
/* 800FB454  4B FC 6B 19 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FB458  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800FB45C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800FB460  41 82 00 5C */	beq lbl_800FB4BC
/* 800FB464  7F E3 FB 78 */	mr r3, r31
/* 800FB468  4B FF F1 61 */	bl checkHangFootWall__9daAlink_cFv
/* 800FB46C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FB470  41 82 00 4C */	beq lbl_800FB4BC
/* 800FB474  3C 60 80 39 */	lis r3, m__20daAlinkHIO_ladder_c0@ha /* 0x8038EB8C@ha */
/* 800FB478  A8 A3 EB 8C */	lha r5, m__20daAlinkHIO_ladder_c0@l(r3)  /* 0x8038EB8C@l */
/* 800FB47C  7F E3 FB 78 */	mr r3, r31
/* 800FB480  38 80 00 A1 */	li r4, 0xa1
/* 800FB484  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FB488  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800FB48C  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 800FB490  90 01 00 0C */	stw r0, 0xc(r1)
/* 800FB494  3C 00 43 30 */	lis r0, 0x4330
/* 800FB498  90 01 00 08 */	stw r0, 8(r1)
/* 800FB49C  C8 01 00 08 */	lfd f0, 8(r1)
/* 800FB4A0  EC 40 10 28 */	fsubs f2, f0, f2
/* 800FB4A4  C0 62 93 3C */	lfs f3, lit_7808(r2)
/* 800FB4A8  4B FB 1B 65 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800FB4AC  38 00 00 FE */	li r0, 0xfe
/* 800FB4B0  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 800FB4B4  98 1F 2F 93 */	stb r0, 0x2f93(r31)
/* 800FB4B8  48 00 00 3C */	b lbl_800FB4F4
lbl_800FB4BC:
/* 800FB4BC  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wallCatch_c0@ha /* 0x8038E164@ha */
/* 800FB4C0  A8 A3 E1 64 */	lha r5, m__23daAlinkHIO_wallCatch_c0@l(r3)  /* 0x8038E164@l */
/* 800FB4C4  7F E3 FB 78 */	mr r3, r31
/* 800FB4C8  38 80 00 92 */	li r4, 0x92
/* 800FB4CC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FB4D0  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800FB4D4  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 800FB4D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800FB4DC  3C 00 43 30 */	lis r0, 0x4330
/* 800FB4E0  90 01 00 08 */	stw r0, 8(r1)
/* 800FB4E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 800FB4E8  EC 40 10 28 */	fsubs f2, f0, f2
/* 800FB4EC  C0 62 93 3C */	lfs f3, lit_7808(r2)
/* 800FB4F0  4B FB 1B 1D */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
lbl_800FB4F4:
/* 800FB4F4  7F E3 FB 78 */	mr r3, r31
/* 800FB4F8  4B FE 47 31 */	bl setBowHangAnime__9daAlink_cFv
/* 800FB4FC  38 00 00 00 */	li r0, 0
/* 800FB500  90 1F 2D 7C */	stw r0, 0x2d7c(r31)
/* 800FB504  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FB508  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800FB50C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800FB510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FB514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FB518  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FB51C  60 00 01 00 */	ori r0, r0, 0x100
/* 800FB520  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FB524  7F E3 FB 78 */	mr r3, r31
/* 800FB528  4B FF F1 BD */	bl setHangGroundY__9daAlink_cFv
/* 800FB52C  38 60 00 01 */	li r3, 1
/* 800FB530  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FB534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FB538  7C 08 03 A6 */	mtlr r0
/* 800FB53C  38 21 00 20 */	addi r1, r1, 0x20
/* 800FB540  4E 80 00 20 */	blr 
