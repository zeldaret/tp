lbl_80541CD8:
/* 80541CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80541CDC  7C 08 02 A6 */	mflr r0
/* 80541CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80541CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80541CE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80541CEC  41 82 00 1C */	beq lbl_80541D08
/* 80541CF0  3C A0 80 54 */	lis r5, __vt__8cM3dGAab@ha /* 0x80541FF8@ha */
/* 80541CF4  38 05 1F F8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80541FF8@l */
/* 80541CF8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80541CFC  7C 80 07 35 */	extsh. r0, r4
/* 80541D00  40 81 00 08 */	ble lbl_80541D08
/* 80541D04  4B D8 D0 39 */	bl __dl__FPv
lbl_80541D08:
/* 80541D08  7F E3 FB 78 */	mr r3, r31
/* 80541D0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80541D10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80541D14  7C 08 03 A6 */	mtlr r0
/* 80541D18  38 21 00 10 */	addi r1, r1, 0x10
/* 80541D1C  4E 80 00 20 */	blr 
