lbl_80AAC34C:
/* 80AAC34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAC350  7C 08 02 A6 */	mflr r0
/* 80AAC354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAC358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAC35C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAC360  41 82 00 1C */	beq lbl_80AAC37C
/* 80AAC364  3C A0 80 AB */	lis r5, __vt__13daNpcT_Path_c@ha /* 0x80AADB08@ha */
/* 80AAC368  38 05 DB 08 */	addi r0, r5, __vt__13daNpcT_Path_c@l /* 0x80AADB08@l */
/* 80AAC36C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80AAC370  7C 80 07 35 */	extsh. r0, r4
/* 80AAC374  40 81 00 08 */	ble lbl_80AAC37C
/* 80AAC378  4B 82 29 C5 */	bl __dl__FPv
lbl_80AAC37C:
/* 80AAC37C  7F E3 FB 78 */	mr r3, r31
/* 80AAC380  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAC384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAC388  7C 08 03 A6 */	mtlr r0
/* 80AAC38C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAC390  4E 80 00 20 */	blr 
