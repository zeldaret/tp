lbl_80B5CE78:
/* 80B5CE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5CE7C  7C 08 02 A6 */	mflr r0
/* 80B5CE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5CE84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5CE88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5CE8C  41 82 00 30 */	beq lbl_80B5CEBC
/* 80B5CE90  3C 60 80 B6 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B5EBFC@ha */
/* 80B5CE94  38 03 EB FC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B5EBFC@l */
/* 80B5CE98  90 1F 00 00 */	stw r0, 0(r31)
/* 80B5CE9C  41 82 00 10 */	beq lbl_80B5CEAC
/* 80B5CEA0  3C 60 80 B6 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B5EBF0@ha */
/* 80B5CEA4  38 03 EB F0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B5EBF0@l */
/* 80B5CEA8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B5CEAC:
/* 80B5CEAC  7C 80 07 35 */	extsh. r0, r4
/* 80B5CEB0  40 81 00 0C */	ble lbl_80B5CEBC
/* 80B5CEB4  7F E3 FB 78 */	mr r3, r31
/* 80B5CEB8  4B 77 1E 85 */	bl __dl__FPv
lbl_80B5CEBC:
/* 80B5CEBC  7F E3 FB 78 */	mr r3, r31
/* 80B5CEC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5CEC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5CEC8  7C 08 03 A6 */	mtlr r0
/* 80B5CECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5CED0  4E 80 00 20 */	blr 
