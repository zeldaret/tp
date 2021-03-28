lbl_8059DCD4:
/* 8059DCD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059DCD8  7C 08 02 A6 */	mflr r0
/* 8059DCDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059DCE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059DCE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8059DCE8  41 82 00 1C */	beq lbl_8059DD04
/* 8059DCEC  3C A0 80 5A */	lis r5, __vt__8cM3dGAab@ha
/* 8059DCF0  38 05 E0 88 */	addi r0, r5, __vt__8cM3dGAab@l
/* 8059DCF4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8059DCF8  7C 80 07 35 */	extsh. r0, r4
/* 8059DCFC  40 81 00 08 */	ble lbl_8059DD04
/* 8059DD00  4B D3 10 3C */	b __dl__FPv
lbl_8059DD04:
/* 8059DD04  7F E3 FB 78 */	mr r3, r31
/* 8059DD08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059DD0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059DD10  7C 08 03 A6 */	mtlr r0
/* 8059DD14  38 21 00 10 */	addi r1, r1, 0x10
/* 8059DD18  4E 80 00 20 */	blr 
