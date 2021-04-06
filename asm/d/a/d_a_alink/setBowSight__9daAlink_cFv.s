lbl_800DFCD8:
/* 800DFCD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800DFCDC  7C 08 02 A6 */	mflr r0
/* 800DFCE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 800DFCE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800DFCE8  7C 7F 1B 78 */	mr r31, r3
/* 800DFCEC  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800DFCF0  28 00 00 0A */	cmplwi r0, 0xa
/* 800DFCF4  40 82 00 5C */	bne lbl_800DFD50
/* 800DFCF8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800DFCFC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800DFD00  80 04 5F 18 */	lwz r0, 0x5f18(r4)
/* 800DFD04  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 800DFD08  40 82 00 48 */	bne lbl_800DFD50
/* 800DFD0C  38 81 00 0C */	addi r4, r1, 0xc
/* 800DFD10  38 A1 00 08 */	addi r5, r1, 8
/* 800DFD14  38 C0 00 01 */	li r6, 1
/* 800DFD18  4B FF E9 35 */	bl getArrowFlyData__9daAlink_cCFPfPfi
/* 800DFD1C  7F E3 FB 78 */	mr r3, r31
/* 800DFD20  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 800DFD24  38 81 00 10 */	addi r4, r1, 0x10
/* 800DFD28  4B FD F7 D9 */	bl checkSightLine__9daAlink_cFfP4cXyz
/* 800DFD2C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800DFD30  D0 1F 20 6C */	stfs f0, 0x206c(r31)
/* 800DFD34  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800DFD38  D0 1F 20 70 */	stfs f0, 0x2070(r31)
/* 800DFD3C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800DFD40  D0 1F 20 74 */	stfs f0, 0x2074(r31)
/* 800DFD44  38 00 00 00 */	li r0, 0
/* 800DFD48  98 1F 20 68 */	stb r0, 0x2068(r31)
/* 800DFD4C  48 00 00 0C */	b lbl_800DFD58
lbl_800DFD50:
/* 800DFD50  38 00 00 00 */	li r0, 0
/* 800DFD54  98 1F 20 68 */	stb r0, 0x2068(r31)
lbl_800DFD58:
/* 800DFD58  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800DFD5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800DFD60  7C 08 03 A6 */	mtlr r0
/* 800DFD64  38 21 00 30 */	addi r1, r1, 0x30
/* 800DFD68  4E 80 00 20 */	blr 
