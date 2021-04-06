lbl_80D5EC90:
/* 80D5EC90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5EC94  7C 08 02 A6 */	mflr r0
/* 80D5EC98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5EC9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5ECA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5ECA4  41 82 00 1C */	beq lbl_80D5ECC0
/* 80D5ECA8  3C A0 80 D6 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80D5EDF0@ha */
/* 80D5ECAC  38 05 ED F0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80D5EDF0@l */
/* 80D5ECB0  90 1F 00 00 */	stw r0, 0(r31)
/* 80D5ECB4  7C 80 07 35 */	extsh. r0, r4
/* 80D5ECB8  40 81 00 08 */	ble lbl_80D5ECC0
/* 80D5ECBC  4B 57 00 81 */	bl __dl__FPv
lbl_80D5ECC0:
/* 80D5ECC0  7F E3 FB 78 */	mr r3, r31
/* 80D5ECC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5ECC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5ECCC  7C 08 03 A6 */	mtlr r0
/* 80D5ECD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5ECD4  4E 80 00 20 */	blr 
