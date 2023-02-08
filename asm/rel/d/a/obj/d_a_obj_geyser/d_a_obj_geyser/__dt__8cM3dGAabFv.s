lbl_80BF8E88:
/* 80BF8E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF8E8C  7C 08 02 A6 */	mflr r0
/* 80BF8E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF8E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF8E98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF8E9C  41 82 00 1C */	beq lbl_80BF8EB8
/* 80BF8EA0  3C A0 80 C0 */	lis r5, __vt__8cM3dGAab@ha /* 0x80BF9200@ha */
/* 80BF8EA4  38 05 92 00 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BF9200@l */
/* 80BF8EA8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BF8EAC  7C 80 07 35 */	extsh. r0, r4
/* 80BF8EB0  40 81 00 08 */	ble lbl_80BF8EB8
/* 80BF8EB4  4B 6D 5E 89 */	bl __dl__FPv
lbl_80BF8EB8:
/* 80BF8EB8  7F E3 FB 78 */	mr r3, r31
/* 80BF8EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF8EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF8EC4  7C 08 03 A6 */	mtlr r0
/* 80BF8EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF8ECC  4E 80 00 20 */	blr 
