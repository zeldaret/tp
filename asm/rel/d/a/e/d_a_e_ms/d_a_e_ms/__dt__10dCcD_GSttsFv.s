lbl_80728E88:
/* 80728E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80728E8C  7C 08 02 A6 */	mflr r0
/* 80728E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80728E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80728E98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80728E9C  41 82 00 30 */	beq lbl_80728ECC
/* 80728EA0  3C 60 80 73 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80729764@ha */
/* 80728EA4  38 03 97 64 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80729764@l */
/* 80728EA8  90 1F 00 00 */	stw r0, 0(r31)
/* 80728EAC  41 82 00 10 */	beq lbl_80728EBC
/* 80728EB0  3C 60 80 73 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80729758@ha */
/* 80728EB4  38 03 97 58 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80729758@l */
/* 80728EB8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80728EBC:
/* 80728EBC  7C 80 07 35 */	extsh. r0, r4
/* 80728EC0  40 81 00 0C */	ble lbl_80728ECC
/* 80728EC4  7F E3 FB 78 */	mr r3, r31
/* 80728EC8  4B BA 5E 75 */	bl __dl__FPv
lbl_80728ECC:
/* 80728ECC  7F E3 FB 78 */	mr r3, r31
/* 80728ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80728ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80728ED8  7C 08 03 A6 */	mtlr r0
/* 80728EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80728EE0  4E 80 00 20 */	blr 
