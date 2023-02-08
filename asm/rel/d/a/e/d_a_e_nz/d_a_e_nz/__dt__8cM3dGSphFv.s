lbl_8072BA74:
/* 8072BA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072BA78  7C 08 02 A6 */	mflr r0
/* 8072BA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072BA80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072BA84  7C 7F 1B 79 */	or. r31, r3, r3
/* 8072BA88  41 82 00 1C */	beq lbl_8072BAA4
/* 8072BA8C  3C A0 80 73 */	lis r5, __vt__8cM3dGSph@ha /* 0x8072C398@ha */
/* 8072BA90  38 05 C3 98 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x8072C398@l */
/* 8072BA94  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8072BA98  7C 80 07 35 */	extsh. r0, r4
/* 8072BA9C  40 81 00 08 */	ble lbl_8072BAA4
/* 8072BAA0  4B BA 32 9D */	bl __dl__FPv
lbl_8072BAA4:
/* 8072BAA4  7F E3 FB 78 */	mr r3, r31
/* 8072BAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072BAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072BAB0  7C 08 03 A6 */	mtlr r0
/* 8072BAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8072BAB8  4E 80 00 20 */	blr 
