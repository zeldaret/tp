lbl_80BA5DBC:
/* 80BA5DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA5DC0  7C 08 02 A6 */	mflr r0
/* 80BA5DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA5DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA5DCC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA5DD0  41 82 00 1C */	beq lbl_80BA5DEC
/* 80BA5DD4  3C A0 80 BA */	lis r5, __vt__8cM3dGAab@ha /* 0x80BA6E14@ha */
/* 80BA5DD8  38 05 6E 14 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BA6E14@l */
/* 80BA5DDC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BA5DE0  7C 80 07 35 */	extsh. r0, r4
/* 80BA5DE4  40 81 00 08 */	ble lbl_80BA5DEC
/* 80BA5DE8  4B 72 8F 55 */	bl __dl__FPv
lbl_80BA5DEC:
/* 80BA5DEC  7F E3 FB 78 */	mr r3, r31
/* 80BA5DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA5DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA5DF8  7C 08 03 A6 */	mtlr r0
/* 80BA5DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA5E00  4E 80 00 20 */	blr 
