lbl_8078DBCC:
/* 8078DBCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078DBD0  7C 08 02 A6 */	mflr r0
/* 8078DBD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078DBD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8078DBDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8078DBE0  41 82 00 1C */	beq lbl_8078DBFC
/* 8078DBE4  3C A0 80 79 */	lis r5, __vt__8cM3dGAab@ha
/* 8078DBE8  38 05 E0 58 */	addi r0, r5, __vt__8cM3dGAab@l
/* 8078DBEC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8078DBF0  7C 80 07 35 */	extsh. r0, r4
/* 8078DBF4  40 81 00 08 */	ble lbl_8078DBFC
/* 8078DBF8  4B B4 11 44 */	b __dl__FPv
lbl_8078DBFC:
/* 8078DBFC  7F E3 FB 78 */	mr r3, r31
/* 8078DC00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8078DC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078DC08  7C 08 03 A6 */	mtlr r0
/* 8078DC0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8078DC10  4E 80 00 20 */	blr 
