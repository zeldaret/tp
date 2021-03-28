lbl_80B4C054:
/* 80B4C054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4C058  7C 08 02 A6 */	mflr r0
/* 80B4C05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4C060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4C064  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4C068  41 82 00 1C */	beq lbl_80B4C084
/* 80B4C06C  3C A0 80 B5 */	lis r5, __vt__8cM3dGAab@ha
/* 80B4C070  38 05 D0 F8 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80B4C074  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B4C078  7C 80 07 35 */	extsh. r0, r4
/* 80B4C07C  40 81 00 08 */	ble lbl_80B4C084
/* 80B4C080  4B 78 2C BC */	b __dl__FPv
lbl_80B4C084:
/* 80B4C084  7F E3 FB 78 */	mr r3, r31
/* 80B4C088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4C08C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4C090  7C 08 03 A6 */	mtlr r0
/* 80B4C094  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4C098  4E 80 00 20 */	blr 
