lbl_80A7CDF4:
/* 80A7CDF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7CDF8  7C 08 02 A6 */	mflr r0
/* 80A7CDFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7CE00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7CE04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A7CE08  41 82 00 10 */	beq lbl_80A7CE18
/* 80A7CE0C  7C 80 07 35 */	extsh. r0, r4
/* 80A7CE10  40 81 00 08 */	ble lbl_80A7CE18
/* 80A7CE14  4B 85 1F 28 */	b __dl__FPv
lbl_80A7CE18:
/* 80A7CE18  7F E3 FB 78 */	mr r3, r31
/* 80A7CE1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7CE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7CE24  7C 08 03 A6 */	mtlr r0
/* 80A7CE28  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7CE2C  4E 80 00 20 */	blr 
