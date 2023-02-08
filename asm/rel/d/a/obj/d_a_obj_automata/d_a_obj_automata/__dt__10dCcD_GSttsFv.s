lbl_80BA5E74:
/* 80BA5E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA5E78  7C 08 02 A6 */	mflr r0
/* 80BA5E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA5E80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA5E84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA5E88  41 82 00 30 */	beq lbl_80BA5EB8
/* 80BA5E8C  3C 60 80 BA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BA6DF0@ha */
/* 80BA5E90  38 03 6D F0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BA6DF0@l */
/* 80BA5E94  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA5E98  41 82 00 10 */	beq lbl_80BA5EA8
/* 80BA5E9C  3C 60 80 BA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BA6DE4@ha */
/* 80BA5EA0  38 03 6D E4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BA6DE4@l */
/* 80BA5EA4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BA5EA8:
/* 80BA5EA8  7C 80 07 35 */	extsh. r0, r4
/* 80BA5EAC  40 81 00 0C */	ble lbl_80BA5EB8
/* 80BA5EB0  7F E3 FB 78 */	mr r3, r31
/* 80BA5EB4  4B 72 8E 89 */	bl __dl__FPv
lbl_80BA5EB8:
/* 80BA5EB8  7F E3 FB 78 */	mr r3, r31
/* 80BA5EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA5EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA5EC4  7C 08 03 A6 */	mtlr r0
/* 80BA5EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA5ECC  4E 80 00 20 */	blr 
