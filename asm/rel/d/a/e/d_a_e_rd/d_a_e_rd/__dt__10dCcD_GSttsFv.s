lbl_80517E90:
/* 80517E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517E94  7C 08 02 A6 */	mflr r0
/* 80517E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80517EA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80517EA4  41 82 00 30 */	beq lbl_80517ED4
/* 80517EA8  3C 60 80 52 */	lis r3, __vt__10dCcD_GStts@ha /* 0x805190B0@ha */
/* 80517EAC  38 03 90 B0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x805190B0@l */
/* 80517EB0  90 1F 00 00 */	stw r0, 0(r31)
/* 80517EB4  41 82 00 10 */	beq lbl_80517EC4
/* 80517EB8  3C 60 80 52 */	lis r3, __vt__10cCcD_GStts@ha /* 0x805190A4@ha */
/* 80517EBC  38 03 90 A4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x805190A4@l */
/* 80517EC0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80517EC4:
/* 80517EC4  7C 80 07 35 */	extsh. r0, r4
/* 80517EC8  40 81 00 0C */	ble lbl_80517ED4
/* 80517ECC  7F E3 FB 78 */	mr r3, r31
/* 80517ED0  4B DB 6E 6D */	bl __dl__FPv
lbl_80517ED4:
/* 80517ED4  7F E3 FB 78 */	mr r3, r31
/* 80517ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80517EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517EE0  7C 08 03 A6 */	mtlr r0
/* 80517EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80517EE8  4E 80 00 20 */	blr 
