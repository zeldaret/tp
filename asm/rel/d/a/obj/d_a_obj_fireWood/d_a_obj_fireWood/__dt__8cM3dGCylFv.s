lbl_80BE7910:
/* 80BE7910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE7914  7C 08 02 A6 */	mflr r0
/* 80BE7918  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE791C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE7920  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE7924  41 82 00 1C */	beq lbl_80BE7940
/* 80BE7928  3C A0 80 BF */	lis r5, __vt__8cM3dGCyl@ha /* 0x80BE80FC@ha */
/* 80BE792C  38 05 80 FC */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80BE80FC@l */
/* 80BE7930  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BE7934  7C 80 07 35 */	extsh. r0, r4
/* 80BE7938  40 81 00 08 */	ble lbl_80BE7940
/* 80BE793C  4B 6E 74 01 */	bl __dl__FPv
lbl_80BE7940:
/* 80BE7940  7F E3 FB 78 */	mr r3, r31
/* 80BE7944  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE7948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE794C  7C 08 03 A6 */	mtlr r0
/* 80BE7950  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE7954  4E 80 00 20 */	blr 
